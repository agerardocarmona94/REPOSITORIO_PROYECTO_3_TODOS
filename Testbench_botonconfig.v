`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:37:29 05/15/2016
// Design Name:   botonconfig
// Module Name:   C:/Users/Marcos/Documents/Xilinx/Proyecto_2.0/Testbench_botonconfig.v
// Project Name:  Proyecto_2.0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: botonconfig
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_botonconfig;

	// Inputs
	reg listo_rst;
	reg button;
	reg clk;

	// Outputs
	wire Push_out;

	// Instantiate the Unit Under Test (UUT)
	botonconfig uut (
		.listo_rst(listo_rst), 
		.button(button), 
		.clk(clk), 
		.Push_out(Push_out)
	);

	initial begin
		// Initialize Inputs
		listo_rst = 0;
		button = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial forever begin
	   #10clk = ~clk;
	end
	
	initial
	begin
	   button = 1;
		#1000
		button = 0;
		#500
		listo_rst = 1;
		#50
		listo_rst = 0;
		#50
		listo_rst = 1;
		#50
		listo_rst = 0;
		#50 
		listo_rst = 1;
		#50
		listo_rst = 0;
		#50 
		listo_rst = 1;
		#50
		listo_rst = 0;
		#50 $stop;
	end 
      
endmodule

