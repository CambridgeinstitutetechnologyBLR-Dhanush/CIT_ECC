TOP_MODULE = tt_um_ecc_scalar
TB_MODULE  = tb

IVERILOG = iverilog
VVP      = vvp

SRC = tt_um_ecc_scalar.v
TB  = tb.v

all: sim

sim:
	$(IVERILOG) -o sim.out $(SRC) $(TB)
	$(VVP) sim.out

wave:
	gtkwave tb.vcd tb.gtkw

clean:
	rm -f sim.out
	rm -f tb.vcd
