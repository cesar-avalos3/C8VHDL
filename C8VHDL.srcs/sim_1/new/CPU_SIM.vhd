----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/31/2017 05:49:23 AM
-- Design Name: 
-- Module Name: CPU_SIM - Behavioral
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

entity CPU_SIM is
--  Port ( );
end CPU_SIM;

architecture Behavioral of CPU_SIM is

component CPU is
    port(clk, reset: in std_logic;
         inputs: in std_logic_vector(7 downto 0);
         registers_cpu: in registers;
         output: out std_logic_vector(3 downto 0));
end component;

signal clk, reset: std_logic := '0';
signal registers_cpu: registers;
signal inputs: std_logic_vector(7 downto 0) := "00000000";
signal output: std_logic_vector(3 downto 0) := "0000";
signal a: std_logic_vector(7 downto 0);
begin
    mappink: CPU port map(clk => clk, reset => reset, registers_cpu => registers_cpu, inputs => inputs,output => output);
 
 process begin
        wait for 20 ns;
        inputs <= a;
        clk <= not(clk);
 end process;
 
 process(clk) begin
    if(rising_edge(clk)) then
        if(a = "00000000") then
            a <= "00100010";
        elsif(a = "00100010") then
            a <= "10100101";
        else
            a <= "00000000";
        end if;
    end if;
end process;
end Behavioral;
