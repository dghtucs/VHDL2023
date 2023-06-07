library ieee;
use ieee.std_logic_1164.all;

entity And is
	port(
		a,b: in std_logic;
		y:out std_logic
		);
end And;

architecture move of And is
begin
	y <= a and b;
end move;