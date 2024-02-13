`timescale 1 ns / 100 ps
module tb ();

	//Inputs to DUT are reg type
	reg [31:0] dataa;
	reg [31:0] datab; 
	reg clk;
	reg reset;

	//Output from DUT is wire type
	wire [31:0] result;

	//Instantiate the DUT
	//mul refers to the verilog module defined by the LPM_MULT ip
	fp_mul unit(
		.a(dataa),
		.b(datab), 
		.q(result),
		.areset(reset),
		.clk(clk)
	);

	// ---- If a clock is required, see below ----
	// Create a 50MHz clock
	always
		#5 clk = ~clk;
	// -----------------------

	//Initial Block
	initial
	begin
		$display($time, " << Starting Simulation >> ");
		// intialise/set input
		clk = 1'b0;
		reset = 1'b1;
		#5 reset = 1'b0;
		
		// If using a clock
		@(posedge clk); 
		
		// Wait 10 cycles (corresponds to timescale at the top) 
		#10
		
		// set dataa and datab
		dataa <= $shortrealtobits(0.1);
		datab <= $shortrealtobits(0.2);

		#10

		$display("%x %f", dataa, $bitstoshortreal(dataa));
		$display("%x %f", datab, $bitstoshortreal(datab));
		
		#20

		$display("%x %f", result, $bitstoshortreal(result));

		dataa <= 32'hFFFFFFFA;
		datab <= 32'hFFFFFFFA;
		
		#10
		dataa <= 32'd2;
		datab <= 32'd23;
		
		#10 #50
		$display($time, "<< Simulation Complete >>");
		$stop;
	end

endmodule
