`timescale 1ns / 1ps

 module FSM(
   input wire clk,
   input wire reset,
   input listo,
   input sw,
   output [1:0] posicion,
	output reg enable_inicio,
	output reg enable_escribir,
	output reg enable_leer
    );


   localparam [1:0] inicio = 2'b00;
   localparam [1:0] escribir = 2'b10;
   localparam [1:0] leer = 2'b01;
					 
					 
   reg [1:0] estado_actual,estado_sig;
   reg [1:0]cuenta = 0;
   assign posicion = cuenta;
	
	
	
   always @(posedge clk) 
	begin
	   if (reset)
	      estado_actual = inicio;
		else 
	      estado_actual = estado_sig;
   end
	
   always @ * // Quitamos negedge
   begin
	   if (reset)
	   begin
		   cuenta =0;
			estado_sig = 0;
	   end 
		else 
		begin
         estado_sig = 2'd0;
	      case(estado_actual)
		      inicio: 
			      if(cuenta==2'd3)
				   begin
					   estado_sig = leer;
					   cuenta=0;
				   end 
			      else  
				   begin
					   if (listo)
					   begin
						   estado_sig = inicio;
						   cuenta=cuenta+2'd1;
					   end
					   else
					   begin
						   estado_sig = inicio;
						   cuenta=cuenta;
					   end
				   end
		      escribir: 
			      if(sw)
				   begin
				     if (cuenta == 2'd2)
					  begin
					    estado_sig = escribir;
						 cuenta = 0;
					  end
				     else if (listo)
					  begin
					     estado_sig = escribir; 
					     cuenta = cuenta + 2'd1 ;
					  end
					  else
					  begin
					    estado_sig = escribir;
						 cuenta = cuenta;
					  end
				   end
			     else
				  begin
					 estado_sig = leer; 
					 cuenta= 0;
				  end
		      leer: 
			      if(sw)
				   begin
					 estado_sig = escribir; 
					 cuenta= 0;
				   end
			      else
				   begin
				      if (cuenta == 2'd2)
					   begin
					    estado_sig = leer;
						 cuenta = 0;
					   end
				      else if (listo)
					   begin
					    estado_sig = leer; 
					    cuenta = cuenta + 2'd1 ;
					   end
					   else
					   begin
					    estado_sig = leer;
						 cuenta = cuenta;
					   end
				   end
		     default: 
			  begin
				 estado_sig=estado_sig;
				 cuenta=cuenta;
			  end
	      endcase		
      end
   end


   always @ (posedge clk)
	begin
	   if(reset == 1)
		begin
		   enable_inicio<=0;
			enable_escribir<=0;
			enable_leer<=0;
		end 
		else
		begin
	      case(estado_actual)
			   inicio: 
				begin
				   enable_inicio<=1;
				   enable_escribir<=0;
				   enable_leer<=0;
				end
				
				escribir:
				begin
				   enable_inicio<=0;
				   enable_escribir<=1;
				   enable_leer<=0;
				
				end
				leer:
				begin
				   enable_inicio<=0;
				   enable_escribir<=0;
				   enable_leer<=1;
				end
				
			endcase
	   end
	end

endmodule
