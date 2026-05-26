module tt_um_ecc_scalar (
    input  [7:0] ui_in,
    output [7:0] uo_out,
    input  [7:0] uio_in,
    output [7:0] uio_out,
    output [7:0] uio_oe,

    input ena,
    input clk,
    input rst_n
);

    wire [3:0] Px;
    wire [3:0] k;

    reg [3:0] Qx;
    reg done;

    assign Px = ui_in[3:0];
    assign k  = ui_in[7:4];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            Qx   <= 4'b0000;
            done <= 1'b0;
        end
        else begin
            Qx   <= Px + k;
            done <= 1'b1;
        end
    end

    assign uo_out = {4'b0000, Qx};

    assign uio_out = {7'b0000000, done};

    assign uio_oe = 8'b11111111;

endmodule
