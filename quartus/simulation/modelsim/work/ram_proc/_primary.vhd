library verilog;
use verilog.vl_types.all;
entity ram_proc is
    port(
        addr            : in     vl_logic_vector(5 downto 0);
        clock           : in     vl_logic;
        resetN          : in     vl_logic;
        run             : in     vl_logic;
        busWires        : out    vl_logic_vector(15 downto 0);
        done            : out    vl_logic
    );
end ram_proc;
