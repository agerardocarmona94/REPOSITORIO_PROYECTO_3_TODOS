`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:43:04 05/16/2016
// Design Name:   Pulso_Listo
// Module Name:   C:/Users/Marcos/Documents/Xilinx/Proyecto_2.0/Testbench_Pulso_Listo.v
// Project Name:  Proyecto_2.0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Pulso_Listo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Pulso_Listo;

	// Inputs
	reg listo;
	reg clk;

	// Outputs
	wire Pulso_Listo;

	// Instantiate the Unit Under Test (UUT)
	Pulso_Listo uut (
		.listo(listo), 
		.clk(clk), 
		.Pulso_Listo(Pulso_Listo)
	);

	initial begin
		// Initialize Inputs
		listo = 0;
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
	listo = 1;
	#1000
	listo = 0;
	#1000
	listo = 1;
	#1000
	listo = 0;
	#1000
	listo = 1;
	#1000
	listo = 0;
	#1000 $stop;
	
	end 
      
endmodule

