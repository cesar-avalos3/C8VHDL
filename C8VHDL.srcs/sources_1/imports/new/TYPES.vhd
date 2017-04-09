
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package TYPES is
--  Port ( );
        Type opcode IS (O_NONE,O_MOV, O_OR, O_AND, O_XOR, O_ADD, O_SUB, O_SHIFT_R, O_SHIFT_L, O_GT, O_EQ, O_PLUSPLUS);
        Type registers IS ARRAY (15 DOWNTO 0) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
        Subtype RAM_WORD IS std_logic_vector(15 downto 0);
        Type RAM_ARRAY is array (2000 DOWNTO 0) of RAM_WORD;
end TYPES;