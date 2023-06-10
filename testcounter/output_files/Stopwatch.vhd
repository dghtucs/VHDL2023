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
	component testcounter
		port (
			clk, rst:in std_logic;
			Light6_digit1 : out std_logic_vector(6 downto 0);  -- for first digit
         Light6_digit2 : out std_logic_vector(6 downto 0)  -- for second digit
		);
	end component;

	signal clk_in: std_logic:='0';
	signal cnt: integer:= 0;
begin

	Count:testcounter port map(clk=>clk_in,rst=>rst,Light6_digit1=>Light6_digit1,Light6_digit2=>Light6_digit2); 
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