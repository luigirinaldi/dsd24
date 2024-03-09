module cordic_iter #(  
    parameter FRAC_BITS = 'd20,
    parameter ITERATION = 'd0
    // parameter ANGLE = 22'hc90fd
)

(
    input  wire signed     [FRAC_BITS+1:0] angle,
    input  wire signed     [FRAC_BITS+1:0] x_in,
    input  wire signed     [FRAC_BITS+1:0] y_in,
    input  wire signed     [FRAC_BITS+1:0] z_in,
    output  reg signed     [FRAC_BITS+1:0] x_out,
    output  reg signed     [FRAC_BITS+1:0] y_out,
    output  reg signed     [FRAC_BITS+1:0] z_out
);

// initial begin
//    $display("f:%d i:%d a:%x", FRAC_BITS,ITERATION,angle);
// end

always @(*)
begin
    if (z_in > 0) begin
        x_out = x_in + (y_in >>> ITERATION);
        y_out = y_in - (x_in >>> ITERATION);
        z_out = z_in - angle;
    end
    else begin
        x_out = x_in - (y_in >>> ITERATION);
        y_out = y_in + (x_in >>> ITERATION);
        z_out = z_in + angle;
    end
end


endmodule