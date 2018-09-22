library verilog;
use verilog.vl_types.all;
entity counter is
    generic(
        L_COUNT         : integer := 3;
        STOP            : integer := 6
    );
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of L_COUNT : constant is 1;
    attribute mti_svvh_generic_type of STOP : constant is 1;
end counter;
