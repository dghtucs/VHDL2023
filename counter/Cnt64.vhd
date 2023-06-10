library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity Cnt64 is
    port(
        clk, rst: in std_logic;
        DigitL, DigitH:out std_logic_vector(3 downto 0)
    );
end Cnt64;


architecture asy64 of Cnt64 is
    component Cnt16
        port(
            clk, Rd: in std_logic;
            Digit: out std_logic_vector(3 downto 0)
        );
    end component;
    component Cnt4
        port(
            clk, Rd, v:in std_logic;
            Digit: out std_logic_vector(1 downto 0)
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
    CL:Cnt16 port map(clk, Rd,QL);
    CH:Cnt4 port map(clk,Rd, QH);
    Dv:DTrigger port map(D=>D,CP=>clk,Rd=>Rd,Sd=>'1',Q=>V);
    Rd <= not rst;
    D <= '1' when QL = "1111" else '0';
    DigitL<=QL;
    DigitH<=QH;
end asy64;
