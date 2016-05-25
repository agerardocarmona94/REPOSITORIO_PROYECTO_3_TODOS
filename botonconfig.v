`timescale 1ns / 1ps

module botonconfig(
    input listo_rst,		//Declaracion de entradas y salidas
	 input button,
    input clk,		 //el modulo consiste en flipflops tipo D en cascada
	 output Push_out
    );
	 

   reg FF_1;
   reg FF_2;
   reg FF_3;
   reg FF_4;
   reg FF_5;
   reg PB;
	reg PB_out = 0;

   always @(posedge clk)
	begin
	   FF_1<=button;
	   FF_2<=FF_1;
	   FF_3<=FF_2;
	   FF_4<=FF_3;
	   FF_5<=FF_4;
   end

   assign PB_En = FF_1 & FF_2 & FF_3 & FF_4 & FF_5 &!button;
	assign Push_out = PB_out;

	
   always @(posedge clk)
	begin
	   if (listo_rst)
		begin
		  PB_out <= 1'd0;
		end
      else
	   begin
		      if(PB_En)
			      PB_out <=1'd1;
		      else
			      PB_out <= PB_out ;
			end				
	   end
	

endmodule
