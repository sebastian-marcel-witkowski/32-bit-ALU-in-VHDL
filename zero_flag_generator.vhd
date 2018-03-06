library ieee;
use ieee.std_logic_1164.all;
use work.eecs361_gates.all;

entity zero_flag_generator is
  port (
    input   : in  std_logic_vector(31 downto 0);
    output  : out std_logic
  );
end zero_flag_generator;

architecture structural of zero_flag_generator is

signal temp : std_logic_vector(30 downto 0);

begin
  OR_1:  or_gate port map (input(0),input(1),temp(0));
  OR_2:  or_gate port map (temp(0),input(2),temp(1));
  OR_3:  or_gate port map (temp(1),input(3),temp(2));
  OR_4:  or_gate port map (temp(2),input(4),temp(3));
  OR_5:  or_gate port map (temp(3),input(5),temp(4));
  OR_6:  or_gate port map (temp(4),input(6),temp(5));
  OR_7:  or_gate port map (temp(5),input(7),temp(6));
  OR_8:  or_gate port map (temp(6),input(8),temp(7));
  OR_9:  or_gate port map (temp(7),input(9),temp(8));
  OR_10: or_gate port map (temp(8),input(10),temp(9));
  OR_11: or_gate port map (temp(9),input(11),temp(10));
  OR_12: or_gate port map (temp(10),input(12),temp(11));
  OR_13: or_gate port map (temp(11),input(13),temp(12));
  OR_14: or_gate port map (temp(12),input(14),temp(13));
  OR_15: or_gate port map (temp(13),input(15),temp(14));
  OR_16: or_gate port map (temp(14),input(16),temp(15));
  OR_17: or_gate port map (temp(15),input(17),temp(16));
  OR_18: or_gate port map (temp(16),input(18),temp(17));
  OR_19: or_gate port map (temp(17),input(19),temp(18));
  OR_20: or_gate port map (temp(18),input(20),temp(19));
  OR_21: or_gate port map (temp(19),input(21),temp(20));
  OR_22: or_gate port map (temp(20),input(22),temp(21));
  OR_23: or_gate port map (temp(21),input(23),temp(22));
  OR_24: or_gate port map (temp(22),input(24),temp(23));
  OR_25: or_gate port map (temp(23),input(25),temp(24));
  OR_26: or_gate port map (temp(24),input(26),temp(25));
  OR_27: or_gate port map (temp(25),input(27),temp(26));
  OR_28: or_gate port map (temp(26),input(28),temp(27));
  OR_29: or_gate port map (temp(27),input(29),temp(28));
  OR_30: or_gate port map (temp(28),input(30),temp(29));
  OR_31: or_gate port map (temp(29),input(31),temp(30));
  NOT_1: not_gate port map (temp(30),output);
end structural;