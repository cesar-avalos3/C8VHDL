
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity audioTest is
 Port (  clk: in STD_LOGIC;
         audioEn : out STD_LOGIC;
         audioAMP: out STD_LOGIC);
end audioTest;


architecture Behavioral of audioTest is
    signal audioAMPsig : std_logic := '0';
    signal counter: unsigned(15 DOWNTO 0) := x"0000";
begin

process(clk) begin
if rising_edge(clk) then
    if(counter = 53628) then
        audioAMPsig <= not(audioAMPsig);
        counter <= x"0000";
    else
        counter <= counter + 1;
    end if;
end if;
end process;
    audioAMP <= audioAMPsig;
    audioEn <= '1';
end Behavioral;