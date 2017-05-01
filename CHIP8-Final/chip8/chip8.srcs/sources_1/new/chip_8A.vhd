library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity chip_8A is
Port (  keyPad : in STD_LOGIC_VECTOR (15 downto 0);
        gameSelect : in STD_LOGIC_VECTOR (3 downto 0);
        clk, reset : in STD_LOGIC;
        
        err_code : out STD_LOGIC_VECTOR( 2 downto 0 );
        heart_beat, buzz : out STD_LOGIC;
        cpu_active, mem_active, vga_active : out STD_LOGIC;
        
        mapped_out : out STD_LOGIC_VECTOR( 7 downto 0 );
        -- step : in STD_LOGIC; -- for debuging memory
        
        VGA_HS_O : out  STD_LOGIC;
        VGA_VS_O : out  STD_LOGIC;
        VGA_RED_O    : out  STD_LOGIC_VECTOR (3 downto 0);
        VGA_GREEN_O  : out  STD_LOGIC_VECTOR (3 downto 0);
        VGA_BLUE_O   : out  STD_LOGIC_VECTOR (3 downto 0);
        
        audioEn : out STD_LOGIC;
        audioAMP: out STD_LOGIC;
        
        -----------------------------------------------------
        ------ for simulation only
        inner_clk : out STD_LOGIC;
        
        gameSelected : out STD_LOGIC_VECTOR (3 downto 0);
        cpu_state : out STD_LOGIC_VECTOR( 7 downto 0 );
        
        sys_reset : out STD_LOGIC;
        cpu_reset : out STD_LOGIC;
        mem_state : out STD_LOGIC_VECTOR( 7 downto 0 );
        debug_read_data : out STD_LOGIC_VECTOR( 7 downto 0 );
        
        CPU_memRead : out STD_LOGIC_VECTOR (7 downto 0);
        CPU_memWrite : out STD_LOGIC_VECTOR (7 downto 0);
        CPU_memAddress : out STD_LOGIC_VECTOR (11 downto 0);
        CPU_mem_valid : out STD_LOGIC;
        CPU_mem_write : out STD_LOGIC;
        CPU_mem_hold : out STD_LOGIC;
        CPU_mem_done : out STD_LOGIC;
        
        t_PC : out STD_LOGIC_VECTOR ( 11 downto 0 );
        t_I : out STD_LOGIC_VECTOR ( 11 downto 0 );
                       
        t_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
        t_n, t_x, t_y : out STD_LOGIC_VECTOR ( 3 downto 0 );
        t_kk : out STD_LOGIC_VECTOR ( 7 downto 0 );
           
        t_SP : out STD_LOGIC_VECTOR ( 7 downto 0 );
        t_STACK_0, t_STACK_1, t_STACK_2,  t_STACK_3,
        t_STACK_4, t_STACK_5, t_STACK_6,  t_STACK_7,
        t_STACK_8, t_STACK_9, t_STACK_A, t_STACK_B,
        t_STACK_C, t_STACK_D, t_STACK_E, t_STACK_F 
                    : out STD_LOGIC_VECTOR (15 downto 0);
       
        t_REG_0, t_REG_1, t_REG_2,  t_REG_3,
        t_REG_4, t_REG_5, t_REG_6,  t_REG_7,
        t_REG_8, t_REG_9, t_REG_A, t_REG_B,
        t_REG_C, t_REG_D, t_REG_E, t_REG_F 
                    : out STD_LOGIC_VECTOR (7 downto 0);
        
        TIME_memRead : out STD_LOGIC_VECTOR (7 downto 0);
        TIME_memWrite : out STD_LOGIC_VECTOR (7 downto 0);
        TIME_memAddress : out STD_LOGIC_VECTOR (11 downto 0);
        TIME_mem_valid : out STD_LOGIC;
        TIME_mem_write : out STD_LOGIC;
        TIME_mem_hold : out STD_LOGIC;
        TIME_mem_done : out STD_LOGIC;
        
        VGA_memRead : out STD_LOGIC_VECTOR (7 downto 0);
        VGA_memWrite : out STD_LOGIC_VECTOR (7 downto 0);
        VGA_memAddress : out STD_LOGIC_VECTOR (11 downto 0);
        VGA_mem_valid : out STD_LOGIC;
        VGA_mem_write : out STD_LOGIC;
        VGA_mem_hold : out STD_LOGIC;
        VGA_mem_done : out STD_LOGIC 
        ----- end for simulation
        ----------------------------------------------
        );
