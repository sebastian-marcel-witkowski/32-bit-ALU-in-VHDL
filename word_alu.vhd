library ieee;
use ieee.std_logic_1164.all;
use work.eecs361_gates.all;
use work.eecs361.all;

entity word_alu is
  port(
    a,b                       : in std_logic_vector(31 downto 0);
    op1,op2,op3               : in std_logic;
    result                    : out std_logic_vector(31 downto 0);
    zero, overflow, carryout  : out std_logic
  );
end word_alu;
  
architecture structural of word_alu is
  
component logical_right_shift is
  port (
    a                      : in  std_logic_vector(31 downto 0);
    b                      : in  std_logic_vector(4 downto 0);
    output                 : out std_logic_vector(31 downto 0)
  );
end component;

component zero_flag_generator is
  port (
    input   : in  std_logic_vector(31 downto 0);
    output  : out std_logic
  );
end component;

component one_bit_ALU is
  port (
    a,b,cin,op1,op2,op3,shift    : in  std_logic;
    result, carryout             : out std_logic
  );
end component;

component last_one_bit_ALU is
  port (
    a,b,op1,op2,op3,cin,shift                   : in  std_logic;
    result,set,cout_flag,overflow_flag          : out std_logic
  );
end component;

component first_one_bit_ALU is
  port (
    a,b,op1,op2,op3,less,shift   : in  std_logic;
    result,carryout        : out std_logic
  );
end component;

signal set : std_logic;
signal shifted,result_temp : std_logic_vector(31 downto 0);
signal cout : std_logic_vector (30 downto 0);

begin
  SHIFT:   logical_right_shift port map (a, b(4 downto 0), shifted);
  LSB_ALU: first_one_bit_ALU port map (a(0),b(0),op1,op2,op3,set,shifted(0),result_temp(0),cout(0));
  ALU_1:   one_bit_ALU port map (a(1),b(1),cout(0),op1,op2,op3,shifted(1),result_temp(1),cout(1));
  ALU_2:   one_bit_ALU port map (a(2),b(2),cout(1),op1,op2,op3,shifted(2),result_temp(2),cout(2));
  ALU_3:   one_bit_ALU port map (a(3),b(3),cout(2),op1,op2,op3,shifted(3),result_temp(3),cout(3));
  ALU_4:   one_bit_ALU port map (a(4),b(4),cout(3),op1,op2,op3,shifted(4),result_temp(4),cout(4));
  ALU_5:   one_bit_ALU port map (a(5),b(5),cout(4),op1,op2,op3,shifted(5),result_temp(5),cout(5));
  ALU_6:   one_bit_ALU port map (a(6),b(6),cout(5),op1,op2,op3,shifted(6),result_temp(6),cout(6));
  ALU_7:   one_bit_ALU port map (a(7),b(7),cout(6),op1,op2,op3,shifted(7),result_temp(7),cout(7));
  ALU_8:   one_bit_ALU port map (a(8),b(8),cout(7),op1,op2,op3,shifted(8),result_temp(8),cout(8));
  ALU_9:   one_bit_ALU port map (a(9),b(9),cout(8),op1,op2,op3,shifted(9),result_temp(9),cout(9));
  ALU_10:  one_bit_ALU port map (a(10),b(10),cout(9),op1,op2,op3,shifted(10),result_temp(10),cout(10));
  ALU_11:  one_bit_ALU port map (a(11),b(11),cout(10),op1,op2,op3,shifted(11),result_temp(11),cout(11));
  ALU_12:  one_bit_ALU port map (a(12),b(12),cout(11),op1,op2,op3,shifted(12),result_temp(12),cout(12));
  ALU_13:  one_bit_ALU port map (a(13),b(13),cout(12),op1,op2,op3,shifted(13),result_temp(13),cout(13));
  ALU_14:  one_bit_ALU port map (a(14),b(14),cout(13),op1,op2,op3,shifted(14),result_temp(14),cout(14));
  ALU_15:  one_bit_ALU port map (a(15),b(15),cout(14),op1,op2,op3,shifted(15),result_temp(15),cout(15));
  ALU_16:  one_bit_ALU port map (a(16),b(16),cout(15),op1,op2,op3,shifted(16),result_temp(16),cout(16));
  ALU_17:  one_bit_ALU port map (a(17),b(17),cout(16),op1,op2,op3,shifted(17),result_temp(17),cout(17));
  ALU_18:  one_bit_ALU port map (a(18),b(18),cout(17),op1,op2,op3,shifted(18),result_temp(18),cout(18));
  ALU_19:  one_bit_ALU port map (a(19),b(19),cout(18),op1,op2,op3,shifted(19),result_temp(19),cout(19));
  ALU_20:  one_bit_ALU port map (a(20),b(20),cout(19),op1,op2,op3,shifted(20),result_temp(20),cout(20));
  ALU_21:  one_bit_ALU port map (a(21),b(21),cout(20),op1,op2,op3,shifted(21),result_temp(21),cout(21));
  ALU_22:  one_bit_ALU port map (a(22),b(22),cout(21),op1,op2,op3,shifted(22),result_temp(22),cout(22));
  ALU_23:  one_bit_ALU port map (a(23),b(23),cout(22),op1,op2,op3,shifted(23),result_temp(23),cout(23));
  ALU_24:  one_bit_ALU port map (a(24),b(24),cout(23),op1,op2,op3,shifted(24),result_temp(24),cout(24));
  ALU_25:  one_bit_ALU port map (a(25),b(25),cout(24),op1,op2,op3,shifted(25),result_temp(25),cout(25));
  ALU_26:  one_bit_ALU port map (a(26),b(26),cout(25),op1,op2,op3,shifted(26),result_temp(26),cout(26));
  ALU_27:  one_bit_ALU port map (a(27),b(27),cout(26),op1,op2,op3,shifted(27),result_temp(27),cout(27));
  ALU_28:  one_bit_ALU port map (a(28),b(28),cout(27),op1,op2,op3,shifted(28),result_temp(28),cout(28));
  ALU_29:  one_bit_ALU port map (a(29),b(29),cout(28),op1,op2,op3,shifted(29),result_temp(29),cout(29));
  ALU_30:  one_bit_ALU port map (a(30),b(30),cout(29),op1,op2,op3,shifted(30),result_temp(30),cout(30));
  MSB_ALU: last_one_bit_alu port map (a(31),b(31),op1,op2,op3,cout(30),shifted(31),result_temp(31),set,carryout,overflow);
  ZERO_0:    zero_flag_generator port map (result_temp(31 downto 0),zero);
  result <= result_temp;

    
end structural;