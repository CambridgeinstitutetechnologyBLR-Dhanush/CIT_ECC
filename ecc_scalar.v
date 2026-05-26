`default_nettype none

module tt_um_ecc_scalar (

    input  wire [7:0] ui_in,
    output wire [7:0] uo_out,

    input  wire [7:0] uio_in,
    output wire [7:0] uio_out,
    output wire [7:0] uio_oe,

    input  wire       ena,
    input  wire       clk,
    input  wire       rst_n
);

    // ------------------------------------------------------------
    // INPUT MAPPING
    // ------------------------------------------------------------
    // ui_in[3:0] = Px
    // ui_in[7:4] = k

    wire [3:0] Px;
    wire [3:0] k;

    assign Px = ui_in[3:0];
    assign k  = ui_in[7:4];

    // ------------------------------------------------------------
    // ECC-LIKE SCALAR COMPUTATION
    // Simplified:
    // Q = Px + k
    // ------------------------------------------------------------

    reg [3:0] Qx;
    reg done;

    always @(posedge clk) begin

        if(!rst_n) begin
            Qx   <= 4'b0000;
            done <= 1'b0;
        end

        else begin
            Qx   <= Px + k;
            done <= 1'b1;
        end
    end

    // ------------------------------------------------------------
    // OUTPUTS
    // ------------------------------------------------------------

    assign uo_out  = {4'b0000, Qx};

    assign uio_out = {7'b0000000, done};

    assign uio_oe  = 8'b00000001;

    // unused pins suppression

    wire _unused = &{ena, clk, uio_in};

endmodule
