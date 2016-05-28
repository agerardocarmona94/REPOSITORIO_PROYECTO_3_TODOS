`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:26:06 05/22/2016
// Design Name:   Deteccion_Tecla
// Module Name:   C:/Users/Marcos/Documents/Xilinx/Teclado/Testbench_Deteccion_Tecla.v
// Project Name:  Teclado
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Deteccion_Tecla
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Deteccion_Tecla;

	// Inputs
	reg clk;
	reg reset;
	reg ps2d;
	reg ps2c;

	// Outputs
	wire [3:0] anodo;
	wire [7:0] catodo;

	// Instantiate the Unit Under Test (UUT)
	Deteccion_Tecla uut (
		.clk(clk), 
		.reset(reset), 
		.ps2d(ps2d), 
		.ps2c(ps2c), 
		.anodo(anodo), 
		.catodo(catodo)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		ps2d = 0;
		ps2c = 0;

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
	#10
	reset = 0;
	end
	
	initial
	begin
	ps2d = 1;
	#127000
	ps2d = 0;
	#127000
	ps2d = 0;
	#127000
	ps2d = 0;
	#127000
	ps2d = 1;
	#127000
	ps2d = 1;
	#127000
	ps2d = 1;
	#127000
	ps2d = 1;
	#127000
	ps2d = 1;
	#127000
	ps2d = 0;
	#127000
	ps2d = 0;
	#127000
	ps2d = 0;
	#10
	ps2d = 1;
	#127000
	ps2d = 0;
	#127000
	ps2d = 0;
	#127000
	ps2d = 0;
	#127000
	ps2d = 1;
	#127000
	ps2d = 1;
	#127000
	ps2d = 1;
	#127000
	ps2d = 1;
	#127000
	ps2d = 1;
	#127000
	ps2d = 0;
	#127000
	ps2d = 0;
	#127000
	ps2d = 0;
	#5000000 $stop;
	end
      
endmodule

