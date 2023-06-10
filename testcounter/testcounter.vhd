library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testcounter is
    port (
        clk: in std_logic;
        rst: in std_logic;
		  carmode: out std_logic;
		  personmode:out std_logic;
        car: out std_logic_vector(3 downto 0);
        person: out std_logic_vector(3 downto 0)
    );
end testcounter;

architecture a of testcounter is
    signal CountCar: integer range 0 to 9 := 9;
	 signal CountPerson: integer range 0 to 3 := 3;
	 signal c:std_logic:='1';
	 signal p:std_logic:='0';
    
    
begin
	
    process(clk)
    begin
			if rst = '1' then
                CountCar <= 9;
					 CountPerson <= 0;
					 c <= '1';
					 p <= '0';
         if rising_edge(clk) then
                if CountCar = 0 then
                    Count <= 0;
                else
                    Count <= Count - 1;
                end if;
            end if;
        end if;
    end process;
    
    car <= std_logic_vector(to_unsigned(CountCar, 4));
    person <= std_logic_vector(to_unsigned(CountPerson, 4));
	carmode<=c;
	personmode<=p;
	
        
end a;
