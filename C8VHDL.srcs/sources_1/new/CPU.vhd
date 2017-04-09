library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.types.all;

entity CPU is
   Port( clk, reset: in std_logic;
         -- inputs for debugging purposes only
         inputs: in std_logic_vector(7 downto 0);
         registers_cpu: in registers;
         output: out std_logic_vector(3 downto 0));
end CPU;

architecture Behavioral of CPU is

component ALU is
  Port (
       opcode_in: in OPCODE;
       input_one, input_two: in std_logic_vector(3 downto 0);
       carry_flag, shift_flag, borrow_flag: out std_logic;
       output: out std_logic_vector(3 downto 0));
end component;

component programCounter is
    Port ( clk, enable, load, increment, reset: IN STD_LOGIC;
           dataBus   : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
           addressBus: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
           );
end component;

-- ALU Signals
signal opcode_sig: OPCODE;
signal input_one,input_two, result_ALU: std_logic_vector(3 downto 0);
signal carry_flag, shift_flag, borrow_flag: std_logic;

-- PC signals
signal enable_pc, load_pc, increment_pc, reset_pc: std_logic;
signal dataBus_pc, addressBus_pc: std_logic_vector(15 downto 0);

begin

ALU_f: ALU port map(opcode_in => opcode_sig, input_one => input_one, input_two => input_two, 
                  carry_flag => carry_flag, shift_flag => shift_flag, borrow_flag => borrow_flag, 
                  output => result_alu);


PC_f:  programCounter port map(enable => enable_pc, load => load_pc, increment => increment_pc, clk => clk,
                               reset => reset_pc, dataBus => dataBus_pc, addressBus => addressBus_pc);

process(clk, reset) begin
    if(rising_edge(clk)) then
        --fetch instruction
    elsif(falling_edge(clk)) then
        opcode_sig <= O_NONE;
    end if;
end process;

        output <= result_alu;

end Behavioral;
