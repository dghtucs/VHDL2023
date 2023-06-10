library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Counter is
	port(
		clk, rst: in std_logic;
		H, L:out std_logic_vector(6 downto 0)
);
end Counter;

architecture Count of Counter is
	component Digit
		port(
			Digit4: in std_logic_vector(3 downto 0);
			Light6: out std_logic_vector(6 downto 0)
		);
	end component;

	component Cnt64
		port(
			clk, rst: in std_logic;
			DigitH, DigitL: out std_logic_vector(3 downto 0));
	end component;
	signal DigitH, DigitL: std_logic_vector(3 downto 0);
begin
	cnt: Cnt64 port map(clk,rst, DigitH, DigitL);
	digL: Digit port map(DigitH,H);
	digH: Digit port map(DigitL,L);
end Count;