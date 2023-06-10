library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Stopwatch is
	port(
		clk, rst, pau: in std_logic;
		H, L: out std_logic_vector(6 downto 0)
	);
end Stopwatch;

architecture watch of Stopwatch is
	component Counter
		port (
			clk, rst:in std_logic;
			H, L: out std_logic_vector(6 downto 0)
		);
	end component;

	signal clk_in: std_logic:='0';
	signal cnt: integer:= 0;
begin

	Count:Counter port map(clk=>clk_in,rst=>rst,H=>H,L=>L); 
	process(pau, clk, rst)
	begin
		if(rst='1')then
			cnt<=0;
			clk_in<='0';
		elsif (clk'event and clk='1' and pau='0') then
			if (cnt = 1000000) then
				cnt<=0;
				clk_in<='1';
			elsif (cnt = 500000) then
				cnt<=cnt+1;
				clk_in<='0';
			else
				cnt<=cnt+1;
			end if;
		end if;
	end process;
end watch;