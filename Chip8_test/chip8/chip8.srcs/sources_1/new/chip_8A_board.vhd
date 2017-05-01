library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity chip_8A_board is
Port (  keyPad : in STD_LOGIC_VECTOR (15 downto 0);
        gameSelect : in STD_LOGIC_VECTOR (3 downto 0);
        clk, reset : in STD_LOGIC;
        
        err_code : out STD_LOGIC_VECTOR( 2 downto 0 );
        heart_beat, buzz : out STD_LOGIC;
        
        mapped_out : out STD_LOGIC_VECTOR( 7 downto 0 )
        -- step : in STD_LOGIC; -- for debuging memory
        
        
        );
end chip_8A_board;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

architecture Behavioral of chip_8A_board is
    component core
        port ( memRead : in STD_LOGIC_VECTOR (7 downto 0);
               memWrite : out STD_LOGIC_VECTOR (7 downto 0);
               memAddress : out STD_LOGIC_VECTOR (11 downto 0);
               keyPad : in STD_LOGIC_VECTOR (15 downto 0);
               mem_valid : out STD_LOGIC;
               mem_write : out STD_LOGIC;
               mem_hold : out STD_LOGIC;
               mem_done : in STD_LOGIC;
               cpu_state : out STD_LOGIC_VECTOR( 7 downto 0 );
               clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               err_code : out STD_LOGIC_VECTOR( 2 downto 0 ));
    end component;
    
    component clock_div
        port ( reset, clk_in : in STD_LOGIC;
               clk_out : out STD_LOGIC );
    end component;
    
    component mem_controller
        port ( memAddress : in STD_LOGIC_VECTOR (35 downto 0);
               dataIn : in STD_LOGIC_VECTOR (23 downto 0);
               dataOut : out STD_LOGIC_VECTOR (23 downto 0);
               valid : in STD_LOGIC_VECTOR (2 downto 0);
               done : out STD_LOGIC_VECTOR (2 downto 0);
               write : in STD_LOGIC_VECTOR (2 downto 0);
               hold : in STD_LOGIC_VECTOR (2 downto 0);
               gameSelect : in STD_LOGIC_VECTOR (3 downto 0);
               gameSelected : out STD_LOGIC_VECTOR (3 downto 0);
               mapped_out : out STD_LOGIC_VECTOR( 7 downto 0 );
               debug_read_data : out STD_LOGIC_VECTOR( 7 downto 0 );
               mem_state : out STD_LOGIC_VECTOR( 7 downto 0 );
               sys_reset : out STD_LOGIC;
               step : in STD_LOGIC;
               clk, reset : in STD_LOGIC);
    end component;
    
    component time_keeper
        port ( memRead : in STD_LOGIC_VECTOR (7 downto 0);
               memWrite : out STD_LOGIC_VECTOR (7 downto 0);
               memAddress : out STD_LOGIC_VECTOR (11 downto 0);
               mem_valid : out STD_LOGIC;
               mem_write : out STD_LOGIC;
               mem_hold : out STD_LOGIC;
               mem_done : in STD_LOGIC;
               clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               heart_beat : out STD_LOGIC;
               buzz : out STD_LOGIC);
    end component;
    
    component vga_controller
        port ( memRead : in STD_LOGIC_VECTOR (7 downto 0);
               memWrite : out STD_LOGIC_VECTOR (7 downto 0);
               memAddress : out STD_LOGIC_VECTOR (11 downto 0);
               mem_valid : out STD_LOGIC;
               mem_write : out STD_LOGIC;
               mem_hold : out STD_LOGIC;
               mem_done : in STD_LOGIC;
               clk : in STD_LOGIC;
               reset : in STD_LOGIC);
    end component;
    
    signal s_CPU_memRead : STD_LOGIC_VECTOR (7 downto 0);
    signal s_CPU_memWrite : STD_LOGIC_VECTOR (7 downto 0);
    signal s_CPU_memAddress : STD_LOGIC_VECTOR (11 downto 0);
    signal s_CPU_mem_valid : STD_LOGIC;
    signal s_CPU_mem_write : STD_LOGIC;
    signal s_CPU_mem_hold : STD_LOGIC;
    signal s_CPU_mem_done : STD_LOGIC;
    signal s_cpu_state : STD_LOGIC_VECTOR( 7 downto 0 ); 
            
    signal s_TIME_memRead : STD_LOGIC_VECTOR (7 downto 0);
    signal s_TIME_memWrite : STD_LOGIC_VECTOR (7 downto 0);
    signal s_TIME_memAddress : STD_LOGIC_VECTOR (11 downto 0);
    signal s_TIME_mem_valid : STD_LOGIC;
    signal s_TIME_mem_write : STD_LOGIC;
    signal s_TIME_mem_hold : STD_LOGIC;
    signal s_TIME_mem_done : STD_LOGIC;
            
    signal s_VGA_memRead : STD_LOGIC_VECTOR (7 downto 0);
    signal s_VGA_memWrite : STD_LOGIC_VECTOR (7 downto 0);
    signal s_VGA_memAddress : STD_LOGIC_VECTOR (11 downto 0);
    signal s_VGA_mem_valid : STD_LOGIC;
    signal s_VGA_mem_write : STD_LOGIC;
    signal s_VGA_mem_hold : STD_LOGIC;
    signal s_VGA_mem_done : STD_LOGIC;
    signal s_gameSelected : STD_LOGIC_VECTOR (3 downto 0);
    
    signal s_memAddress : STD_LOGIC_VECTOR (35 downto 0);
    signal s_dataIn : STD_LOGIC_VECTOR (23 downto 0);
    signal s_dataOut : STD_LOGIC_VECTOR (23 downto 0);
    signal s_valid : STD_LOGIC_VECTOR (2 downto 0);
    signal s_done : STD_LOGIC_VECTOR (2 downto 0);
    signal s_write : STD_LOGIC_VECTOR (2 downto 0);
    signal s_hold : STD_LOGIC_VECTOR (2 downto 0);
    
    signal s_sys_reset : STD_LOGIC;
    signal s_mem_state : STD_LOGIC_VECTOR (7 downto 0);
    signal s_debug_read_data : STD_LOGIC_VECTOR( 7 downto 0 );
    signal s_step : STD_LOGIC;
    
    signal s_clock : std_logic;

