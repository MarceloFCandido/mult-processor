library verilog;
use verilog.vl_types.all;
entity ram_proc is
    port(
        clock           : in     vl_logic;
        resetN          : in     vl_logic;
        run             : in     vl_logic;
        done            : out    vl_logic
    );
end ram_proc;
