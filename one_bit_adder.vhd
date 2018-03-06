library ieee;
use ieee.std_logic_1164.all;
use work.eecs361_gates.all;
use work.eecs361.all;

entity one_bit_adder is
  port (
    a,b,cin        : in  std_logic;
    sum, cout      : out std_logic
  );
end one_bit_adder;

architecture structural of one_bit_adder is
  signal a_xor_b, a_and_cin,b_and_cin,a_and_b,or_1_result,cout_temp: std_logic;
begin
--sum portion
  XOR_1: xor_gate port map (a,b,a_xor_b);
  XOR_2: xor_gate port map (a_xor_b,cin,sum);
--cout portion
  AND_1: and_gate port map(a, cin, a_and_cin);
  AND_2: and_gate port map(b, cin, b_and_cin);
  AND_3: and_gate port map(a, b, a_and_b);
  OR_1:  or_gate port map(a_and_cin, b_and_cin, or_1_result);
  OR_2:  or_gate port map(a_and_b, or_1_result, cout_temp);
    cout <= cout_temp;
end structural;
