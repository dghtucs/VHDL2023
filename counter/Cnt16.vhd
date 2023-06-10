library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity Cnt16 is
    port(
        clk, Rd: in std_logic;
        Digit: out std_logic_vector(3 downto 0)
    );
end Cnt16;

architecture asy16 of Cnt16 is
    component DTrigger
        port(
            D, CP, Rd, Sd: in std_logic;
            Q: out std_logic:='0';
            nQ: out std_logic:='1'
        );
    end component;
    signal D, nQ, Q: std_logic_vector(3 downto 0);
begin
    labe16: for i in 0 to 3 generate
        Di:DTrigger port map(D(i),clk,Rd,'1',Q(i),nQ(i));
    end generate labe16;
    D(0) <= nQ(0);
    D(1) <= nQ(0) xor nQ(1);
    D(2) <= (not Q(0) and not Q(1)) xor Q(2);
    D(3) <= (not nQ(0) and not nQ(1) and not nQ(2)) xor nQ(3);
    Digit <= Q;
end asy16;
