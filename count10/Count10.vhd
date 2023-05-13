library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Count10 is
	port( clk: in std_logic;
			q:out std_logic_vector(9 downto 0));
end entity;

architecture dataflow of Count8 is
signal tem : std_logic_vector(9 downto 0);
begin
	process(clk)
	begin
		if clk'event and clk='1' then
			tem <= tem + 1;
		end if;
	end process;
	q <= tem;
end dataflow;
		