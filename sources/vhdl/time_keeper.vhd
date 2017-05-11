library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity time_keeper is
    Port ( memRead : in STD_LOGIC_VECTOR (7 downto 0);
           memWrite : out STD_LOGIC_VECTOR (7 downto 0);
           memAddress : out STD_LOGIC_VECTOR (11 downto 0);
           mem_valid : out STD_LOGIC;
           mem_write : out STD_LOGIC;
           mem_hold : out STD_LOGIC;
           mem_done : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           heart_beat : out STD_LOGIC;
           buzz : out STD_LOGIC );
end time_keeper;

architecture Behavioral of time_keeper is
    constant DT_ADDRESS  : std_logic_vector(11 downto 0):= "000000000000";
    constant ST_ADDRESS  : std_logic_vector(11 downto 0):= "000000000001";

    type state is ( init, count, update, writeDT, readST, writeST, memA, memB );
    signal current_state : state;
    signal counter60hz : std_logic_vector( 23 downto 0 );
    -- close enough, only lets us know the timer is running about
    --      at the correct speed.
    signal counter1hz  : std_logic_vector( 6 downto 0 );
    
    signal mem_ret_state : state;
    signal tmp_mem_write : STD_LOGIC;
    signal mem_ret_data : STD_LOGIC_VECTOR (7 downto 0);
begin
    heart_beat <= counter1hz(6); -- for chip
    -- heart_beat <= counter1hz(0); -- for simulation
    mem_write <= tmp_mem_write;
    
    process( clk, reset )
        variable tmp_count : std_logic_vector( 23 downto 0 );
        variable tmp_8 : std_logic_vector( 7 downto 0 );
    begin
        if ( reset = '1' ) then
            current_state <= init;
            memWrite <= ( others => '0' );
            memAddress <= ( others => '0' );
            mem_valid <= '0';
            tmp_mem_write <= '0';
            mem_hold <= '0';
            buzz <= '0';
            counter1hz <= "1000000";
        elsif ( rising_edge( clk ) ) then
            current_state <= current_state;
            case current_state is
                when init =>
                    counter60hz <= ( others => '0' );
                    current_state <= count;
                when count =>
                    mem_hold <= '0';
                    tmp_count := counter60hz;
                    tmp_count := tmp_count + 1;
                    if( tmp_count = "000000011010101010101010" ) then -- for board divider
                    --if( tmp_count = "000110101010101010101010" ) then -- for board
                    --if( tmp_count = "000000000000000010000000" ) then -- for test bench
                        current_state <= update;
                        tmp_count := ( others => '0' );
                        counter1hz <= counter1hz + 1;
                    end if;
                    
                    counter60hz <= tmp_count;
                when update =>
                    memAddress <= DT_ADDRESS;
                    tmp_mem_write <= '0';
                    mem_hold <= '1';
                    mem_ret_state <= writeDT;
                    current_state <= memA;
                when writeDT =>
                    tmp_8 := mem_ret_data;
                    if ( tmp_8 /= "00000000" ) then
                        tmp_8 := tmp_8 - "00000001";
                    end if;
                    
                    memAddress <= DT_ADDRESS;
                    tmp_mem_write <= '1';
                    mem_ret_state <= readST;
                    memWrite <= tmp_8;
                    current_state <= memA;
                when readST =>
                    memAddress <= ST_ADDRESS;
                    tmp_mem_write <= '0';
                    mem_ret_state <= writeST;
                    current_state <= memA;
                when writeST =>
                    tmp_8 := mem_ret_data;
                    if ( tmp_8 /= "00000000" ) then
                        tmp_8 := tmp_8 - "00000001";
                        buzz <= '1';
                    else
                        buzz <= '0';
                    end if;
                    
                    memAddress <= ST_ADDRESS;
                    tmp_mem_write <= '1';
                    mem_ret_state <= count;
                    memWrite <= tmp_8;
                    current_state <= memA;
                when memA =>
                    if ( mem_done = '0' ) then
                        mem_valid <= '1';
                        current_state <= memB;
                    end if;
                when memB =>
                    if( mem_done = '1' ) then
                        if ( tmp_mem_write = '0' ) then
                            mem_ret_data <= memRead;
                        end if;
                                    
                        mem_valid <= '0';
                        current_state <= mem_ret_state;
                    end if;
            end case;
        end if;
    end process;
end Behavioral;
