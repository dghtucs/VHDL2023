library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity Adder is
	port(
			a,b:in std_logic_vector(3 downto 0);
			rst,cin:in std_logic;
			f:out std_logic_vector(3 downto 0) ;
			mode:out std_logic_vector(1 downto 0);
			cout:out std_logic
);
end Adder;



architecture dataflow of Adder is
	component FA1
		port(
			a,b:in std_logic_vector(3 downto 0);
			cin:in std_logic;
			f:out std_logic_vector(3 downto 0);
			cout:out std_logic
);
	end component;

	component FA2
		port(
			a,b:in std_logic_vector(3 downto 0);
			cin:in std_logic;
			f:out std_logic_vector(3 downto 0);
			cout:out std_logic
);
	end component;
	
	component FA3
		port(
			a,b:in std_logic_vector(3 downto 0);
			cin:in std_logic;
			f:out std_logic_vector(3 downto 0) ;
			cout:out std_logic
);
	end component;

	signal f1,f2,f3:std_logic_vector(3 downto 0);
	signal cout1,cout2,cout3:std_logic;


	signal imode:std_logic_vector(1 downto 0) :="00";
	
begin
	fAdder1:FA1 port map(a,b,cin,f1,cout1);
	fAdder2:FA2 port map(a,b,cin,f2,cout2);
	fAdder3:FA3 port map(a,b,cin,f3,cout3);

	process(rst)
	begin
		if(rst'event and rst='1') then
			if(imode ="11") then
				imode<="00";
			else
				imode<=imode+1;
			end if;
		end if;
	end process;
	process(imode)
	begin
		mode<=imode;
	end process;

	process(imode,f1,f2,f3,cout1,cout2,cout3)
	begin
		if(imode(1)='0')then
			if (imode(0)='0') then
				f<=f1;
				cout<=cout1;
			else
				f<=f2;
				cout<=cout2;
			end if;
		else
			f<=f3;
			cout<=cout3;
		end if;
	end process;
end dataflow;
