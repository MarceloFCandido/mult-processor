library verilog;
use verilog.vl_types.all;
entity addsub is
    generic(
        L_DATA          : integer := 16
    );
    port(
        op1             : in     vl_logic_vector;
        op2             : in     vl_logic_vector;
        ctrl            : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of L_DATA : constant is 1;
end addsub;
