`timescale 1ns / 1ps
`include "cordic_iter.v"

module iter_tb();
    localparam F = 30;
    localparam SF = 2.0 ** (-F);

    reg signed [F+1:0] x_in;
    reg signed [F+1:0] y_in;
    reg signed [F+1:0] z_in;
    wire signed [F+1:0] x_out;
    wire signed [F+1:0] y_out;
    wire signed [F+1:0] z_out;


    cordic_iter #(
        .FRAC_BITS(F),
        .ITERATION(1),
        .ANGLE(32'b00_10000000_00000000_00000000_000000)
    ) cos (
        x_in,
        y_in,
        z_in,
        x_out,
        y_out,
        z_out
    );

    initial begin
        $display("Starting Test");
        x_in = 32'b01_00000000_00000000_00000000_000000;
        y_in = 0;
        z_in = 32'b01_00000000_00000000_00000000_000000;
        #1

        
        $display("%x %x %x -> %x %x %x", x_in, y_in,z_in,x_out,y_out,z_out);
        $display("%f %f %f -> %f %f %f", $itor(x_in)*SF, $itor(y_in)*SF, $itor(z_in)*SF,$itor(x_out)*SF, $itor(y_out)*SF, $itor(z_out)*SF);
    end

endmodule