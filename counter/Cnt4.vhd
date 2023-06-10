library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity Cnt4 is
    port(
        clk, Rd: in std_logic;
        Digit: out std_logic_vector(1 downto 0)
    );
end Cnt4;

architecture asy4 of Cnt4 is
    component DTrigger
        port(
            D, CP, Rd, Sd: in std_logic;
            Q: out std_logic:='0';
            nQ: out std_logic:='1'
        );
    end component;
    signal D, nQ, Q: std_logic_vector(1 downto 0);
begin
    labe4: for i in 0 to 1 generate
        Di:DTrigger port map(D(i),clk,Rd,'1',Q(i),nQ(i));
    end generate labe4;
    D(0) <= nQ(0);
    D(1) <= nQ(0) xor nQ(1);
    Digit <= Q;
end asy4;
