library verilog;
use verilog.vl_types.all;
entity decodificaReg is
    port(
        W               : in     vl_logic_vector(2 downto 0);
        En              : in     vl_logic;
        Y               : out    vl_logic_vector(7 downto 0)
    );
end decodificaReg;
