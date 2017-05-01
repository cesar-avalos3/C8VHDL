library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity mem_controller is
    Port ( memAddress : in STD_LOGIC_VECTOR (35 downto 0);
           dataIn : in STD_LOGIC_VECTOR (23 downto 0);
           dataOut : out STD_LOGIC_VECTOR (23 downto 0);
           valid : in STD_LOGIC_VECTOR (2 downto 0);
           done : out STD_LOGIC_VECTOR (2 downto 0);
           write : in STD_LOGIC_VECTOR (2 downto 0);
           hold : in STD_LOGIC_VECTOR (2 downto 0);
           gameSelect : in STD_LOGIC_VECTOR (3 downto 0);
           gameSelected : out STD_LOGIC_VECTOR (3 downto 0);
           mapped_out : out STD_LOGIC_VECTOR( 7 downto 0 );
           mem_state : out STD_LOGIC_VECTOR( 7 downto 0 );
           debug_read_data : out STD_LOGIC_VECTOR( 7 downto 0 );
           sys_reset : out STD_LOGIC;
           step : in STD_LOGIC;
           clk, reset : in STD_LOGIC );
end mem_controller;

architecture Behavioral of mem_controller is
    signal s_address : STD_LOGIC_VECTOR (16 downto 0);
    signal s_clock : STD_LOGIC;
    signal s_we : STD_LOGIC;
    signal s_dataIn : STD_LOGIC_VECTOR (7 downto 0);
    signal s_dataOut : STD_LOGIC_VECTOR (7 downto 0);
    
    component mem_mod
        port( address : in STD_LOGIC_VECTOR (12 downto 0);
              clock : in STD_LOGIC;
              we : in STD_LOGIC;
              dataIn : in STD_LOGIC_VECTOR (7 downto 0);
              dataOut : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal s_mem_clock : STD_LOGIC;
    signal s_mem_we : STD_LOGIC;
    signal s_mem_dataOut : STD_LOGIC_VECTOR (7 downto 0);
    
    component game_rom
        port( address : in STD_LOGIC_VECTOR (15 downto 0);
              clock : in STD_LOGIC;
              we : in STD_LOGIC;
              dataIn : in STD_LOGIC_VECTOR (7 downto 0);
              dataOut : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal s_rom_clock : STD_LOGIC;
    signal s_rom_we : STD_LOGIC;
    signal s_rom_dataOut : STD_LOGIC_VECTOR (7 downto 0);
    
    type memState is ( initA, initB, initC, waiting, ownedWaiting,
                       copy_init_low, copy_init_high, copy_read, copy_write,
                       normMemAccess, memAccess, memClock, memGet, 
                       normMemGet, raiseDone, waitFinish, pad1, pad2 );
                             
    signal currentGame : STD_LOGIC_VECTOR (3 downto 0);
    signal owner : STD_LOGIC_VECTOR (2 downto 0);
    signal current_state, memReturn, copy_return : memState;
    
    signal copy_start : STD_LOGIC_VECTOR (16 downto 0);
    signal copy_end : STD_LOGIC_VECTOR (16 downto 0);
    signal copy_to : STD_LOGIC_VECTOR (16 downto 0);
    
    signal step_active : STD_LOGIC;
    signal init_times : STD_LOGIC_VECTOR (7 downto 0);
begin
    MEM : mem_mod
        port map ( address => s_address( 12 downto 0 ),
                   clock => s_mem_clock,
                   we => s_mem_we,
                   dataIn => s_dataIn,
                   dataOut => s_mem_dataOut);
                   
    ROM : game_rom
       port map ( address => s_address( 15 downto 0 ),
                  clock => s_rom_clock,
                  we => s_rom_we,
                  dataIn => s_dataIn,
                  dataOut => s_rom_dataOut);
    
    gameSelected <= currentGame;
    
    process( clk, reset )
        variable cur_address : STD_LOGIC_VECTOR (11 downto 0);
        variable data : STD_LOGIC_VECTOR (7 downto 0);
        variable dataA : STD_LOGIC_VECTOR (7 downto 0);
    begin
        if ( reset = '1' ) then
            current_state <= initA;
            sys_reset <= '1';
            init_times <= x"00";
            mapped_out <= x"AA";          
        elsif ( rising_edge( clk ) ) then
            current_state <= current_state;
            case current_state is
                when initA =>
                    mem_state <= x"01";
                    done <= "000";
                    current_state <= initB;
                    s_address <= "00000000000000000";
                    s_clock <= '0';
                    s_we <= '0';
                    s_dataIn <= "00000000";
                    
                    s_mem_clock <= '0';
                    s_mem_we <= '0';
                    
                    s_rom_clock <= '0';
                    s_rom_we <= '0';
                    
                    step_active <= '0';
                    
                    init_times <= init_times + x"01";
                    mapped_out <= init_times;
                when initB =>
                    mem_state <= x"02";
                    currentGame <= gameSelect;
                    current_state <= copy_init_low;
                    dataOut <= x"000000";
                when copy_init_low =>
                    mem_state <= x"03";
                    copy_start <= '0' & x"0200";
                    copy_end <= '0' & x"0210";
                    copy_to <= '1' & x"1200";
                    copy_return <= copy_init_high;
                    current_state <= copy_read;
                    step_active <= '1'; -- for debugging memory early
                when copy_init_high =>
                    mem_state <= x"04";
                    copy_start <= '1' & x"1200";
                    copy_end <= '1' & x"1210";
                    copy_to <= '1' & x"1400";
                    copy_return <= initC;
                    current_state <= copy_read;
                    --step_active <= '1'; -- for debugging rom early
                when copy_read =>
                    mem_state <= x"05";
                    s_address <= copy_start;
                    s_we <= '0';
                    memReturn <= copy_write;
                    current_state <= memAccess;
                when copy_write =>
                    mem_state <= x"06";
                    s_address <= copy_to;
                    s_dataIn <= s_dataOut;
                    s_we <= '1';
                    
                    copy_start <= copy_start + ( '0' & x"0001");
                    copy_to <= copy_to + ( '0' & x"0001");
                    
                    current_state <= memAccess;
                    if( copy_start = copy_end) then
                        memReturn <= copy_return;
                    else
                        memReturn <= copy_read;
                    end if;
                when initC =>
                    mem_state <= x"07";
                    owner <= "000";
                    current_state <= waiting;
                    sys_reset <= '0';
                    -- step_active <= '1'; -- for debugging normal memory
                when waiting =>
                    mem_state <= x"08";
                    if ( valid(0) = '1' ) then
                        owner <= "001";
                        current_state <= normMemAccess;
                    elsif ( valid(1) = '1' ) then
                        owner <= "010";
                        current_state <= normMemAccess;
                    elsif ( valid(2) = '1' ) then
                        owner <= "100";
                        current_state <= normMemAccess;
                    end if;
                when ownedWaiting =>
                    mem_state <= x"09";
                    if ( ( owner and hold ) = "000" ) then
                        owner <= "000";
                        current_state <= waiting;
                    elsif ( ( owner and valid ) = owner ) then
                        current_state <= normMemAccess;
                    end if;
                when normMemAccess =>
                    mem_state <= x"0A";
                    if ( owner = "001" ) then
                        s_address <= '1' & "0001" & memAddress( 11 downto 0 );
                        s_dataIn <= dataIn( 7 downto 0 );
                        s_we <= write(0);
                    elsif ( owner = "010" ) then
                        s_address <= '1' & "0001" & memAddress( 23 downto 12 );
                        s_dataIn <= dataIn( 15 downto 8 );
                        s_we <= write(1);
                    elsif ( owner = "100" ) then
                        s_address <= '1' & "0001" & memAddress( 35 downto 24 );
                        s_dataIn <= dataIn( 23 downto 16 );
                        s_we <= write(2);
                    end if;
                    
                    memReturn <= normMemGet;
                    current_state <= memAccess;
                when memAccess =>
                    mem_state <= x"0B";
                    if( s_address(16) = '1' ) then
                        s_mem_clock <= '0';
                        s_mem_we <= s_we;
                        if( ( s_address( 15 downto 0 ) = x"11FF" ) and ( s_we = '1' ) ) then
                            mapped_out <= s_dataIn;
                        end if;
                    else
                        s_rom_clock <= '0';
                        s_rom_we <= s_we;
                    end if;
                    
                    current_state <= memClock;
                when memClock =>
                    mem_state <= x"0C";
                    if( s_address(16) = '1' ) then
                        s_mem_clock <= '1';
                    else
                        s_rom_clock <= '1';
                    end if;
                    
                    current_state <= memGet;
                when memGet =>
                    mem_state <= x"0D";
                    if( s_address(16) = '1' ) then
                        s_dataOut <= s_mem_dataOut;
                        debug_read_data <= s_mem_dataOut;
                    else
                        s_dataOut <= s_rom_dataOut;
                        debug_read_data <= s_rom_dataOut;
                    end if;
                    
                    if( step_active = '1' ) then
                        current_state <= pad1;
                    else
                        current_state <= memReturn;
                    end if;
                when pad1 =>
                    if( step_active = '1' and step = '0' ) then
                        current_state <= pad1;
                    else
                        current_state <= pad2;
                    end if;
                when pad2 =>
                    if( step_active = '1' and step = '1' ) then
                        current_state <= pad2;
                    else
                        current_state <= memReturn;
                    end if;
                when normMemGet => 
                    mem_state <= x"0E";    
                    if ( owner = "001" ) then          
                        dataOut( 7 downto 0 ) <= s_dataOut;
                    elsif ( owner = "010" ) then
                        dataOut( 15 downto 8 ) <= s_dataOut;
                    elsif ( owner = "100" ) then
                        dataOut( 23 downto 16 ) <= s_dataOut;
                    end if;
                    
                    current_state <= raiseDone;
                when raiseDone =>
                    mem_state <= x"0F";
                    done <= owner;
                    current_state <= waitFinish;
                when waitFinish =>
                    mem_state <= x"10";
                    if ( ( owner and valid ) = "000") then
                        done <= "000";
                        if ( ( owner and hold ) = owner ) then
                            current_state <= ownedWaiting;
                        else
                            owner <= "000";
                            current_state <= waiting;
                        end if;
                    end if;
                when others =>
                    mapped_out <= x"0F";
            end case;
        end if;
    end process;

end Behavioral;
