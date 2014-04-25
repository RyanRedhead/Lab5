library ieee;
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ROM_176x4 is
  port (Clock : in std_logic;
  		CS_L : in std_logic;
        R_W  : in std_logic;
        Addr   : in std_logic_vector(7 downto 0);
        Data  : out std_logic_vector(3 downto 0));
end ROM_176x4;

architecture ROM_176x4_Arch of ROM_176x4 is
  type rom_type is array (0 to 175)
        of std_logic_vector (3 downto 0);
  signal ROM : rom_type;
  signal Read_Enable : std_logic;
begin

ROM(0) <= X"7";
ROM(1) <= X"0";
ROM(2) <= X"6";
ROM(3) <= X"1";
ROM(4) <= X"4";
ROM(5) <= X"2";
ROM(6) <= X"B";
ROM(7) <= X"C";
ROM(8) <= X"0";
ROM(9) <= X"9";
ROM(10) <= X"2";
ROM(11) <= X"0";
ROM(12) <= X"7";
ROM(13) <= X"8";
ROM(14) <= X"4";
ROM(15) <= X"2";
ROM(16) <= X"6";
ROM(17) <= X"1";
ROM(18) <= X"4";
ROM(19) <= X"2";
ROM(20) <= X"F";
ROM(21) <= X"0";
ROM(22) <= X"B";
ROM(23) <= X"4";
ROM(24) <= X"2";
ROM(25) <= X"F";
ROM(26) <= X"1";
ROM(27) <= X"B";
ROM(28) <= X"6";
ROM(29) <= X"1";
ROM(30) <= X"4";
ROM(31) <= X"1";
ROM(32) <= X"D";
ROM(33) <= X"1";
ROM(34) <= X"B";
ROM(35) <= X"9";
ROM(36) <= X"0";
ROM(37) <= X"0";
ROM(38) <= X"0";
ROM(39) <= X"0";
ROM(40) <= X"0";
ROM(41) <= X"0";
ROM(42) <= X"0";
ROM(43) <= X"0";
ROM(44) <= X"0";
ROM(45) <= X"0";
ROM(46) <= X"0";
ROM(47) <= X"0";
ROM(48) <= X"0";
ROM(49) <= X"0";
ROM(50) <= X"0";
ROM(51) <= X"0";
ROM(52) <= X"0";
ROM(53) <= X"0";
ROM(54) <= X"0";
ROM(55) <= X"0";
ROM(56) <= X"0";
ROM(57) <= X"0";
ROM(58) <= X"0";
ROM(59) <= X"0";
ROM(60) <= X"0";
ROM(61) <= X"0";
ROM(62) <= X"0";
ROM(63) <= X"0";
ROM(64) <= X"0";
ROM(65) <= X"0";
ROM(66) <= X"0";
ROM(67) <= X"0";
ROM(68) <= X"0";
ROM(69) <= X"0";
ROM(70) <= X"0";
ROM(71) <= X"0";
ROM(72) <= X"0";
ROM(73) <= X"0";
ROM(74) <= X"0";
ROM(75) <= X"0";
ROM(76) <= X"0";
ROM(77) <= X"0";
ROM(78) <= X"0";
ROM(79) <= X"0";
ROM(80) <= X"0";
ROM(81) <= X"0";
ROM(82) <= X"0";
ROM(83) <= X"0";
ROM(84) <= X"0";
ROM(85) <= X"0";
ROM(86) <= X"0";
ROM(87) <= X"0";
ROM(88) <= X"0";
ROM(89) <= X"0";
ROM(90) <= X"0";
ROM(91) <= X"0";
ROM(92) <= X"0";
ROM(93) <= X"0";
ROM(94) <= X"0";
ROM(95) <= X"0";
ROM(96) <= X"0";
ROM(97) <= X"0";
ROM(98) <= X"0";
ROM(99) <= X"0";
ROM(100) <= X"0";
ROM(101) <= X"0";
ROM(102) <= X"0";
ROM(103) <= X"0";
ROM(104) <= X"0";
ROM(105) <= X"0";
ROM(106) <= X"0";
ROM(107) <= X"0";
ROM(108) <= X"0";
ROM(109) <= X"0";
ROM(110) <= X"0";
ROM(111) <= X"0";
ROM(112) <= X"0";
ROM(113) <= X"0";
ROM(114) <= X"0";
ROM(115) <= X"0";
ROM(116) <= X"0";
ROM(117) <= X"0";
ROM(118) <= X"0";
ROM(119) <= X"0";
ROM(120) <= X"0";
ROM(121) <= X"0";
ROM(122) <= X"0";
ROM(123) <= X"0";
ROM(124) <= X"0";
ROM(125) <= X"0";
ROM(126) <= X"0";
ROM(127) <= X"0";
ROM(128) <= X"0";
ROM(129) <= X"0";
ROM(130) <= X"0";
ROM(131) <= X"0";
ROM(132) <= X"0";
ROM(133) <= X"0";
ROM(134) <= X"0";
ROM(135) <= X"0";
ROM(136) <= X"0";
ROM(137) <= X"0";
ROM(138) <= X"0";
ROM(139) <= X"0";
ROM(140) <= X"0";
ROM(141) <= X"0";
ROM(142) <= X"0";
ROM(143) <= X"0";
ROM(144) <= X"0";
ROM(145) <= X"0";
ROM(146) <= X"0";
ROM(147) <= X"0";
ROM(148) <= X"0";
ROM(149) <= X"0";
ROM(150) <= X"0";
ROM(151) <= X"0";
ROM(152) <= X"0";
ROM(153) <= X"0";
ROM(154) <= X"0";
ROM(155) <= X"0";
ROM(156) <= X"0";
ROM(157) <= X"0";
ROM(158) <= X"0";
ROM(159) <= X"0";
ROM(160) <= X"0";
ROM(161) <= X"0";
ROM(162) <= X"0";
ROM(163) <= X"0";
ROM(164) <= X"0";
ROM(165) <= X"0";
ROM(166) <= X"0";
ROM(167) <= X"0";
ROM(168) <= X"0";
ROM(169) <= X"0";
ROM(170) <= X"0";
ROM(171) <= X"0";
ROM(172) <= X"0";
ROM(173) <= X"0";
ROM(174) <= X"0";
ROM(175) <= X"0";
	Read_Enable <=  '0' when(CS_L='0' and R_W = '1') else '1';

	process (Clock)
	begin
		if(Clock='0') then
			if(Read_Enable = '0') then
			  Data  <= ROM(conv_integer(Addr));
		  	else
			  Data <= "ZZZZ";
	      	end if;
		else Data <= "ZZZZ";
		end if;

	end process;

	end ROM_176x4_Arch;
