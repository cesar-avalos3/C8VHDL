library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity REGISTERS_8 is
	Port ( Clk, write_in, reset: in STD_LOGIC;
		   Data_In: in STD_LOGIC_VECTOR(7 DOWNTO 0);
		   Data_Out: out STD_LOGIC_VECTOR(7 DOWNTO 0));
end REGISTERS_8;

architecture Behavioral of REGISTERS_8 is

signal q: STD_LOGIC_VECTOR(7 DOWNTO 0);

begin
	process(clk, reset) begin
		if(reset = '1') then
			q <= (others => '0');
		elsif(rising_edge(clk)) then
			if(write_in = '1') then
				q <= Data_In;
			end if;
		end if;
	end process;

Data_Out <= q;

end Behavioral;