library verilog;
use verilog.vl_types.all;
entity multiplexador is
    port(
        Dado            : in     vl_logic_vector(15 downto 0);
        reg0            : in     vl_logic_vector(15 downto 0);
        reg1            : in     vl_logic_vector(15 downto 0);
        reg2            : in     vl_logic_vector(15 downto 0);
        reg3            : in     vl_logic_vector(15 downto 0);
        reg4            : in     vl_logic_vector(15 downto 0);
        reg5            : in     vl_logic_vector(15 downto 0);
        reg6            : in     vl_logic_vector(15 downto 0);
        reg7            : in     vl_logic_vector(15 downto 0);
        G               : in     vl_logic_vector(15 downto 0);
        controlReg      : in     vl_logic_vector(7 downto 0);
        Gout            : in     vl_logic;
        Din             : in     vl_logic;
        saida           : out    vl_logic_vector(15 downto 0)
    );
end multiplexador;
