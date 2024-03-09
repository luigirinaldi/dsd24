module cordic_cos #(
    parameter NUM_ITER = 10,
    parameter FRAC_BITS = 20
)
(
    input    wire signed [FRAC_BITS+1:0] theta_in,
    output   reg signed [FRAC_BITS+1:0] cos_out
);

reg signed [FRAC_BITS+1:0] inter_x [NUM_ITER-1:0];
reg signed [FRAC_BITS+1:0] inter_y [NUM_ITER-1:0];
reg signed [FRAC_BITS+1:0] inter_z [NUM_ITER-1:0];

// localparam signed [FRAC_BITS+1:0] angles [NUM_ITER+1];

// genvar a;
// generate
//     for (a = 0; a < NUM_ITER+1; a++) begin
//         angles[a] = $rtoi($atan(2.0**(-a))*(2.0**FRAC_BITS));
//     end
// endgenerate

//typedef reg [FRAC_BITS+1:0] angles_type [NUM_ITER:0];
//
//function automatic angles_type gen_angles(input n_iter, input f_bits);
////	reg signed [FRAC_BITS+1:0] angles [NUM_ITER+1];
//	
	// for (int a = 0; a < n_iter+1; a++) begin
	// 	gen_angles[a] = $rtoi($atan(2.0**(-a))*(2.0**f_bits));
	// end
//	
////	gen_angles = angles;
//endfunction

 

//function [FRAC_BITS+1:0] get_angle (input int iter);
//    get_angle = $rtoi($atan(2.0**(-iter))*(2.0**FRAC_BITS));    
//endfunction

reg signed [FRAC_BITS+1:0]  ANGLES [0:NUM_ITER-1] ='{22'hc90fd, 22'h76b19, 22'h3eb6e, 22'h1fd5b, 22'hffaa, 22'h7ff5, 22'h3ffe, 22'h1fff, 22'hfff, 22'h7ff};

localparam signed ANGLE_SUM = 22'h9b74f;

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
    .ITERATION(0))
    // .ANGLE(ANGLES[0]))
    ustart (
    .angle(ANGLES[0]),
    .x_in(start_x),
    .x_out(inter_x[0]),
    .y_in(start_y),
    .y_out(inter_y[0]),
    .z_in(theta_in),
    .z_out(inter_z[0])
);

assign cos_out = inter_x[NUM_ITER-1] * ANGLE_SUM;


endmodule
