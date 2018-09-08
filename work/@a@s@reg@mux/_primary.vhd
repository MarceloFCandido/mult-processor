library verilog;
use verilog.vl_types.all;
entity ASRegMux is
    port(
        in1             : in     vl_logic_vector(15 downto 0);
        in2             : in     vl_logic_vector(15 downto 0);
        clock           : in     vl_logic;
        write1          : in     vl_logic;
        write2          : in     vl_logic;
        writeA          : in     vl_logic;
        writeG          : in     vl_logic;
        sigG            : in     vl_logic;
        sigDIN          : in     vl_logic;
        ctrlMux         : in     vl_logic_vector(7 downto 0);
        ctrlULA         : in     vl_logic_vector(2 downto 0)
    );
end ASRegMux;
