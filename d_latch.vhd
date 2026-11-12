library ieee;
use ieee.std_logic_1164.all;

entity d_latch is
    port (
        d   : in  std_logic;
        en  : in  std_logic;
        q   : out std_logic;
        q_n : out std_logic
    );
end entity d_latch;

architecture rtl of d_latch is
    signal stored : std_logic;
begin
    latch_d : process(d, en)
    begin
        if en = '1' then
            stored <= d;
        end if;
    end process;

    q   <= stored;
    q_n <= not stored;
end architecture rtl;
