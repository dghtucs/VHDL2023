library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Cnt60 is
    port(
        clk, rst: in std_logic;
        DigitL, DigitH:out std_logic_vector(3 downto 0)
    );
end Cnt60;

architecture asy60 of Cnt60 is
    component Cnt10
        port(
            clk, Rd: in std_logic;
            Digit: out std_logic_vector(3 downto 0)
        );
    end component;
    component Cnt6
        port(
            clk, Rd, v:in std_logic;
            Digit: out std_logic_vector(3 downto 0)
        );
    end component;
    component DTrigger
        port (
            D, CP, Rd, Sd: in std_logic;
            Q:out std_logic:='0';
            nQ:out std_logic:='1'
        );
    end component;
    signal D, v, Rd: std_logic;
    signal QL,QH:std_logic_vector(3 downto 0);
begin
    CL:Cnt10 port map(clk, Rd,QL);
    CH:Cnt6 port map(clk,Rd,v, QH);
    Dv:DTrigger port map(D=>D,CP=>clk,Rd=>Rd,Sd=>'1',Q=>V);
    Rd <= not rst;
    D<=(QL(3)and (not QL(2))) and ((not QL(1)) and (not QL(0)));
	 DigitL<=QL;
	 DigitH<=QH;
	 
end asy60;
