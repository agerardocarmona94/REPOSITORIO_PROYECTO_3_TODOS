`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:35 05/12/2016 
// Design Name: 
// Module Name:    Deco_Escritura 
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
module Deco_Escritura(
    input [(N-1):0] dato,
	 input clk,
	 input enable_escritura,
	 input enable_leer,
	 input enable_inicio,
	 input A_D,
	 input [1:0] posicion,
	 input [2:0] Estado,
	 output [(Y-1):0] Salida
    );
	 
	 parameter N = 6;
	 parameter Y = 8;
	 
	 reg [(Y-1):0] Out;
	 
	 assign Salida = Out;

	
   always @(posedge clk)
	begin
	if (enable_inicio) 
	begin
	   if (A_D)
		begin
		    case (posicion)
			    2'd0: Out = 8'h10;
				 2'd1: Out = 8'h00;
				 2'd2: Out = 8'hD2;
				 default : Out =8'd0;
			 endcase
		end 
		else
		begin
			 case (posicion)
			    2'd0: Out = 8'h02;
				 2'd1: Out = 8'h02;
				 2'd2: Out = 8'h10;
			     default : Out =8'd0;
			 endcase
		end 
	end
	else 
	begin
	   if (A_D)
		begin
		  case (dato)
          6'd0: Out = 8'b00000000;
			 6'd1: Out = 8'b00000001;
			 6'd2: Out = 8'b00000010;
			 6'd3: Out = 8'b00000011;
			 6'd4: Out = 8'b00000100;
			 6'd5: Out = 8'b00000101;
			 6'd6: Out = 8'b00000110;
			 6'd7: Out = 8'b00000111;
			 6'd8: Out = 8'b00001000;
			 6'd9: Out = 8'b00001001;
			 6'd10: Out = 8'b00010000;
			 6'd11: Out = 8'b00010001; 
			 6'd12: Out = 8'b00010010; 
			 6'd13: Out = 8'b00010011; 
			 6'd14: Out = 8'b00010100; 
			 6'd15: Out = 8'b00010101; 
			 6'd16: Out = 8'b00010110; 
			 6'd17: Out = 8'b00010111; 
			 6'd18: Out = 8'b00011000; 
			 6'd19: Out = 8'b00011001; 
			 6'd20: Out = 8'b00100000;
			 6'd21: Out = 8'b00100001;
			 6'd22: Out = 8'b00100010;
			 6'd23: Out = 8'b00100011;
			 6'd24: Out = 8'b00100100;
			 6'd25: Out = 8'b00100101;
			 6'd26: Out = 8'b00100110;
			 6'd27: Out = 8'b00100111;
			 6'd28: Out = 8'b00101000;
			 6'd29: Out = 8'b00101001;
			 6'd30: Out = 8'b00110000;
			 6'd31: Out = 8'b00110001;
			 6'd32: Out = 8'b00110010;
			 6'd33: Out = 8'b00110011;
			 6'd34: Out = 8'b00110100;
			 6'd35: Out = 8'b00110101;
			 6'd36: Out = 8'b00110110;
			 6'd37: Out = 8'b00110111;
			 6'd38: Out = 8'b00111000;
			 6'd39: Out = 8'b00111001;
			 6'd40: Out = 8'b01000000;
			 6'd41: Out = 8'b01000001;
			 6'd42: Out = 8'b01000010;
			 6'd43: Out = 8'b01000011;
			 6'd44: Out = 8'b01000100;
			 6'd45: Out = 8'b01000101;
			 6'd46: Out = 8'b01000110;
			 6'd47: Out = 8'b01000111;
			 6'd48: Out = 8'b01001000;
			 6'd49: Out = 8'b01001001;
			 6'd50: Out = 8'b01010000;
			 6'd51: Out = 8'b01010001;
			 6'd52: Out = 8'b01010010;
			 6'd53: Out = 8'b01010011;
			 6'd54: Out = 8'b01010100; 
			 6'd55: Out = 8'b01010101;
			 6'd56: Out = 8'b01010110;
			 6'd57: Out = 8'b01010111;
			 6'd58: Out = 8'b01011000;
			 6'd59: Out = 8'b01011001;
          default : Out = 8'b00000000;
        endcase
		end
		else 
		begin 
		   if (enable_escritura)
			begin
			   case (Estado)
			      3'd3: Out = 8'h21;
			      3'd4: Out = 8'hF1;
				   default : Out = 8'd0;
			   endcase
			end 
			else if (enable_leer)
			     begin
				     case (Estado)
					     3'd1: Out = 8'hF1;
					     3'd2: Out = 8'h21;
					     default: Out = 8'd0;
					  endcase
			      end 
					else
					begin
					   Out = 8'd0;
					end
	   end
	end
	end 
			
endmodule