begin
    
    s_step <= '0';
    -- s_step <= step; -- for debugging memory
    
    s_memAddress <= s_CPU_memAddress & s_TIME_memAddress & s_VGA_memAddress;
    s_dataIn <= s_CPU_memWrite & s_TIME_memWrite & s_VGA_memWrite;
    s_valid <= s_CPU_mem_valid & s_TIME_mem_valid & s_VGA_mem_valid;
    s_write <= s_CPU_mem_write & s_TIME_mem_write & s_VGA_mem_write;
    s_hold <= s_CPU_mem_hold & s_TIME_mem_hold & s_VGA_mem_hold;
    
    s_CPU_memRead <= s_dataOut( 23 downto 16 );
    s_TIME_memRead <= s_dataOut( 15 downto 8 );
    s_VGA_memRead <= s_dataOut( 7 downto 0 );
    
    s_CPU_mem_done <= s_done(2);
    s_TIME_mem_done <= s_done(1);
    s_VGA_mem_done <= s_done(0);

    my_core : core
        port map ( memRead => s_CPU_memRead,
                   memWrite => s_CPU_memWrite,
                   memAddress => s_CPU_memAddress,
                   keyPad => keyPad,
                   mem_valid => s_CPU_mem_valid,
                   mem_write => s_CPU_mem_write,
                   mem_hold => s_CPU_mem_hold,
                   mem_done => s_CPU_mem_done,
                   cpu_state => s_cpu_state,
                   clk => s_clock,
                   reset => s_sys_reset,
                   err_code => err_code);
                   
    my_clock_div : clock_div
        port map (  reset => reset,
                    clk_in => clk,
                    clk_out => s_clock );
                   
    my_mem_controller : mem_controller
        port map ( memAddress => s_memAddress,
                   dataIn => s_dataIn,
                   dataOut => s_dataOut,
                   valid => s_valid,
                   done => s_done,
                   write => s_write,
                   hold => s_hold,
                   gameSelect => gameSelect,
                   gameSelected => s_gameSelected,
                   mapped_out => mapped_out,
                   debug_read_data => s_debug_read_data,
                   mem_state => s_mem_state,
                   sys_reset => s_sys_reset,
                   step => s_step,
                   clk => s_clock,
                   reset => reset );
    
    my_time_keeper : time_keeper
        port map ( memRead => s_TIME_memRead,
                   memWrite => s_TIME_memWrite,
                   memAddress => s_TIME_memAddress,
                   mem_valid => s_TIME_mem_valid,
                   mem_write => s_TIME_mem_write,
                   mem_hold => s_TIME_mem_hold,
                   mem_done => s_TIME_mem_done,
                   clk => s_clock,
                   reset => s_sys_reset,
                   heart_beat => heart_beat,
                   buzz => buzz );
                   
    my_vga_controller : vga_controller
        port map ( memRead => s_VGA_memRead,
                   memWrite => s_VGA_memWrite,
                   memAddress => s_VGA_memAddress,
                   mem_valid => s_VGA_mem_valid,
                   mem_write => s_VGA_mem_write,
                   mem_hold => s_VGA_mem_hold,
                   mem_done => s_VGA_mem_done,
                   clk => s_clock,
                   reset => s_sys_reset);
end Behavioral;