library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cntr_test is
    Port ( memRead : in STD_LOGIC_VECTOR (7 downto 0);
           memAddress : out STD_LOGIC_VECTOR (11 downto 0);
           mem_valid : out STD_LOGIC;
           mem_write : out STD_LOGIC;
           mem_hold : out STD_LOGIC;
           mem_done : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC);
end cntr_test;

architecture Behavioral of cntr_test is
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
    
    signal s_memRead : STD_LOGIC_VECTOR (7 downto 0);
    signal s_memWrite : STD_LOGIC_VECTOR (7 downto 0);
    signal s_keyPad : STD_LOGIC_VECTOR (15 downto 0);
    signal s_cpu_state : STD_LOGIC_VECTOR( 7 downto 0 );
    signal s_err_code : STD_LOGIC_VECTOR( 2 downto 0 );
     
begin
    s_memRead <= "00000000";
    s_keyPad <= x"0000";

    my_core : core
        port map ( memRead => s_memRead,
                   memWrite => s_memWrite,
                   memAddress => memAddress,
                   keyPad => s_keyPad,
                   mem_valid => mem_valid,
                   mem_write => mem_write,
                   mem_hold => mem_hold,
                   mem_done => mem_done,
                   cpu_state => s_cpu_state,
                   clk => clk,
                   reset => reset,
                   err_code => s_err_code );

end Behavioral;
