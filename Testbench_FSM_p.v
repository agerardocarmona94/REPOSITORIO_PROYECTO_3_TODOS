`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:41:34 05/15/2016
// Design Name:   FSM_p
// Module Name:   C:/Users/Marcos/Documents/Xilinx/Proyecto_2.0/Testbench_FSM_p.v
// Project Name:  Proyecto_2.0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: FSM_p
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_FSM_p;

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
	wire [2:0] Estado;

	// Instantiate the Unit Under Test (UUT)
	FSM_p uut (
		.clk(clk), 
		.reset(reset), 
		.listo(listo), 
		.sw(sw), 
		.posicion(posicion), 
		.enable_inicio(enable_inicio), 
		.enable_escribir(enable_escribir), 
		.enable_leer(enable_leer), 
		.Estado(Estado)
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
	  sw = 1;
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
	  #5800$stop;
	 
	end
      
endmodule

