`timescale 1ns / 1ps


module test;

	// Inputs
	reg clk;

	// Outputs
	wire done;

	// Instantiate the Unit Under Test (UUT)
	top uut (
		.clk(clk), 
		.done(done)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
       
    
	end
	
	always #200 clk = !clk;
      
endmodule

