library ieee;
use ieee.std_logic_1164.all;

entity rs_latch is
    port (
        s   : in  std_logic;
        r   : in  std_logic;
        q   : out std_logic;
        q_n : out std_logic
    );
end entity rs_latch;

architecture nor_gates of rs_latch is
    signal q_feedback   : std_logic;
    signal q_n_feedback : std_logic;
begin
    q_feedback   <= r nor q_n_feedback;
    q_n_feedback <= s nor q_feedback;

    q   <= q_feedback;
    q_n <= q_n_feedback;
end architecture nor_gates;
