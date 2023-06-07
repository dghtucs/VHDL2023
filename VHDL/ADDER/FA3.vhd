library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity FA3 is
	port (
		a,b:in std_logic_vector(3 downto 0);
		cin:in std_logic;
		f:out std_logic_vector(3 downto 0);
		cout:out std_logic
);
end FA3;

architecture plus of FA3 is
	signal buf:std_logic_vector(4 downto 0);
begin
	process(a,b,cin)
	begin
		buf<="00000"+a+b+cin;
	end process;
	process(buf)
	begin
		cout<=buf(4);
		f<=buf(3 downto 0);
	end process;
end plus;