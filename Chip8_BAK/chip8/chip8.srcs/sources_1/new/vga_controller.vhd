library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity vga_controller is
    Port ( memRead : in STD_LOGIC_VECTOR (7 downto 0);
           memWrite : out STD_LOGIC_VECTOR (7 downto 0);
           memAddress : out STD_LOGIC_VECTOR (11 downto 0);
           mem_valid : out STD_LOGIC;
           mem_write : out STD_LOGIC;
           mem_hold : out STD_LOGIC;
           mem_done : in STD_LOGIC;
           clk : in STD_LOGIC;
           reset : in STD_LOGIC);
end vga_controller;

architecture Behavioral of vga_controller is

begin
    memWrite <= ( others => '0' );
    memAddress <= ( others => '0' );
    mem_valid <= '0';
    mem_write <= '0';
    mem_hold <= '0';

end Behavioral;
