library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
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
           clk, reset : in STD_LOGIC );
end mem_controller;

architecture Behavioral of mem_controller is
    constant DT_ADDRESS  : std_logic_vector(11 downto 0):= "000000000000";
    constant ST_ADDRESS  : std_logic_vector(11 downto 0):= "000000000001";
    
    component mem_mod
        port( address : in STD_LOGIC_VECTOR (15 downto 0);
              clock : in STD_LOGIC;
              we : in STD_LOGIC;
              dataIn : in STD_LOGIC_VECTOR (7 downto 0);
              dataOut : out STD_LOGIC_VECTOR (7 downto 0));
    end component;
    
    signal s_address : STD_LOGIC_VECTOR (15 downto 0);
    signal s_clock : STD_LOGIC;
    signal s_we : STD_LOGIC;
    signal s_dataIn : STD_LOGIC_VECTOR (7 downto 0);
    signal s_dataOut : STD_LOGIC_VECTOR (7 downto 0);
    
    type memState is ( initA, initB, initC, waiting, ownedWaiting, memAccess, memClock, memGet, raiseDone, waitFinish );
                             
    signal currentGame : STD_LOGIC_VECTOR (3 downto 0);
    signal owner : STD_LOGIC_VECTOR (2 downto 0);
    signal current_state : memState;
    
begin
    MEM : mem_mod
        port map ( address => s_address,
                   clock => s_clock,
                   we => s_we,
                   dataIn => s_dataIn,
                   dataOut => s_dataOut);
                   
    gameSelected <= currentGame;
    
    --mapped_out <= ramData( to_integer( unsigned( currentGame ) ) )( 511 );
    mapped_out <= "00000000";
    process( clk, reset )
        variable cur_address : STD_LOGIC_VECTOR (11 downto 0);
        variable data : STD_LOGIC_VECTOR (7 downto 0);
        variable dataA : STD_LOGIC_VECTOR (7 downto 0);
    begin
        if ( reset = '1' ) then
            current_state <= initA;
            s_clock <= '0';
        elsif ( rising_edge( clk ) ) then
            current_state <= current_state;
            case current_state is
                when initA =>
                    done <= "000";
                    current_state <= initB;
                    s_address <= x"0000";
                    s_clock <= '0';
                    s_we <= '0';
                    s_dataIn <= x"00";
                when initB =>
                    currentGame <= gameSelect;
                    current_state <= initC;
                when initC =>
                    owner <= "000";
                    current_state <= waiting;     
                when waiting =>
                    if ( valid(0) = '1' ) then
                        owner <= "001";
                        current_state <= memAccess;
                    elsif ( valid(1) = '1' ) then
                        owner <= "010";
                        current_state <= memAccess;
                    elsif ( valid(2) = '1' ) then
                        owner <= "100";
                        current_state <= memAccess;
                    end if;
                when ownedWaiting =>
                    if ( ( owner and hold ) = "000" ) then
                        owner <= "000";
                        current_state <= waiting;
                    elsif ( ( owner and valid ) = owner ) then
                        current_state <= memAccess;
                    end if;
                when memAccess =>
                    s_clock <= '0';
                    if ( owner = "001" ) then
                        s_address <= currentGame & memAddress( 11 downto 0 );
                        s_dataIn <= dataIn( 7 downto 0 );
                        s_we <= write(0);
                    elsif ( owner = "010" ) then
                        s_address <= currentGame & memAddress( 23 downto 12 );
                        s_dataIn <= dataIn( 15 downto 8 );
                        s_we <= write(1);
                    elsif ( owner = "100" ) then
                        s_address <= currentGame & memAddress( 35 downto 24 );
                        s_dataIn <= dataIn( 15 downto 8 );
                        s_we <= write(2);
                    end if;
                    
                    current_state <= memClock;
                when memClock =>
                    s_clock <= '1';
                    current_state <= memGet;
                when memGet =>     
                    if ( owner = "001" ) then          
                        dataOut( 7 downto 0 ) <= s_dataOut;
                    elsif ( owner = "010" ) then
                        dataOut( 15 downto 8 ) <= s_dataOut;
                    elsif ( owner = "100" ) then
                        dataOut( 23 downto 16 ) <= s_dataOut;
                    end if;
                    
                    current_state <= raiseDone;
                when raiseDone =>
                    done <= owner;
                    current_state <= waitFinish;
                when waitFinish =>
                    if ( ( owner and valid ) = "000") then
                        done <= "000";
                        if ( ( owner and hold ) = owner ) then
                            current_state <= ownedWaiting;
                        else
                            owner <= "000";
                            current_state <= waiting;
                        end if;
                    end if;
            end case;
        end if;
    end process;

end Behavioral;