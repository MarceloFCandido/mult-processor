library verilog;
use verilog.vl_types.all;
entity ASreg is
    port(
        in1             : in     vl_logic_vector(15 downto 0);
        in2             : in     vl_logic_vector(15 downto 0);
        clock           : in     vl_logic;
        write1          : in     vl_logic;
        write2          : in     vl_logic;
        write3          : in     vl_logic;
        write4          : in     vl_logic;
        ctrl            : in     vl_logic_vector(2 downto 0);
        out4            : out    vl_logic_vector(15 downto 0)
    );
end ASreg;
