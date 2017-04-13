library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RAM_SIM is
--  Port ( );
end RAM_SIM;

architecture Behavioral of RAM_SIM is

component RAM is
    PORT (
        address:    IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
        enable:     IN  STD_LOGIC;
        dataOut:    OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
end component;

signal address: STD_LOGIC_VECTOR(11 DOWNTO 0);
signal enable:  STD_LOGIC;
signal dataOut: STD_LOGIC_VECTOR(15 DOWNTO 0);

begin

    RAM_SIM: RAM port map(address => address, enable => enable, dataOut => dataOut);
    process begin
        
        address <= "001000000000";
        enable <= '1';
        wait for 20 ns;
        enable <= '0';
        wait for 20 ns;
        address <= "001000000001";
        enable <= '1';
        wait for 20 ns;
        enable <= '0';
        wait for 20 ns;
        address <= "000000000001";
        enable <= '1';
        wait for 20 ns;
        enable <= '0';
        wait for 20 ns;
        address <= "000000000010";
        enable <= '1';
        wait for 20 ns;     
        enable <= '0';
        wait for 20 ns;   
    end process;

end Behavioral;
