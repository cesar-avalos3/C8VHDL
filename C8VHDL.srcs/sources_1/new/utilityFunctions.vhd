library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_textio.all;
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;
use work.types.all;

package utilityFunctions is
    impure function readFileToRAM(Filename: STRING) return RAM_ARRAY;
end utilityFunctions;

package body utilityFunctions is

impure function readFileToRAM(Filename: STRING) return RAM_ARRAY is
    file FileHandle         : TEXT open READ_MODE is FileName;
    variable CurrentLine    : LINE;
    variable Word           : STD_LOGIC_VECTOR(16 DOWNTO 0);
    variable Output         : RAM_ARRAY := (others => (others => '0'));
    
    begin for i in 0 to 16 loop
        exit when endfile(FileHandle);
        readline(FileHandle, CurrentLine);
        hread(CurrentLine, Word);
        Output(i) := Word;
   end loop;
   
   return Output;
end function;

end package body;