library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.types.all;
use work.utilityFunctions.all;
-- Naive simple inplementation of RAM, to be heavily rewritten.
-- We have 12 bits address size, 0x000 to 0xFFF.

entity RAM is
    PORT (
        address:    IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
        enable:     IN  STD_LOGIC;
        dataOut:    OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
end RAM;

architecture Behavioral of RAM is

signal ramData: RAM_ARRAY := readFileToRAM("test.hex");

begin
    -- Dummy RAM data
    -- Register 1 OR  Register 2
    ramData(512) <= "1000000100010001";
    -- Register 1 AND Register 2
    ramData(513) <= "1000000100010010";
    
process (enable) begin
    if (enable = '1') then
        dataOut <= ramData(to_integer(unsigned(address)));
    end if;
end process;

end Behavioral;
