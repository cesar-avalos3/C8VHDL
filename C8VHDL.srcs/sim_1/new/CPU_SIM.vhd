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
         output: out std_logic_vector(7 downto 0);
         instruction_debug: out STD_LOGIC_VECTOR(15 DOWNTO 0);
         programCounter_debug: out STD_LOGIC_VECTOR(11 DOWNTO 0);
         registers_debug: out REGISTERS;
         opcode_debug: out OPCODE);
end component;

signal counter: std_logic := '0';
signal clk, reset: std_logic := '0';
signal inputs: std_logic_vector(7 downto 0) := "00000000";
signal output: std_logic_vector(7 downto 0) := "00000000";
signal a: std_logic_vector(7 downto 0);
signal instruction_debug: STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
signal programCounter_debug: STD_LOGIC_VECTOR(11 DOWNTO 0);
signal opcode_debug: OPCODE;
signal registers_debug: REGISTERS := (others => (others => '0'));

begin

    CPU_Instance: CPU port map(clk => clk, reset => reset, inputs => inputs,output => output, instruction_debug => instruction_debug, programCounter_debug => programCounter_debug, opcode_debug => opcode_debug, registers_debug => registers_debug);
 
 process begin
        if(counter = '0') then
           reset <= '1';
           counter <= '1';
           for i in 0 to 15 loop
               registers_debug(i) <= "00000000";
           end loop;
        else
            reset <= '0';
        end if;
        wait for 16.67 ms;
        clk <= not(clk);
 end process;

end Behavioral;
