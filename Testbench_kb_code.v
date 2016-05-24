`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:31:15 05/22/2016
// Design Name:   kb_code
// Module Name:   C:/Users/Marcos/Documents/Xilinx/Teclado/Testbench_kb_code.v
// Project Name:  Teclado
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: kb_code
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_kb_code;

	// Inputs
	reg clk;
	reg reset;
	reg scan_done_tick;
	reg [7:0] scan_out;

	// Outputs
	wire got_code_tick;

	// Instantiate the Unit Under Test (UUT)
	kb_code uut (
		.clk(clk), 
		.reset(reset), 
		.scan_done_tick(scan_done_tick), 
		.scan_out(scan_out), 
		.got_code_tick(got_code_tick)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		scan_done_tick = 0;
		scan_out = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
		initial forever begin
	   #5clk = ~clk;
	end
	
		initial 
		begin
	   scan_done_tick = 0;
		#1100
		scan_done_tick = 1;
		#100
		scan_done_tick = 0;
		#1100
		scan_done_tick = 1;
		#100
		scan_done_tick = 0;
		#1100
		scan_done_tick = 1;
		#100
		scan_done_tick = 0;
		#1100
		scan_done_tick = 1;
		#100
		scan_done_tick = 0;
		#1100;
	   end
	
	initial 
	begin
	   reset = 1;
		#10
		reset = 0;
		#10
		scan_out = 8'h45;
		#2000
		scan_out = 8'h1C;
		#2000
		scan_out = 8'hF0;
		#2000
		scan_out = 8'h1C;
		#2000 $stop;
	end
      
endmodule

