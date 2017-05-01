library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mem_test is
    Port ( address : in STD_LOGIC_VECTOR (11 downto 0);
           valid : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           dataOut : out STD_LOGIC_VECTOR (7 downto 0);
           done : out STD_LOGIC);
end mem_test;

architecture Behavioral of mem_test is
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
               clk, reset : in STD_LOGIC);
    end component;
    
   signal s_memAddress : STD_LOGIC_VECTOR (35 downto 0);
   signal s_dataIn : STD_LOGIC_VECTOR (23 downto 0);
   signal s_dataOut : STD_LOGIC_VECTOR (23 downto 0);
   signal s_valid : STD_LOGIC_VECTOR (2 downto 0);
   signal s_done : STD_LOGIC_VECTOR (2 downto 0);
   signal s_write : STD_LOGIC_VECTOR (2 downto 0);
   signal s_hold : STD_LOGIC_VECTOR (2 downto 0);
   signal s_gameSelect : STD_LOGIC_VECTOR (3 downto 0);
   signal s_gameSelected : STD_LOGIC_VECTOR (3 downto 0);
   signal s_mapped_out : STD_LOGIC_VECTOR( 7 downto 0 );
begin
    s_memAddress( 11 downto 0 ) <= address;
    s_memAddress( 35 downto 12 ) <= x"000000";
    s_dataIn <= x"000000";
    dataOut <= s_dataOut( 7 downto 0 );
    s_valid(0) <= valid;
    s_valid( 2 downto 1 ) <= "00";
    done <= s_done(0);
    s_write <= "000";
    s_hold <= "000";
    s_gameSelect <= "0000";
    
    my_mem_controller : mem_controller
        port map(  memAddress => s_memAddress,
                   dataIn => s_dataIn,
                   dataOut => s_dataOut,
                   valid => s_valid,
                   done => s_done,
                   write => s_write,
                   hold => s_hold,
                   gameSelect => s_gameSelect,
                   gameSelected => s_gameSelected,
                   mapped_out => s_mapped_out,
                   clk => clk,
                   reset => reset);

end Behavioral;
