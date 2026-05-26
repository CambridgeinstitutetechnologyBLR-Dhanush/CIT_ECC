`timescale 1ns/1ps

module tb;

reg [7:0] ui_in;
wire [7:0] uo_out;

reg [7:0] uio_in;
wire [7:0] uio_out;
wire [7:0] uio_oe;

reg ena;
reg clk;
reg rst_n;

tt_um_ecc_scalar dut (
    .ui_in(ui_in),
    .uo_out(uo_out),
    .uio_in(uio_in),
    .uio_out(uio_out),
    .uio_oe(uio_oe),
    .ena(ena),
    .clk(clk),
    .rst_n(rst_n)
);

always #5 clk = ~clk;

initial begin

    $dumpfile("tb.vcd");
    $dumpvars(0, tb);

    clk = 0;
    rst_n = 0;
    ena = 1;

    ui_in = 8'h00;
    uio_in = 8'h00;

    #20;

    rst_n = 1;

    ui_in = 8'h05;

    #100;

    $finish;

end

endmodule