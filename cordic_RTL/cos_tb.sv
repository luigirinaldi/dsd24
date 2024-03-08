`timescale 1ns / 1ps

module cos_tb();
    localparam F = 20;
    localparam SF = 2.0 ** (-F);
    localparam ITER = 10;

    function [ITER:0][F+1:0] gen_angles;
    //	reg signed [FRAC_BITS+1:0] angles [NUM_ITER+1];
        
        for (int a = 0; a < ITER+1; a++) begin
            gen_angles[a] = $rtoi($atan(2.0**(-a))*SF);
        end
        
    //	gen_angles = angles;
    endfunction

    
    reg signed [F+1:0] theta_in;
    wire signed [F+1:0] cos_out;

    localparam angle_in = 3.14/4.0;

    cordic_cos cos (
        theta_in,
        cos_out
    );

    initial begin
        $display("Starting Test");
        theta_in = $rtoi(angle_in / SF);
        #1

        
        $display("%x, %x", theta_in, cos_out);
        $display("%f, %f, %f", $cos(angle_in), $itor(cos_out)*SF, ($cos(angle_in)-$itor(cos_out)*SF)/$cos(angle_in));
    end

endmodule