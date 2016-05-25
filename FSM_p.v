`timescale 1ns / 1ps

 module FSM_p(
   input wire clk,
   input wire reset,
   input listo,
   input sw,
   output [1:0] posicion,
	output reg enable_inicio,
	output reg enable_escribir,
	output reg enable_leer,
	output [2:0] Estado
    );


   localparam [2:0] inicio   = 3'b000;
   localparam [2:0] cargar   = 3'b001;
   localparam [2:0] leer     = 3'b010;
	localparam [2:0] escribir = 3'b011;
   localparam [2:0] guardar  = 3'b100;
					 
					 
   reg [2:0] estado_actual,estado_sig;
   reg [1:0]cuenta = 0;
   assign posicion = cuenta;
	assign Estado = estado_actual;
	
	
	
   always @(posedge clk) 
	begin
	   if (reset)
	      estado_actual = inicio;
		else 
	      estado_actual = estado_sig;
   end
	
   always @ * 
   begin
	   if (reset)
	   begin
		   cuenta =0;
			estado_sig = 0;
	   end 
		else 
		begin
         estado_sig = 3'd0;
	      case(estado_actual)
		      inicio: 
				begin
			      if(cuenta==2'd3)
				   begin
					   estado_sig = cargar;
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
				end	
				cargar:
				begin
					   if (listo)
					   begin
						   estado_sig = leer;
						   cuenta=0;
					   end
					   else
					   begin
						   estado_sig = cargar;
						   cuenta=0;
					   end
				end
				leer: 
				begin
					if(listo) 
					begin
						if(sw)
						begin
						 estado_sig = escribir; 
						 cuenta= 0;
						end
						else
						begin
							estado_sig = cargar;
							cuenta = 0;
						end
					end
					
					else
					begin
						estado_sig = leer;
						cuenta = 0;
					end
				end
		      escribir: 
				begin
			      if(sw)
				   begin
						if (listo)
					   begin
						  estado_sig = guardar; 
						  cuenta = 0 ;
					   end
					   else
					   begin
						  estado_sig = escribir;
						  cuenta = 0;
					   end
					end
				   else
				   begin
					  estado_sig = cargar; 
					  cuenta= 0;
				   end
				end
		      guardar: 
				begin
					   if (listo)
					   begin
						   estado_sig = escribir;
						   cuenta=0;
					   end
					   else
					   begin
						   estado_sig = guardar;
						   cuenta=0;
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
				cargar: 
				begin
				   enable_inicio<=0;
				   enable_escribir<=0;
				   enable_leer<=1;
				end
				escribir:
				begin
				   enable_inicio<=0;
				   enable_escribir<=1;
				   enable_leer<=0;
				end
				guardar: 
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
				default: 
				begin
				   enable_inicio<=0;
				   enable_escribir<=0;
				   enable_leer<=0;
				end
				
			endcase
	   end
  end	
  
  endmodule 