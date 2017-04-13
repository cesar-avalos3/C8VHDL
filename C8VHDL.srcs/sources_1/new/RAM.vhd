library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.types.all;
use work.utilityFunctions.all;
-- Naive simple inplementation of RAM, to be heavily rewritten.
-- We have 12 bits address size, 0x000 to 0xFFF.

-- r_w is read-write lock, meaning if r_-w is 0 then we are in writing mode, else
-- you can't write anything on the RAM.
-- We probably won't have to write anything on the ram but it's a nice feature to have.

entity RAM is
    PORT (
        enable, reset, r_w:     IN  STD_LOGIC;
        address:    IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
        dataIn:     IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
        dataOut:    OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
end RAM;

architecture Behavioral of RAM is

signal ramData: RAM_ARRAY := readFileToRAM("test.hex");

begin
    
process (r_w, reset) begin
    if(reset = '1') then
        for i in 0 to RAM_ARRAY'length loop
            ramData(i) <= x"0000";
        end loop;
    elsif(r_w'event and r_w = '0') then
        ramData(to_integer(unsigned(address))) <= dataIn;
    end if;
end process;

dataOut <= ramData(to_integer(unsigned(address))) when reset = '0' and enable = '1' and r_w = '1' else "ZZZZZZZZZZZZZZZZ";

end Behavioral;
