library verilog;
use verilog.vl_types.all;
entity reg16bitsP is
    generic(
        ini             : integer := 0
    );
    port(
        \in\            : in     vl_logic_vector(15 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0);
        write           : in     vl_logic;
        clock           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ini : constant is 1;
end reg16bitsP;
