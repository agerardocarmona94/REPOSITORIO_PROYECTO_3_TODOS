`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:25:33 05/22/2016
// Design Name:   ps2_rx
// Module Name:   C:/Users/Marcos/Documents/Xilinx/Teclado/Testbench_ps2_rx.v
// Project Name:  Teclado
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ps2_rx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_ps2_rx;

	// Inputs
	reg clk;
	reg reset;
	reg ps2d;
	reg ps2c;
	reg rx_en;

	// Outputs
	wire rx_done_tick;
	wire [7:0] dout;

	// Instantiate the Unit Under Test (UUT)
	ps2_rx uut (
		.clk(clk), 
		.reset(reset), 
		.ps2d(ps2d), 
		.ps2c(ps2c), 
		.rx_en(rx_en), 
		.rx_done_tick(rx_done_tick), 
		.dout(dout)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		ps2d = 0;
		ps2c = 0;
		rx_en = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial forever begin
	   #5clk = ~clk;
	end
	
	initial forever begin
	   #50000ps2c = ~ps2c;
	end
	
	initial
	begin
	
	reset = 1;
	rx_en = 1;
	#10
	reset = 0;
	#10
	ps2d = 1;
	#160000
	ps2d = 0;
	#160000
	ps2d = 1;
	#160000
	ps2d = 0;
	#160000
	ps2d = 1;
	#160000
	ps2d = 0;
	#160000
	ps2d = 1;
	#160000
	ps2d = 0;
	#160000
	ps2d = 1;
	#160000
	ps2d = 0;
	#160000
	ps2d = 1;
	#160000
	ps2d = 0;
	#5000000$stop;
	
	
	end 
      
endmodule

