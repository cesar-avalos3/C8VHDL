library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity chip_8_TB_A is
--  Port ( );
end chip_8_TB_A;

architecture Behavioral of chip_8_TB_A is
    component chip_8A
        port (  keyPad : in STD_LOGIC_VECTOR (15 downto 0);
                gameSelect : in STD_LOGIC_VECTOR (3 downto 0);
                gameSelected : out STD_LOGIC_VECTOR (3 downto 0);
                clk, reset : in STD_LOGIC;
                
                inner_clk : out STD_LOGIC;
            
                err_code : out STD_LOGIC_VECTOR( 2 downto 0 );
                heart_beat, buzz : out STD_LOGIC;
            
                mapped_out : out STD_LOGIC_VECTOR( 7 downto 0 );
                mem_state : out STD_LOGIC_VECTOR( 7 downto 0 );
                debug_read_data : out STD_LOGIC_VECTOR( 7 downto 0 );
                
                sys_reset : out STD_LOGIC;
            
                CPU_memRead : out STD_LOGIC_VECTOR (7 downto 0);
                CPU_memWrite : out STD_LOGIC_VECTOR (7 downto 0);
                CPU_memAddress : out STD_LOGIC_VECTOR (11 downto 0);
                CPU_mem_valid : out STD_LOGIC;
                CPU_mem_write : out STD_LOGIC;
                CPU_mem_hold : out STD_LOGIC;
                CPU_mem_done : out STD_LOGIC;
                cpu_state : out STD_LOGIC_VECTOR (7 downto 0);
            
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
                VGA_mem_done : out STD_LOGIC);
    end component;
    
    signal keyPad : STD_LOGIC_VECTOR (15 downto 0);
    signal gameSelect : STD_LOGIC_VECTOR (3 downto 0);
    signal gameSelected : STD_LOGIC_VECTOR (3 downto 0);
    signal clk, reset : STD_LOGIC;
                
    signal err_code : STD_LOGIC_VECTOR( 2 downto 0 );
    signal heart_beat, buzz : STD_LOGIC;
                
    signal mapped_out : STD_LOGIC_VECTOR( 7 downto 0 );
    signal mem_state : STD_LOGIC_VECTOR( 7 downto 0 );
    signal debug_read_data : STD_LOGIC_VECTOR( 7 downto 0 );
    
    signal sys_reset : STD_LOGIC;
    signal inner_clk : STD_LOGIC;
                
    signal CPU_memRead : STD_LOGIC_VECTOR (7 downto 0);
    signal CPU_memWrite : STD_LOGIC_VECTOR (7 downto 0);
    signal CPU_memAddress : STD_LOGIC_VECTOR (11 downto 0);
    signal CPU_mem_valid : STD_LOGIC;
    signal CPU_mem_write : STD_LOGIC;
    signal CPU_mem_hold : STD_LOGIC;
    signal CPU_mem_done : STD_LOGIC;
    signal cpu_state : STD_LOGIC_VECTOR (7 downto 0);
                
    signal TIME_memRead : STD_LOGIC_VECTOR (7 downto 0);
    signal TIME_memWrite : STD_LOGIC_VECTOR (7 downto 0);
    signal TIME_memAddress : STD_LOGIC_VECTOR (11 downto 0);
    signal TIME_mem_valid : STD_LOGIC;
    signal TIME_mem_write : STD_LOGIC;
    signal TIME_mem_hold : STD_LOGIC;
    signal TIME_mem_done : STD_LOGIC;
                
    signal VGA_memRead : STD_LOGIC_VECTOR (7 downto 0);
    signal VGA_memWrite : STD_LOGIC_VECTOR (7 downto 0);
    signal VGA_memAddress : STD_LOGIC_VECTOR (11 downto 0);
    signal VGA_mem_valid : STD_LOGIC;
    signal VGA_mem_write : STD_LOGIC;
    signal VGA_mem_hold : STD_LOGIC;
    signal VGA_mem_done : STD_LOGIC;
begin
    process
    begin
        clk <= '1';
        wait for 5 ns;
        clk <= '0';
        wait for 5 ns;
    end process;
    
    process
    begin
        reset <= '1';
        wait for 50 ns;
        
        keyPad <= x"0000";
        gameSelect <= "0000";
        wait for 200 ns;
        
        reset <= '0';
        wait;
    end process;
    
    UUT : chip_8A
        port map (  keyPad => keyPad,
                    gameSelect => gameSelect,
                    gameSelected => gameSelected,
                    clk =>  clk,
                    reset => reset,
                
                    err_code => err_code,
                    heart_beat => heart_beat,
                    buzz => buzz,
                    
                    inner_clk => inner_clk,
                    
                    mapped_out => mapped_out,
                    sys_reset => sys_reset,
                    mem_state => mem_state,
                    debug_read_data => debug_read_data,
                
                    CPU_memRead => CPU_memRead,
                    CPU_memWrite => CPU_memWrite,
                    CPU_memAddress => CPU_memAddress,
                    CPU_mem_valid => CPU_mem_valid,
                    CPU_mem_write => CPU_mem_write,
                    CPU_mem_hold => CPU_mem_hold,
                    CPU_mem_done => CPU_mem_done,
                    cpu_state => cpu_state,
                
                    TIME_memRead => TIME_memRead,
                    TIME_memWrite => TIME_memWrite,
                    TIME_memAddress => TIME_memAddress,
                    TIME_mem_valid => TIME_mem_valid,
                    TIME_mem_write => TIME_mem_write,
                    TIME_mem_hold => TIME_mem_hold,
                    TIME_mem_done => TIME_mem_done,
                
                    VGA_memRead => VGA_memRead,
                    VGA_memWrite => VGA_memWrite,
                    VGA_memAddress => VGA_memAddress,
                    VGA_mem_valid => VGA_mem_valid,
                    VGA_mem_write => VGA_mem_write,
                    VGA_mem_hold => VGA_mem_hold,
                    VGA_mem_done => VGA_mem_done );

end Behavioral;
