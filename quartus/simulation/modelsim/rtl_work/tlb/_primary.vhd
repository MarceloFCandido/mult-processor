library verilog;
use verilog.vl_types.all;
entity tlb is
    port(
        clock           : in     vl_logic;
        addr            : in     vl_logic_vector(15 downto 0);
        physical_addr   : out    vl_logic_vector(5 downto 0)
    );
end tlb;
