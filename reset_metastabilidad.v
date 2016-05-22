`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:05:04 05/16/2016 
// Design Name: 
// Module Name:    reset_metastabilidad 
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
module reset_metastabilidad(
    input botton_reset,
	 input clk,
	 output reset
    );
	 
	 reg FF_1;
    reg FF_2;
    reg FF_3;
    reg FF_4;
    reg FF_5;

    always @(posedge clk)
    begin
	   FF_1<=botton_reset;
	   FF_2<=FF_1;
	   FF_3<=FF_2;
	   FF_4<=FF_3;
	   FF_5<=FF_4; //En conexion en cascada se colocan los biestables, es decir los valores de las salidas dependen del valor 
	//que tenga la entrada
end

assign reset = FF_1 & FF_2 & FF_3 & FF_4 & FF_5 &!botton_reset;


endmodule
