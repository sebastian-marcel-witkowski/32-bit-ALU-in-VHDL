library ieee;
use ieee.std_logic_1164.all;
use work.eecs361_gates.all;
use work.eecs361.all;

entity eight_to_one_mux is
  port (
    in1,in2,in3,in4,in5,in6,in7,in8,op1,op2,op3   : in  std_logic;
    output                                        : out std_logic
  );
end eight_to_one_mux;

architecture structural of eight_to_one_mux is
signal s1,s2,s3,s4,s5,s6 : std_logic;
begin
  MUX_1: mux port map(op1,in1,in2,s1);
  MUX_2: mux port map(op1,in3,in4,s2);
  MUX_3: mux port map(op1,in5,in6,s3);
  MUX_4: mux port map(op1,in7,in8,s4);
  MUX_5: mux port map(op2,s1,s2,s5);
  MUX_6: mux port map(op2,s3,s4,s6);
  MUX_7: mux port map(op3,s5,s6,output);
end structural;


