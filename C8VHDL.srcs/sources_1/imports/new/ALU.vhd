----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2017 02:45:10 AM
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use work.types.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( clk, reset: in std_logic;
           opcode_in: in OPCODE;
           instructions : in std_logic_vector(11 downto 0);
           v0,v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v0a,v0b,v0c,v0d,v0e,v0f: in std_logic_vector(7 downto 0));
end ALU;

-- We have 16 bit instructions going through here

architecture Behavioral of ALU is

signal q: std_logic_vector(15 downto 0);

begin
    process(opcode_in) 
    begin
        case opcode_in is
                    
    end process;
end Behavioral;