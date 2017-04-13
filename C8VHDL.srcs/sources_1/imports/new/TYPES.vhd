
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package TYPES is
--  Port ( );
        TYPE OPCODE IS (O_NONE, O_CLS, O_ADDBYTE, O_SNEBYTE, O_RET, O_SYS, O_JP, O_CALL, O_SEBYTE, O_SNE, O_SEQUAL, O_LDBYTE, O_ADD, O_LD, O_OR, O_AND, O_XOR, O_SUB, O_SHR, O_SUBN, O_SHL, O_LDI, O_JPV0, O_RND, O_DRW, O_SKP, O_SKNP, O_LDVXDT, O_LDVXK, O_LDDTVX, O_LDSTVX, O_ADDI, O_LDF, O_LDB, O_LDVXI );
        TYPE REGISTERS IS ARRAY (15 DOWNTO 0) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
        TYPE STACK IS ARRAY (63 DOWNTO 0) OF STD_LOGIC_VECTOR(7 DOWNTO 0);
        TYPE VBUF IS ARRAY (63 DOWNTO 0, 31 DOWNTO 0) OF STD_LOGIC;
        Subtype RAM_WORD IS STD_LOGIC_VECTOR(15 downto 0);
        Type RAM_ARRAY is array (2000 DOWNTO 0) of RAM_WORD;
end TYPES;