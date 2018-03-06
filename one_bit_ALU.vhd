library ieee;
use ieee.std_logic_1164.all;
use work.eecs361_gates.all;
use work.eecs361.all;

entity one_bit_ALU is
  port (
    a,b,cin,op1,op2,op3,shift   : in  std_logic;
    result, carryout              : out std_logic
  );
end one_bit_ALU;

architecture structural of one_bit_ALU is
  
  component one_bit_adder is
  port (
    a,b,cin        : in  std_logic;
    sum, cout           : out std_logic
  );
  end component;
  
  component eight_to_one_mux is
  port (
    in1,in2,in3,in4,in5,in6,in7,in8,op1,op2,op3   : in  std_logic;
    output                                        : out std_logic
  );
  end component;
  
signal bfinal, sum, a_xor_b, a_and_b, a_or_b, carryout_temp, shift_in: std_logic;

begin
  XOR_1: xor_gate port map (b, op3, bfinal);
  XOR_2: xor_gate port map (a, bfinal, a_xor_b);
  AND_1: and_gate port map (a, bfinal, a_and_b);
  OR_1:  or_gate port map (a, bfinal, a_or_b);
  ADD_1: one_bit_adder port map (a, bfinal, cin, sum, carryout_temp);
-- (op1,op2,op3) 
-- if (0,0,0), result = a_xor_b
-- if (1,0,0), result = a_and_b
-- if (0,1,0), result = a_or_b
-- if (1,1,0), result = a+b
-- if (0,0,1), result = a-b
-- if (1,0,1), result = SLT
-- if (0,1,1), result = SLTU
-- if (1,1,1), result = SRL
shift_in <= shift;
  EIGHT_TO_ONE_MUX_1: eight_to_one_mux port map(a_xor_b,a_and_b,a_or_b,sum,sum,'0','0',shift_in,op1,op2,op3,result);
carryout <= carryout_temp;
  end structural;
