library ieee;
use ieee.std_logic_1164.all;
use work.eecs361_gates.all;
use work.eecs361.all;

entity logical_right_shift is
  port (
    a                      : in  std_logic_vector(31 downto 0);
    b                      : in  std_logic_vector(4 downto 0);
    output                 : out std_logic_vector(31 downto 0)
  );
      
end logical_right_shift;

architecture structural of logical_right_shift is
  signal mux1 : std_logic_vector (128 downto 1);
begin
  MUX_1: mux port map (b(4),a(31),'0',mux1(1));
  MUX_2: mux port map (b(4),a(30),'0',mux1(2));
  MUX_3: mux port map (b(4),a(29),'0',mux1(3));
  MUX_4: mux port map (b(4),a(28),'0',mux1(4));
  MUX_5: mux port map (b(4),a(27),'0',mux1(5));
  MUX_6: mux port map (b(4),a(26),'0',mux1(6));
  MUX_7: mux port map (b(4),a(25),'0',mux1(7));
  MUX_8: mux port map (b(4),a(24),'0',mux1(8));
  MUX_9: mux port map (b(4),a(23),'0',mux1(9));
  MUX_10: mux port map (b(4),a(22),'0',mux1(10));
  MUX_11: mux port map (b(4),a(21),'0',mux1(11));
  MUX_12: mux port map (b(4),a(20),'0',mux1(12));
  MUX_13: mux port map (b(4),a(19),'0',mux1(13));
  MUX_14: mux port map (b(4),a(18),'0',mux1(14));
  MUX_15: mux port map (b(4),a(17),'0',mux1(15));
  MUX_16: mux port map (b(4),a(16),'0',mux1(16));
  MUX_17: mux port map (b(4),a(15),a(31),mux1(17));
  MUX_18: mux port map (b(4),a(14),a(30),mux1(18));
  MUX_19: mux port map (b(4),a(13),a(29),mux1(19));
  MUX_20: mux port map (b(4),a(12),a(28),mux1(20));
  MUX_21: mux port map (b(4),a(11),a(27),mux1(21));
  MUX_22: mux port map (b(4),a(10),a(26),mux1(22));
  MUX_23: mux port map (b(4),a(9),a(25),mux1(23));
  MUX_24: mux port map (b(4),a(8),a(24),mux1(24));
  MUX_25: mux port map (b(4),a(7),a(23),mux1(25));
  MUX_26: mux port map (b(4),a(6),a(22),mux1(26));
  MUX_27: mux port map (b(4),a(5),a(21),mux1(27));
  MUX_28: mux port map (b(4),a(4),a(20),mux1(28));
  MUX_29: mux port map (b(4),a(3),a(19),mux1(29));
  MUX_30: mux port map (b(4),a(2),a(18),mux1(30));
  MUX_31: mux port map (b(4),a(1),a(17),mux1(31));
  MUX_32: mux port map (b(4),a(0),a(16),mux1(32));
  --end of b(4) layer (16 bit right shift)
  MUX_33: mux port map (b(3),mux1(1),'0',mux1(33));
  MUX_34: mux port map (b(3),mux1(2),'0',mux1(34));
  MUX_35: mux port map (b(3),mux1(3),'0',mux1(35));
  MUX_36: mux port map (b(3),mux1(4),'0',mux1(36));
  MUX_37: mux port map (b(3),mux1(5),'0',mux1(37));
  MUX_38: mux port map (b(3),mux1(6),'0',mux1(38));
  MUX_39: mux port map (b(3),mux1(7),'0',mux1(39));
  MUX_40: mux port map (b(3),mux1(8),'0',mux1(40));
  MUX_41: mux port map (b(3),mux1(9),mux1(1),mux1(41));
  MUX_42: mux port map (b(3),mux1(10),mux1(2),mux1(42));
  MUX_43: mux port map (b(3),mux1(11),mux1(3),mux1(43));
  MUX_44: mux port map (b(3),mux1(12),mux1(4),mux1(44));
  MUX_45: mux port map (b(3),mux1(13),mux1(5),mux1(45));
  MUX_46: mux port map (b(3),mux1(14),mux1(6),mux1(46));
  MUX_47: mux port map (b(3),mux1(15),mux1(7),mux1(47));
  MUX_48: mux port map (b(3),mux1(16),mux1(8),mux1(48));
  MUX_49: mux port map (b(3),mux1(17),mux1(9),mux1(49));
  MUX_50: mux port map (b(3),mux1(18),mux1(10),mux1(50));
  MUX_51: mux port map (b(3),mux1(19),mux1(11),mux1(51));
  MUX_52: mux port map (b(3),mux1(20),mux1(12),mux1(52));
  MUX_53: mux port map (b(3),mux1(21),mux1(13),mux1(53));
  MUX_54: mux port map (b(3),mux1(22),mux1(14),mux1(54));
  MUX_55: mux port map (b(3),mux1(23),mux1(15),mux1(55));
  MUX_56: mux port map (b(3),mux1(24),mux1(16),mux1(56));
  MUX_57: mux port map (b(3),mux1(25),mux1(17),mux1(57));
  MUX_58: mux port map (b(3),mux1(26),mux1(18),mux1(58));
  MUX_59: mux port map (b(3),mux1(27),mux1(19),mux1(59));
  MUX_60: mux port map (b(3),mux1(28),mux1(20),mux1(60));
  MUX_61: mux port map (b(3),mux1(29),mux1(21),mux1(61));
  MUX_62: mux port map (b(3),mux1(30),mux1(22),mux1(62));
  MUX_63: mux port map (b(3),mux1(31),mux1(23),mux1(63));
  MUX_64: mux port map (b(3),mux1(32),mux1(24),mux1(64));
  --end of b(3) layer (8 bit right shift)
  MUX_65: mux port map (b(2),mux1(33),'0',mux1(65));
  MUX_66: mux port map (b(2),mux1(34),'0',mux1(66));
  MUX_67: mux port map (b(2),mux1(35),'0',mux1(67));
  MUX_68: mux port map (b(2),mux1(36),'0',mux1(68));
  MUX_69: mux port map (b(2),mux1(37),mux1(33),mux1(69));
  MUX_70: mux port map (b(2),mux1(38),mux1(34),mux1(70));
  MUX_71: mux port map (b(2),mux1(39),mux1(35),mux1(71));
  MUX_72: mux port map (b(2),mux1(40),mux1(36),mux1(72));
  MUX_73: mux port map (b(2),mux1(41),mux1(37),mux1(73));
  MUX_74: mux port map (b(2),mux1(42),mux1(38),mux1(74));
  MUX_75: mux port map (b(2),mux1(43),mux1(39),mux1(75));
  MUX_76: mux port map (b(2),mux1(44),mux1(40),mux1(76));
  MUX_77: mux port map (b(2),mux1(45),mux1(41),mux1(77));
  MUX_78: mux port map (b(2),mux1(46),mux1(42),mux1(78));
  MUX_79: mux port map (b(2),mux1(47),mux1(43),mux1(79));
  MUX_80: mux port map (b(2),mux1(48),mux1(44),mux1(80));
  MUX_81: mux port map (b(2),mux1(49),mux1(45),mux1(81));
  MUX_82: mux port map (b(2),mux1(50),mux1(46),mux1(82));
  MUX_83: mux port map (b(2),mux1(51),mux1(47),mux1(83));
  MUX_84: mux port map (b(2),mux1(52),mux1(48),mux1(84));
  MUX_85: mux port map (b(2),mux1(53),mux1(49),mux1(85));
  MUX_86: mux port map (b(2),mux1(54),mux1(50),mux1(86));
  MUX_87: mux port map (b(2),mux1(55),mux1(51),mux1(87));
  MUX_88: mux port map (b(2),mux1(56),mux1(52),mux1(88));
  MUX_89: mux port map (b(2),mux1(57),mux1(53),mux1(89));
  MUX_90: mux port map (b(2),mux1(58),mux1(54),mux1(90));
  MUX_91: mux port map (b(2),mux1(59),mux1(55),mux1(91));
  MUX_92: mux port map (b(2),mux1(60),mux1(56),mux1(92));
  MUX_93: mux port map (b(2),mux1(61),mux1(57),mux1(93));
  MUX_94: mux port map (b(2),mux1(62),mux1(58),mux1(94));
  MUX_95: mux port map (b(2),mux1(63),mux1(59),mux1(95));
  MUX_96: mux port map (b(2),mux1(64),mux1(60),mux1(96));
  --end of b(2) layer (4 bit right shift)
  MUX_97: mux port map (b(1),mux1(65),'0',mux1(97));
  MUX_98: mux port map (b(1),mux1(66),'0',mux1(98));
  MUX_99: mux port map (b(1),mux1(67),mux1(65),mux1(99));
  MUX_100: mux port map (b(1),mux1(68),mux1(66),mux1(100));
  MUX_101: mux port map (b(1),mux1(69),mux1(67),mux1(101));
  MUX_102: mux port map (b(1),mux1(70),mux1(68),mux1(102));
  MUX_103: mux port map (b(1),mux1(71),mux1(69),mux1(103));
  MUX_104: mux port map (b(1),mux1(72),mux1(70),mux1(104));
  MUX_105: mux port map (b(1),mux1(73),mux1(71),mux1(105));
  MUX_106: mux port map (b(1),mux1(74),mux1(72),mux1(106));
  MUX_107: mux port map (b(1),mux1(75),mux1(73),mux1(107));
  MUX_108: mux port map (b(1),mux1(76),mux1(74),mux1(108));
  MUX_109: mux port map (b(1),mux1(77),mux1(75),mux1(109));
  MUX_110: mux port map (b(1),mux1(78),mux1(76),mux1(110));
  MUX_111: mux port map (b(1),mux1(79),mux1(77),mux1(111));
  MUX_112: mux port map (b(1),mux1(80),mux1(78),mux1(112));
  MUX_113: mux port map (b(1),mux1(81),mux1(79),mux1(113));
  MUX_114: mux port map (b(1),mux1(82),mux1(80),mux1(114));
  MUX_115: mux port map (b(1),mux1(83),mux1(81),mux1(115));
  MUX_116: mux port map (b(1),mux1(84),mux1(82),mux1(116));
  MUX_117: mux port map (b(1),mux1(85),mux1(83),mux1(117));
  MUX_118: mux port map (b(1),mux1(86),mux1(84),mux1(118));
  MUX_119: mux port map (b(1),mux1(87),mux1(85),mux1(119));
  MUX_120: mux port map (b(1),mux1(88),mux1(86),mux1(120));
  MUX_121: mux port map (b(1),mux1(89),mux1(87),mux1(121));
  MUX_122: mux port map (b(1),mux1(90),mux1(88),mux1(122));
  MUX_123: mux port map (b(1),mux1(91),mux1(89),mux1(123));
  MUX_124: mux port map (b(1),mux1(92),mux1(90),mux1(124));
  MUX_125: mux port map (b(1),mux1(93),mux1(91),mux1(125));
  MUX_126: mux port map (b(1),mux1(94),mux1(92),mux1(126));
  MUX_127: mux port map (b(1),mux1(95),mux1(93),mux1(127));
  MUX_128: mux port map (b(1),mux1(96),mux1(94),mux1(128));
  --end of b(1) layer (2 bit right shift)
  MUX_129: mux port map (b(0),mux1(97),'0',output(31));
  MUX_130: mux port map (b(0),mux1(98),mux1(97),output(30));
  MUX_131: mux port map (b(0),mux1(99),mux1(98),output(29));
  MUX_132: mux port map (b(0),mux1(100),mux1(99),output(28));
  MUX_133: mux port map (b(0),mux1(101),mux1(100),output(27));
  MUX_134: mux port map (b(0),mux1(102),mux1(101),output(26));
  MUX_135: mux port map (b(0),mux1(103),mux1(102),output(25));
  MUX_136: mux port map (b(0),mux1(104),mux1(103),output(24));
  MUX_137: mux port map (b(0),mux1(105),mux1(104),output(23));
  MUX_138: mux port map (b(0),mux1(106),mux1(105),output(22));
  MUX_139: mux port map (b(0),mux1(107),mux1(106),output(21));
  MUX_140: mux port map (b(0),mux1(108),mux1(107),output(20));
  MUX_141: mux port map (b(0),mux1(109),mux1(108),output(19));
  MUX_142: mux port map (b(0),mux1(110),mux1(109),output(18));
  MUX_143: mux port map (b(0),mux1(111),mux1(110),output(17));
  MUX_144: mux port map (b(0),mux1(112),mux1(111),output(16));
  MUX_145: mux port map (b(0),mux1(113),mux1(112),output(15));
  MUX_146: mux port map (b(0),mux1(114),mux1(113),output(14));
  MUX_147: mux port map (b(0),mux1(115),mux1(114),output(13));
  MUX_148: mux port map (b(0),mux1(116),mux1(115),output(12));
  MUX_149: mux port map (b(0),mux1(117),mux1(116),output(11));
  MUX_150: mux port map (b(0),mux1(118),mux1(117),output(10));
  MUX_151: mux port map (b(0),mux1(119),mux1(118),output(9));
  MUX_152: mux port map (b(0),mux1(120),mux1(119),output(8));
  MUX_153: mux port map (b(0),mux1(121),mux1(120),output(7));
  MUX_154: mux port map (b(0),mux1(122),mux1(121),output(6));
  MUX_155: mux port map (b(0),mux1(123),mux1(122),output(5));
  MUX_156: mux port map (b(0),mux1(124),mux1(123),output(4));
  MUX_157: mux port map (b(0),mux1(125),mux1(124),output(3));
  MUX_158: mux port map (b(0),mux1(126),mux1(125),output(2));
  MUX_159: mux port map (b(0),mux1(127),mux1(126),output(1));
  MUX_160: mux port map (b(0),mux1(128),mux1(127),output(0));
  --end of b(0) layer (1 bit right shift)
end structural;

















