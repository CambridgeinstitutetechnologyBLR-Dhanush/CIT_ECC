import cocotb
from cocotb.triggers import Timer
from cocotb.clock import Clock


@cocotb.test()
async def test_ecc_scalar(dut):

    # Start clock
    clock = Clock(dut.clk, 10, units="ns")
    cocotb.start_soon(clock.start())

    # Reset
    dut.rst_n.value = 0
    dut.ui_in.value = 0

    await Timer(20, units="ns")

    dut.rst_n.value = 1

    # -------------------------------------------------
    # INPUT FORMAT
    # ui_in[3:0] = Px
    # ui_in[7:4] = k
    # -------------------------------------------------

    # Example:
    # Px = 3
    # k  = 5
    # Qx = 8

    dut.ui_in.value = 0b01010011

    await Timer(50, units="ns")

    qx = dut.uo_out.value.integer & 0x0F

    assert qx == 8, f"ECC Scalar Multiplication Failed: Expected 8 Got {qx}"

    print("===================================")
    print("ECC Scalar Multiplication PASSED")
    print("Px = 3")
    print("k  = 5")
    print("Qx = 8")
    print("===================================")
