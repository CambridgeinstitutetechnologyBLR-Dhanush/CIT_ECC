`default_nettype none
`timescale 1ns/1ps

module tb ();

    reg clk;
    reg rst_n;

    reg [7:0] ui_in;
    reg [7:0] uio_in;

    wire [7:0] uo_out;
    wire [7:0] uio_out;
    wire [7:0] uio_oe;

    initial begin
        $dumpfile("tb.vcd");
        $dumpvars(0, tb);
    end

    tt_um_ecc_scalar dut (
        .ui_in(ui_in),
        .uo_out(uo_out),

        .uio_in(uio_in),
        .uio_out(uio_out),
        .uio_oe(uio_oe),

        .ena(1'b1),
        .clk(clk),
        .rst_n(rst_n)
    );

    always #5 clk = ~clk;

    initial begin

        clk = 0;
        rst_n = 0;

        ui_in = 8'b01010011;
        uio_in = 0;

        #10;

        rst_n = 1;

        #50;

        $finish;
    end

endmodule
