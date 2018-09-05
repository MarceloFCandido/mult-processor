library verilog;
use verilog.vl_types.all;
entity reg16bits is
    port(
        \in\            : in     vl_logic_vector(15 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0);
        write           : in     vl_logic;
        clock           : in     vl_logic
    );
end reg16bits;
