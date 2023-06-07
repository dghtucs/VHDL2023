library ieee;
use ieee.std_logic_1164.all;

entity Learn is
	port(
		A ,B :in std_logic;
		Y : out std_logic
	);
end Learn;


architecture move of Learn is
begin
	Y <= A and B;
end move;
