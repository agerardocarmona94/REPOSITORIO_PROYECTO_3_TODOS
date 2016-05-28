`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:04:17 05/16/2016 
// Design Name: 
// Module Name:    MUX_WR_RD 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module MUX_WR_RD (
    input [7:0] Deco_Escritura,
	 input [7:0] RTC_out,
	 input W_R,
	 input clk,
	 output reg [7:0] Salida
    );

   always @(posedge clk)
      if (W_R)
         Salida <= Deco_Escritura ;
      else
         Salida <= RTC_out;
endmodule
