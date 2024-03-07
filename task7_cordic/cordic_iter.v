module cordic_iter #(  
    parameter FRAC_BITS = 20,
    parameter ITERATION = 0,
    parameter ANGLE = 0
)

(
    input  wire signed     [FRAC_BITS+1:0] x_in,
    input  wire signed     [FRAC_BITS+1:0] y_in,
    input  wire signed     [FRAC_BITS+1:0] z_in,
    output  reg signed     [FRAC_BITS+1:0] x_out,
    output  reg signed     [FRAC_BITS+1:0] y_out,
    output  reg signed     [FRAC_BITS+1:0] z_out
);

always @(*)
begin
    if (z_in > 0) begin
        x_out = x_in + (y_in >>> ITERATION);
        y_out = y_in - (x_in >>> ITERATION);
        z_out = z_in - ANGLE;
    end
    else begin
        x_out = x_in - (y_in >>> ITERATION);
        y_out = y_in + (x_in >>> ITERATION);
        z_out = z_in + ANGLE;
    end
end


endmodule