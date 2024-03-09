module cordic_cos #(
    parameter NUM_ITER=30,
    parameter FRAC_BITS=30
)
(
    input    wire signed [FRAC_BITS+1:0] theta_in,
    output   reg signed [FRAC_BITS+1:0] cos_out
);

reg signed [FRAC_BITS+1:0] inter_x [NUM_ITER-1:0];
reg signed [FRAC_BITS+1:0] inter_y [NUM_ITER-1:0];
reg signed [FRAC_BITS+1:0] inter_z [NUM_ITER-1:0];

reg signed [FRAC_BITS+1:0]  ANGLES [0:NUM_ITER-1] ='{32'h3243f6a8, 32'h1dac6705, 32'hfadbafc, 32'h7f56ea6, 32'h3feab76, 32'h1ffd55b, 32'hfffaaa, 32'h7fff55, 32'h3fffea, 32'h1ffffd, 32'hfffff, 32'h7ffff, 32'h3ffff, 32'h1ffff, 32'hffff, 32'h7fff, 32'h3fff, 32'h1fff, 32'hfff, 32'h7ff, 32'h3ff, 32'h1ff, 32'hff, 32'h7f, 32'h3f, 32'h1f, 32'hf, 32'h8, 32'h4, 32'h2};

localparam signed [FRAC_BITS+1:0] ANGLE_SUM = 32'h26dd3b6a;

genvar i;
generate 
    for (i = 1; i < NUM_ITER;i= i+1) begin : iter_block
        // localparam angle = $rtoi($atan(2.0**(-i))*(2.0**FRAC_BITS));
        cordic_iter #(
            .FRAC_BITS(FRAC_BITS),
            .ITERATION(i)
            ) u0 (
            .angle(ANGLES[i]),
            .x_in(inter_x[i-1]),
            .x_out(inter_x[i]),
            .y_in(inter_y[i-1]),
            .y_out(inter_y[i]),
            .z_in(inter_z[i-1]),
            .z_out(inter_z[i])
        );
    end
endgenerate

wire signed [FRAC_BITS+1:0] start_x = 'b1 << FRAC_BITS;
wire signed [FRAC_BITS+1:0] start_y = 'b0;


cordic_iter #(
    .FRAC_BITS(FRAC_BITS),
    .ITERATION(0)
    ) ustart (
    .angle(ANGLES[0]),
    .x_in(start_x),
    .x_out(inter_x[0]),
    .y_in(start_y),
    .y_out(inter_y[0]),
    .z_in(theta_in),
    .z_out(inter_z[0])
);

reg signed [(FRAC_BITS+2)*2 -1:0] mul_out;

assign mul_out = inter_x[NUM_ITER-1] * ANGLE_SUM;


assign cos_out = mul_out[(FRAC_BITS+2)*2-3:FRAC_BITS];

always @(*) begin
$display("out:%b cos: %b", mul_out,cos_out);
$display("out:%f cos: %f", $itor(mul_out)*(2.0**(-FRAC_BITS*2)),$itor(mul_out)*(2.0**-FRAC_BITS));

end// assign cos_out = inter_x[NUM_ITER-1];



endmodule
