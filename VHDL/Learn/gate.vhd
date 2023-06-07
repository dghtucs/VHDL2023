library ieee;
use ieee.std_logic_1164.all;


-- 这是一个简单的门电路
-- 定义输入信号A, B和输出信号Y
entity gate is
    port (
        A, B : in std_logic; -- 表示信号A和B是输入端口
        Y    : out std_logic -- 表示信号Y是输出端口
    );
end gate;

architecture Behavioral of gate is
begin
    Y <= A and B; -- 通过 and 端口将信号A和B相与，输出到端口Y
end Behavioral;
