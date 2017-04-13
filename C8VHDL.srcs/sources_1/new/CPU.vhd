library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.types.all;
use work.utilityFunctions.all;

entity CPU is
   Port( clk, reset: in STD_LOGIC;
         -- inputs for debugging purposes only
         inputs: in STD_LOGIC_VECTOR(7 downto 0);
         output: out STD_LOGIC_VECTOR(3 downto 0);
         instruction_debug: out STD_LOGIC_VECTOR(15 DOWNTO 0);
         programCounter_debug: out STD_LOGIC_VECTOR(11 DOWNTO 0);
         opcode_debug: out OPCODE);
end CPU;

architecture Behavioral of CPU is

component ALU is
  Port (
       opcode_in: in OPCODE;
       clk: in STD_LOGIC;
       input_one, input_two: in STD_LOGIC_VECTOR(3 downto 0);
       carry_flag, shift_flag, borrow_flag: out std_logic;
       output: out STD_LOGIC_VECTOR(3 downto 0));
end component;

component programCounter is
    Port ( clk, enable, load, increment, reset: IN STD_LOGIC;
           dataBus   : IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
           addressBus: OUT STD_LOGIC_VECTOR(11 DOWNTO 0)
           );
end component;

component RAM is
    PORT (
    enable, reset, r_w:     IN  STD_LOGIC;
    address:    IN  STD_LOGIC_VECTOR(11 DOWNTO 0);
    dataIn:     IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
    dataOut:    OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
end component;


component INSTRUCTION_DECODER is
    Port (clk: in std_logic;
          instruction_in: in  STD_LOGIC_VECTOR(15 DOWNTO 0);
          opcode_out    : out OPCODE);
end component;


-- ALU Signals
signal opcode_sig: OPCODE;
signal work_sig: STD_LOGIC;
signal input_one,input_two, result_ALU: STD_LOGIC_VECTOR(3 downto 0);
signal carry_flag, shift_flag, borrow_flag: STD_LOGIC;

-- PC signals
signal enable_pc, load_pc, increment_pc, reset_pc: STD_LOGIC;
signal dataBus_pc, addressBus_pc: STD_LOGIC_VECTOR(11 downto 0);

-- CPU signals
signal registers_cpu : registers;
signal stack_cpu: stack;

-- RAM signals
signal address_ram: STD_LOGIC_VECTOR(11 DOWNTO 0);
signal enable_ram, reset_ram, r_w_ram:  STD_LOGIC := '0';
signal dataOut_ram, dataIn_ram: STD_LOGIC_VECTOR(15 DOWNTO 0);

-- DECODER singals
signal opcode_out : opcode;
signal decoder_in : std_logic_vector(15 downto 0);

begin

ALU_f: ALU port map(opcode_in => opcode_sig, clk => clk, input_one => input_one, input_two => input_two, 
                  carry_flag => carry_flag, shift_flag => shift_flag, borrow_flag => borrow_flag, 
                  output => result_alu);


PC_f:  programCounter port map(enable => enable_pc, load => load_pc, increment => increment_pc, clk => clk,
                               reset => reset, dataBus => dataBus_pc, addressBus => addressBus_pc);

RAM_f: RAM port map(address => address_ram, enable => enable_ram, reset => reset, r_w => r_w_ram, dataIn => dataIn_ram, dataOut => dataOut_ram);

DECODER_f: INSTRUCTION_DECODER port map(clk => clk, instruction_in => dataOut_ram, opcode_out => opcode_sig);

process(clk, reset) begin    
    if(reset = '1') then
        --Something here
    elsif(rising_edge(clk)) then
        --fetch instruction
        reset_ram <= '0';
        reset_pc  <= '0';
        increment_pc <= '1';
        enable_ram <= '1';
        enable_pc <= '1';
        load_pc <= '1';
        r_w_ram <= '1';
        address_ram <= addressBus_pc;
    elsif(falling_edge(clk)) then
        load_pc <= '0';
        increment_pc <= '1';
    end if;
end process;

input_one <= dataOut_ram(3 DOWNTO 0);
input_two <= dataOut_ram(7 DOWNTO 4);
instruction_debug <= dataOut_ram;
programCounter_debug <= addressBus_pc;
output <= result_alu;
opcode_debug <= opcode_sig;

end Behavioral;
