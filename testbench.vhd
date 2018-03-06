library ieee;
use ieee.std_logic_1164.all;
use work.eecs361_gates.all;
use work.eecs361.all;

entity word_alu_testbench is
end word_alu_testbench;

architecture behavioral of word_alu_testbench is
  component word_alu is
  port(
    a,b                       : in std_logic_vector(31 downto 0);
    op1,op2,op3               : in std_logic;
    result                    : out std_logic_vector(31 downto 0);
    zero, overflow, carryout  : out std_logic
  );
  end component;

signal a,b,result : std_logic_vector(31 downto 0);
signal op1,op2,op3, zero,overflow,carryout : std_logic;

begin
  UUT_1: word_alu port map (a,b,op1,op2,op3,result,zero,overflow,carryout);
testbench: process
begin
  a <= "00000000000000000000000000000001";
  b <= "10000000000000001111111111111111";
  op1 <= '0';
  op2 <= '0';
  op3 <= '0';
  wait for 50 ns;
  assert result = x"8000fffe" report "xor_failed" severity error;
  assert zero = '0' report "zero_failed" severity error;
  assert overflow = '0' report "overflow_failed" severity error;
  assert carryout = '0' report "carryout_failed" severity error;
  wait for 50 ns;
  op1 <= '1';
  wait for 50 ns;
  assert result = x"00000001" report "and_failed" severity error;
  assert zero = '0' report "zero_failed" severity error;
  assert overflow = '0' report "overflow_failed" severity error;
  assert carryout = '0' report "carryout_failed" severity error;
  wait for 50 ns;
  op1 <= '0';
  op2 <= '1';
  wait for 50 ns;
  assert result = x"8000ffff" report "or_failed" severity error;
  assert zero = '0' report "zero_failed" severity error;
  assert overflow = '0' report "overflow_failed" severity error;
  assert carryout = '0' report "carryout_failed" severity error;
  wait for 50 ns;
  op1 <= '1';
  wait for 50 ns;
  assert result = x"80010000" report "add_failed" severity error;
  assert zero = '0' report "zero_failed" severity error;
  assert overflow = '0' report "overflow_failed" severity error;
  assert carryout = '0' report "carryout_failed" severity error;
  wait for 50 ns;
  op1 <= '0';
  op2 <= '0';
  op3 <= '1';
  wait for 50 ns;
  assert result = x"7fff0002" report "subtract_failed" severity error;
  assert zero = '0' report "zero_failed" severity error;
  assert overflow = '0' report "overflow_failed" severity error;
  assert carryout = '0' report "carryout_failed" severity error;
  wait for 50 ns;
  op1 <= '1';
  wait for 50 ns;
  assert result = x"00000000" report "slt_failed" severity error;
  assert zero = '1' report "zero_failed" severity error;
  assert overflow = '0' report "overflow_failed" severity error;
  assert carryout = '0' report "carryout_failed" severity error;
  wait for 50 ns;
  op1 <= '0';
  op2 <= '1';
  wait for 50 ns;
  assert result = x"00000001" report "sltu_failed" severity error;
  assert zero = '0' report "zero_failed" severity error;
  assert overflow = '0' report "overflow_failed" severity error;
  assert carryout = '0' report "carryout_failed" severity error;
  wait for 50 ns;
  op1 <= '1';
  a <= "10000000000000001111111111111111";
  b <= "00000000000000000000000000010000";
  wait for 50 ns;
  assert result = x"00010000" report "srl_failed" severity error;
  assert zero = '0' report "zero_failed" severity error;
  assert overflow = '0' report "overflow_failed" severity error;
  assert carryout = '0' report "carryout_failed" severity error;
end process;
end behavioral;  