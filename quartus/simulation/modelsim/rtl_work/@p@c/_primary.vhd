library verilog;
use verilog.vl_types.all;
entity PC is
    generic(
        ini             : integer := 4
    );
    port(
        \in\            : in     vl_logic_vector(15 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0);
        incr_pc         : in     vl_logic;
        load            : in     vl_logic;
        clock           : in     vl_logic;
        resetN          : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ini : constant is 1;
end PC;