end chip_8A;

architecture Behavioral of chip_8A is
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
               t_PC : out STD_LOGIC_VECTOR ( 11 downto 0 );
               t_I : out STD_LOGIC_VECTOR ( 11 downto 0 );
                              
               t_addr : out STD_LOGIC_VECTOR ( 11 downto 0 );
               t_n, t_x, t_y : out STD_LOGIC_VECTOR ( 3 downto 0 );
               t_kk : out STD_LOGIC_VECTOR ( 7 downto 0 );
                  
               t_SP : out STD_LOGIC_VECTOR ( 7 downto 0 );
               t_STACK_0, t_STACK_1, t_STACK_2,  t_STACK_3,
               t_STACK_4, t_STACK_5, t_STACK_6,  t_STACK_7,
               t_STACK_8, t_STACK_9, t_STACK_A,  t_STACK_B,
               t_STACK_C, t_STACK_D, t_STACK_E,  t_STACK_F 
                           : out STD_LOGIC_VECTOR (15 downto 0);
              
               t_REG_0, t_REG_1, t_REG_2,  t_REG_3,
               t_REG_4, t_REG_5, t_REG_6,  t_REG_7,
               t_REG_8, t_REG_9, t_REG_A,  t_REG_B,
               t_REG_C, t_REG_D, t_REG_E,  t_REG_F 
                           : out STD_LOGIC_VECTOR (7 downto 0);
               clk : in STD_LOGIC;
               active : out STD_LOGIC;
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
               cpu_reset : out STD_LOGIC;
               active : out STD_LOGIC;
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
               active : out STD_LOGIC;
               clk, sys_clk : in STD_LOGIC;
               reset, sys_reset : in STD_LOGIC;
               VGA_HS_O : out  STD_LOGIC;
               VGA_VS_O : out  STD_LOGIC;
               VGA_RED_O    : out  STD_LOGIC_VECTOR (3 downto 0);
               VGA_GREEN_O  : out  STD_LOGIC_VECTOR (3 downto 0);
               VGA_BLUE_O   : out  STD_LOGIC_VECTOR (3 downto 0));
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
    signal s_cpu_reset : STD_LOGIC;
    signal s_mem_state : STD_LOGIC_VECTOR (7 downto 0);
    signal s_debug_read_data : STD_LOGIC_VECTOR( 7 downto 0 );
    signal s_step : STD_LOGIC;
    
    signal s_clock : std_logic;
    
    signal s_t_PC : STD_LOGIC_VECTOR ( 11 downto 0 );
    signal s_t_I : STD_LOGIC_VECTOR ( 11 downto 0 );
                           
    signal s_t_addr : STD_LOGIC_VECTOR ( 11 downto 0 );
    signal s_t_n, s_t_x, s_t_y : STD_LOGIC_VECTOR ( 3 downto 0 );
    signal s_t_kk : STD_LOGIC_VECTOR ( 7 downto 0 );
       
    signal s_t_SP : STD_LOGIC_VECTOR ( 7 downto 0 );
    signal  s_t_STACK_0,  s_t_STACK_1,  s_t_STACK_2,  s_t_STACK_3,
            s_t_STACK_4,  s_t_STACK_5,  s_t_STACK_6,  s_t_STACK_7,
            s_t_STACK_8,  s_t_STACK_9,  s_t_STACK_A,  s_t_STACK_B,
            s_t_STACK_C,  s_t_STACK_D,  s_t_STACK_E,  s_t_STACK_F 
                : STD_LOGIC_VECTOR (15 downto 0);
                
    signal  s_t_REG_0,  s_t_REG_1,  s_t_REG_2,  s_t_REG_3,
            s_t_REG_4,  s_t_REG_5,  s_t_REG_6,  s_t_REG_7,
            s_t_REG_8,  s_t_REG_9,  s_t_REG_A,  s_t_REG_B,
            s_t_REG_C,  s_t_REG_D,  s_t_REG_E,  s_t_REG_F 
                : STD_LOGIC_VECTOR (7 downto 0);
                
    signal audioAMPsig : std_logic := '0';
    signal counter: unsigned(15 DOWNTO 0) := x"0000";
    
    signal s_buzz : STD_LOGIC;
