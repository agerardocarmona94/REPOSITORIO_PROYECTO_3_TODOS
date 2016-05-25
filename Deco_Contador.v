`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:09:30 05/16/2016 
// Design Name: 
// Module Name:    Deco_Contador 
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
module Deco_Contador(
    input [5:0] cuenta,
	 input clk,
	 output reg [7:0] Salida
    );
	 
	 always @(posedge clk)
	 begin
	   case (cuenta)
          6'd0: Salida = 8'b00000000;
			 6'd1: Salida = 8'b00000001;
			 6'd2: Salida = 8'b00000010;
			 6'd3: Salida = 8'b00000011;
			 6'd4: Salida = 8'b00000100;
			 6'd5: Salida = 8'b00000101;
			 6'd6: Salida = 8'b00000110;
			 6'd7: Salida = 8'b00000111;
			 6'd8: Salida = 8'b00001000;
			 6'd9: Salida = 8'b00001001;
			 6'd10: Salida = 8'b00010000;
			 6'd11: Salida = 8'b00010001; 
			 6'd12: Salida = 8'b00010010; 
			 6'd13: Salida = 8'b00010011; 
			 6'd14: Salida = 8'b00010100; 
			 6'd15: Salida = 8'b00010101; 
			 6'd16: Salida = 8'b00010110; 
			 6'd17: Salida = 8'b00010111; 
			 6'd18: Salida = 8'b00011000; 
			 6'd19: Salida = 8'b00011001; 
			 6'd20: Salida = 8'b00100000;
			 6'd21: Salida = 8'b00100001;
			 6'd22: Salida = 8'b00100010;
			 6'd23: Salida = 8'b00100011;
			 6'd24: Salida = 8'b00100100;
			 6'd25: Salida = 8'b00100101;
			 6'd26: Salida = 8'b00100110;
			 6'd27: Salida = 8'b00100111;
			 6'd28: Salida = 8'b00101000;
			 6'd29: Salida = 8'b00101001;
			 6'd30: Salida = 8'b00110000;
			 6'd31: Salida = 8'b00110001;
			 6'd32: Salida = 8'b00110010;
			 6'd33: Salida = 8'b00110011;
			 6'd34: Salida = 8'b00110100;
			 6'd35: Salida = 8'b00110101;
			 6'd36: Salida = 8'b00110110;
			 6'd37: Salida = 8'b00110111;
			 6'd38: Salida = 8'b00111000;
			 6'd39: Salida = 8'b00111001;
			 6'd40: Salida = 8'b01000000;
			 6'd41: Salida = 8'b01000001;
			 6'd42: Salida = 8'b01000010;
			 6'd43: Salida = 8'b01000011;
			 6'd44: Salida = 8'b01000100;
			 6'd45: Salida = 8'b01000101;
			 6'd46: Salida = 8'b01000110;
			 6'd47: Salida = 8'b01000111;
			 6'd48: Salida = 8'b01001000;
			 6'd49: Salida = 8'b01001001;
			 6'd50: Salida = 8'b01010000;
			 6'd51: Salida = 8'b01010001;
			 6'd52: Salida = 8'b01010010;
			 6'd53: Salida = 8'b01010011;
			 6'd54: Salida = 8'b01010100; 
			 6'd55: Salida = 8'b01010101;
			 6'd56: Salida = 8'b01010110;
			 6'd57: Salida = 8'b01010111;
			 6'd58: Salida = 8'b01011000;
			 6'd59: Salida = 8'b01011001;
          default : Salida = 8'b00000000;
        endcase
	 end 


endmodule
