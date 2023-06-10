library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Digit is
	port(
		Digit4:in std_logic_vector(3 downto 0);
		Light6:out std_logic_vector(6 downto 0)
		);
end Digit;

architecture d of digit is
begin
	process(Digit4)
	begin
		case Digit4 is
			when "0000"=>Light6<="1111110";
			when "0001"=>Light6<="0110000";
			when "0010"=>Light6<="1101101";
			when "0011"=>Light6<="1111001";
			when "0100"=>Light6<="0110011";
			when "0101"=>Light6<="1011011";
			when "0110"=>Light6<="1011111";
			when "0111"=>Light6<="1110000";
			when "1000"=>Light6<="1111111";
			when "1001"=>Light6<="1111011";
			when "1010"=>Light6<="1110111";
			when "1011"=>Light6<="0011111";
			when "1100"=>Light6<="1001110";
			when "1101"=>Light6<="0111101";
			when "1110"=>Light6<="1001111";
			when "1111"=>Light6<="1000111";
			when others=>Light6<="0000000";	
		end case;
	end process;
end d;