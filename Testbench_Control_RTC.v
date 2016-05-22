`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:15:02 05/16/2016
// Design Name:   Control_RTC
// Module Name:   C:/Users/Marcos/Documents/Xilinx/Proyecto_2.0/Testbench_Control_RTC.v
// Project Name:  Proyecto_2.0
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control_RTC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Testbench_Control_RTC;

	// Inputs
	reg clk;
	reg W_R;
	reg Aumentar;
	reg Disminuir;
	reg reset;
	reg conf;
	reg [7:0] RTC_out;

	// Outputs
	wire A_D;
	wire CS;
	wire RD;
	wire WR;
	wire [2:0] rgb;
	wire hsync;
	wire vsync;
	wire [7:0] RTC_in;

	// Instantiate the Unit Under Test (UUT)
	Control_RTC uut (
		.clk(clk), 
		.W_R(W_R), 
		.Aumentar(Aumentar), 
		.Disminuir(Disminuir), 
		.reset(reset), 
		.conf(conf), 
		.RTC_out(RTC_out), 
		.A_D(A_D), 
		.CS(CS), 
		.RD(RD), 
		.WR(WR), 
		.rgb(rgb), 
		.hsync(hsync), 
		.vsync(vsync), 
		.RTC_in(RTC_in)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		W_R = 0;
		Aumentar = 0;
		Disminuir = 0;
		reset = 0;
		conf = 0;
		RTC_out = 0;

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
		#100
		reset = 0;
		RTC_out = 8'b10101101;
		#17400 
		W_R = 0;
		#100
		Aumentar = 1;
		#100
		Aumentar = 0;
		#100
		Aumentar = 1;
		#100
		Aumentar = 0;
		#100
		Aumentar = 1;
		#100
		Aumentar = 0;
		#100
		Aumentar = 1;
		#100
		Aumentar = 0;
      #11600 
		W_R = 1;
		#11600;
      conf = 1;
      #200000
      conf = 0;
		#11600
		conf = 1;
		#2000
		conf = 0;
		#11600 $stop;
		
	end 

      
endmodule

