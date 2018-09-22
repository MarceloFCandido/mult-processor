library verilog;
use verilog.vl_types.all;
entity processor is
    port(
        DIN             : in     vl_logic_vector(15 downto 0);
        resetN          : in     vl_logic;
        clock           : in     vl_logic;
        run             : in     vl_logic;
        done            : out    vl_logic;
        ADDR            : out    vl_logic_vector(15 downto 0);
        DOUT            : out    vl_logic_vector(15 downto 0);
        W               : out    vl_logic
    );
end processor;
