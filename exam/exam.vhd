-- 引用必要
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

-- 实体声明
entity exam is
    Port ( 
        -- 定义你的输入和输出端口
        -- 示例：
        -- input1 : in STD_LOGIC;
        -- output1 : out STD_LOGIC
		  input:in std_logic
    );
end exam;

-- 架构声明
architecture Behavioral of exam is

    -- 定义内部信号
    -- 示例：
    -- signal internalSignal : STD_LOGIC;

begin

    -- 描述你的硬件行为
    -- 示例：
    -- output1 <= input1 and internalSignal;

    -- 你也可以定义进程
    -- process(input1, internalSignal)
    -- begin
    --     -- 描述进程内部行为
    -- end process;

end Behavioral;
