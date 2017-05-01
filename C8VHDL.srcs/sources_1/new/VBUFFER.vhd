----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2017 05:15:21 PM
-- Design Name: 
-- Module Name: VBUFFER - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

use work.TYPES.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

-- X_vb and Y_vb tells us the x,y coordinate (0,0) being top-left
-- dataIn is actually pixelIn, tells us wether we have a pixel or not there.

entity VBUFFER is
    PORT (
          X_vb:               IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          Y_vb:               IN  STD_LOGIC_VECTOR(7  DOWNTO 0);
          dataIn, enable, r_w, reset: IN  STD_LOGIC;
          -- Where write is 0, read is 1
          dataOut:            OUT STD_LOGIC
          );
end VBUFFER;

architecture Behavioral of VBUFFER is

signal videoMEM: VBUF;

begin
    process(r_w, reset) begin
        if(reset = '1') then
            for i in 0 to 63 loop
                for j in 0 to 31 loop
                    videoMEM( i, j) <= '0';
                end loop;
            end loop;
        elsif(r_w'event and r_w = '0') then
            videoMEM( to_integer(unsigned(Y_vb)), to_integer(unsigned(X_vb))) <= dataIn;
        end if;
     end process;
     
     dataOut <= videoMEM( to_integer(unsigned(Y_vb)), to_integer(unsigned(X_vb))) when (enable = '1') and (reset = '0') and (r_w = '1') else 'Z';

end Behavioral;
