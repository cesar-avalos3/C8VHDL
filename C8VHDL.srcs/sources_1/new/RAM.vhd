library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.types.all;
use work.utilityFunctions.all;
-- Naive simple inplementation of RAM, to be heavily rewritten.

entity RAM is
    PORT (
        address:    IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
        enable:     IN  STD_LOGIC;
        dataOut:    OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
end RAM;

architecture Behavioral of RAM is

signal ramData: RAM_ARRAY := (others => (others => '0'));

begin
    -- Dummy RAM data
    -- Register 1 OR  Register 2
    ramData(512) <= "1000000100010001";
    -- Register 1 AND Register 2
    ramData(513) <= "1000000100010010";
    
process (enable) begin
    dataOut <= ramData(to_integer(unsigned(address)));
end process;
end Behavioral;
