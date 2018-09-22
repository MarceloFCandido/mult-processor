library verilog;
use verilog.vl_types.all;
entity IR is
    port(
        \in\            : in     vl_logic_vector(9 downto 0);
        \out\           : out    vl_logic_vector(9 downto 0);
        write           : in     vl_logic;
        clock           : in     vl_logic
    );
end IR;
