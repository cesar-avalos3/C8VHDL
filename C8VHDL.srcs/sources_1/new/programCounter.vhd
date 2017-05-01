library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_unsigned.all;

-- Using unsigned as the memory addresses are going to be unsigned.

entity programCounter is
    Port ( clk,  enable, load, increment, reset: IN STD_LOGIC;
           dataBus   : IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
           addressBus: OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
           );
end programCounter;

-- To put in simple terms, the PC tells the CPU which address its reading
-- If reset is on, then return to 512, place where the program usually starts in CHIP8
-- If load is on, then whatever is on the dataBus is now the PC
-- If increment is on, the increase the current address by 1 byte.

architecture Behavioral of programCounter is

signal currentRegister: STD_LOGIC_VECTOR(11 DOWNTO 0);

begin
process(clk, reset) begin

    if(reset = '1') then
        currentRegister <= "000000000000";       
    elsif(rising_edge(clk)) then
        --Should increase have priority?
        if(increment = '1') then
            currentRegister <= currentRegister + x"001";
        elsif(load = '1') then
            currentRegister <= dataBus;
        end if;
    end if;
end process;

    addressBus <= currentRegister when enable = '1' else "ZZZZZZZZZZZZ";
 
end Behavioral;
