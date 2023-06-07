library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Cnt10 is
	port(
		clk, Rd: in std_logic;
		Digit:out std_logic_vector(3 downto 0)
	);
end Cnt10;

architecture asy10 of Cnt10 is
	component DTrigger
		port(
			D, CP, Rd, Sd: in std_logic;
			Q: out std_logic:='0';
			nQ: out std_logic:='1'
		);
	end component;
	signal D, nQ, Q: std_logic_vector(3 downto 0);
	signal tmpl, tmp2: std_logic;
begin
	labe10: for i in 0 to 3 generate
		Di:DTrigger port map(D(i),clk,Rd,'1',Q(i),nQ(i));
	end generate labe10;
	D(0)<=nQ(0);
	D(1)<=(nQ(0) xor nQ(1)) and (Q(0) nand Q(3));
	D(2)<=((not Q(0)) or (not Q(1))) xnor Q(2);
	D(3)<=((not ((nQ(0) or nQ(1) or nQ(2)))) xnor nQ(3)) and (Q(0) nand Q(3));
	Digit<=Q;
end asy10;