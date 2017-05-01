library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity clock_div is
    Port ( reset, clk_in : in STD_LOGIC;
           clk_out : out STD_LOGIC);
end clock_div;

architecture Behavioral of clock_div is
    signal count : std_logic_vector( 7 downto 0 );
begin
    clk_out <= count(7);
    
    process( reset, clk_in )
    begin
        if( reset = '1' ) then
            count <= ( others => '0' );
        elsif( rising_edge( clk_in ) ) then
            count <= count + x"01";
        end if;
    end process;

end Behavioral;
