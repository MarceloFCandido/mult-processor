library verilog;
use verilog.vl_types.all;
entity regW is
    port(
        \out\           : out    vl_logic;
        write           : in     vl_logic;
        clock           : in     vl_logic
    );
end regW;
