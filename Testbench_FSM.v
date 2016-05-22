`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:57:50 05/13/2016
// Design Name:   FSM
// Module Name:   C:/Users/Marcos/Documents/Xilinx/Proyecto_2_segundos/Testbench_FSM.v
// Project Name:  Proyecto_2_segundos
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_FSM;

	// Inputs
	reg clk;
	reg reset;
	reg listo;
	reg sw;

	// Outputs
	wire [1:0] posicion;
	wire enable_inicio;
	wire enable_escribir;
	wire enable_leer;

	// Instantiate the Unit Under Test (UUT)
	FSM uut (
		.clk(clk), 
		.reset(reset), 
		.listo(listo), 
		.sw(sw), 
		.posicion(posicion), 
		.enable_inicio(enable_inicio), 
		.enable_escribir(enable_escribir), 
		.enable_leer(enable_leer)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		listo = 0;
		sw = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	initial forever begin
	   #10clk = ~clk;
	end
	
	initial 
	begin
	  reset = 1;
	  #20
	  reset = 0;
	  #5800
	  listo = 1;
	  #20
	  listo = 0;
	  #5800
	  listo = 1;
	  #20
	  listo = 0;
	  #5800
	  listo = 1;
	  #20
	  listo = 0;
	  #5800
	  sw = 1;
	  #5800
     sw = 0;
     #5800	  
	  sw = 1;
	  #5800
     sw = 0;
     #5800	
	  sw = 1;
	  #5800
     sw = 0;
     #5800
	  listo = 1;
	  #20
	  listo = 0;
	  #5800
	  listo = 1;
	  #20
	  listo = 0;
	  #5800
	  listo = 1;
	  #20
	  listo = 0;
	  #5800
	  reset = 1;
	  #50
	  reset = 0;
	  #5800
	  listo = 1;
	  #20
	  listo = 0;
	  #5800
	  listo = 1;
	  #20
	  listo = 0;
	  #5800
	  listo = 1;
	  #20
	  listo = 0;
	  #5800
	  listo = 1;
	  #20
	  listo = 0;
	  #5800
	  listo = 1;
	  #20
	  listo = 0;
	  #5800
	  listo = 1;
	  #20
	  listo = 0;
	  #5800
	  $stop;
	 
	end
	
 
endmodule

