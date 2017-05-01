library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.TYPES.all;

-- Dual port Registers_16.

entity REGISTERS_16 is
    Port ( clk, reset, write_In: IN STD_LOGIC;
    	   address_in_A, address_in_B: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    	   -- Only one register can be written at a time, it's register A.
    	   dataIn_A: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    	   DEBUG_REG: OUT REGISTERS;
    	   Data_Out_A, Data_Out_B : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    	   );
end REGISTERS_16;

architecture Behavioral of REGISTERS_16 is

signal registers_array: REGISTERS := (OTHERS => (OTHERS => '0'));

-- Stack Pointer
signal register_SP:  STD_LOGIC_VECTOR(7 DOWNTO 0);

signal dummyCounter: STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000";

begin
	process(clk, reset) begin
		-- implement reset afterwards
		if(reset = '1') then
            for i in 0 to 15 loop
                registers_array(i) <= dummyCounter;
                dummyCounter <= STD_LOGIC_VECTOR(unsigned(dummyCounter) + 1);
		    end loop;
		elsif(rising_edge(clk)) then
			if(write_In = '1') then
				registers_array(to_integer(unsigned(address_in_A))) <= dataIn_A;
			end if;
		end if;
	end process;

Data_Out_A <= registers_array(to_integer(unsigned(address_in_A)));
Data_Out_B <= registers_array(to_integer(unsigned(address_in_B)));
DEBUG_REG <= registers_array;
end Behavioral;