begin

    buzz <= s_buzz;
    process(clk) begin
        if rising_edge(clk) then
            if(counter = 53628) then
                audioAMPsig <= not(audioAMPsig);
                counter <= x"0000";
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;
    
    audioAMP <= audioAMPsig;
    audioEn <= s_buzz;
    -----------------------------------------------------
    ------ for simulation only
        
    t_PC <= s_t_PC;
    t_I <= s_t_I;
                               
    t_addr <= s_t_addr;
    t_n <= s_t_n; t_x <= s_t_x; t_y <= s_t_y;
    t_kk <= s_t_kk;
           
    t_SP <= s_t_SP;
    t_STACK_0  <= s_t_STACK_0;   t_STACK_1  <= s_t_STACK_1;   t_STACK_2  <= s_t_STACK_2;   t_STACK_3  <= s_t_STACK_3;
    t_STACK_4  <= s_t_STACK_4;   t_STACK_5  <= s_t_STACK_5;   t_STACK_6  <= s_t_STACK_6;   t_STACK_7  <= s_t_STACK_7;
    t_STACK_8  <= s_t_STACK_8;   t_STACK_9  <= s_t_STACK_9;   t_STACK_A  <= s_t_STACK_A;   t_STACK_B  <= s_t_STACK_B;
    t_STACK_C  <= s_t_STACK_C;   t_STACK_D  <= s_t_STACK_D;   t_STACK_E  <= s_t_STACK_E;   t_STACK_F  <= s_t_STACK_F;
                    
    t_REG_0  <= s_t_REG_0;    t_REG_1  <= s_t_REG_1;    t_REG_2  <= s_t_REG_2;   t_REG_3  <= s_t_REG_3;
    t_REG_4  <= s_t_REG_4;    t_REG_5  <= s_t_REG_5;    t_REG_6  <= s_t_REG_6;   t_REG_7  <= s_t_REG_7;
    t_REG_8  <= s_t_REG_8;    t_REG_9  <= s_t_REG_9;    t_REG_A  <= s_t_REG_A;   t_REG_B  <= s_t_REG_B;
    t_REG_C  <= s_t_REG_C;    t_REG_D  <= s_t_REG_D;    t_REG_E  <= s_t_REG_E;   t_REG_F  <= s_t_REG_F;
    
    inner_clk <= s_clock;
    
    gameSelected <= s_gameSelected;
    cpu_state <= s_cpu_state;
    
    sys_reset <= s_sys_reset;
    cpu_reset <= s_cpu_reset;
    mem_state <= s_mem_state;
    debug_read_data <= s_debug_read_data;
    
    CPU_memRead <= s_CPU_memRead;
    CPU_memWrite <= s_CPU_memWrite;
    CPU_memAddress <= s_CPU_memAddress;
    CPU_mem_valid <= s_CPU_mem_valid;
    CPU_mem_write <= s_CPU_mem_write;
    CPU_mem_hold <= s_CPU_mem_hold;
    CPU_mem_done <=  s_CPU_mem_done;
        
    TIME_memRead <= s_TIME_memRead;
    TIME_memWrite <= s_TIME_memWrite;
    TIME_memAddress <= s_TIME_memAddress;
    TIME_mem_valid <= s_TIME_mem_valid;
    TIME_mem_write <= s_TIME_mem_write;
    TIME_mem_hold <= s_TIME_mem_hold;
    TIME_mem_done <= s_TIME_mem_done;
        
    VGA_memRead <= s_VGA_memRead;
    VGA_memWrite <= s_VGA_memWrite;
    VGA_memAddress <= s_VGA_memAddress;
    VGA_mem_valid <= s_VGA_mem_valid;
    VGA_mem_write <= s_VGA_mem_write;
    VGA_mem_hold <= s_VGA_mem_hold;
    VGA_mem_done <= s_VGA_mem_done;
    ----- end for simulation
    ----------------------------------------------
    
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
                   t_PC => s_t_PC,
                   t_I => s_t_I,
                                                  
                   t_addr => s_t_addr,
                   t_n => s_t_n, t_x => s_t_x, t_y => s_t_y,
                   t_kk => s_t_kk,
                          
                   t_SP => s_t_SP,
                   t_STACK_0  => s_t_STACK_0,   t_STACK_1  => s_t_STACK_1,   t_STACK_2  => s_t_STACK_2,   t_STACK_3  => s_t_STACK_3,
                   t_STACK_4  => s_t_STACK_4,   t_STACK_5  => s_t_STACK_5,   t_STACK_6  => s_t_STACK_6,   t_STACK_7  => s_t_STACK_7,
                   t_STACK_8  => s_t_STACK_8,   t_STACK_9  => s_t_STACK_9,   t_STACK_A  => s_t_STACK_A,   t_STACK_B  => s_t_STACK_B,
                   t_STACK_C  => s_t_STACK_C,   t_STACK_D  => s_t_STACK_D,   t_STACK_E  => s_t_STACK_E,   t_STACK_F  => s_t_STACK_F,
                                   
                   t_REG_0  => s_t_REG_0,    t_REG_1  => s_t_REG_1,    t_REG_2  => s_t_REG_2,   t_REG_3  => s_t_REG_3,
                   t_REG_4  => s_t_REG_4,    t_REG_5  => s_t_REG_5,    t_REG_6  => s_t_REG_6,   t_REG_7  => s_t_REG_7,
                   t_REG_8  => s_t_REG_8,    t_REG_9  => s_t_REG_9,    t_REG_A  => s_t_REG_A,   t_REG_B  => s_t_REG_B,
                   t_REG_C  => s_t_REG_C,    t_REG_D  => s_t_REG_D,    t_REG_E  => s_t_REG_E,   t_REG_F  => s_t_REG_F,
                   
                   clk => s_clock,
                   reset => s_cpu_reset,
                   active => cpu_active,
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
                   cpu_reset => s_cpu_reset,
                   step => s_step,
                   clk => s_clock,
                   active => mem_active,
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
                   buzz => s_buzz );
                   
    my_vga_controller : vga_controller
        port map ( memRead => s_VGA_memRead,
                   memWrite => s_VGA_memWrite,
                   memAddress => s_VGA_memAddress,
                   mem_valid => s_VGA_mem_valid,
                   mem_write => s_VGA_mem_write,
                   mem_hold => s_VGA_mem_hold,
                   mem_done => s_VGA_mem_done,
                   clk => clk,
                   sys_clk => s_clock,
                   active => vga_active,
                   reset => reset,
                   sys_reset => s_sys_reset,
                   VGA_HS_O => VGA_HS_O,
                   VGA_VS_O => VGA_VS_O,
                   VGA_RED_O => VGA_RED_O,
                   VGA_GREEN_O => VGA_GREEN_O,
                   VGA_BLUE_O => VGA_BLUE_O );
end Behavioral;
