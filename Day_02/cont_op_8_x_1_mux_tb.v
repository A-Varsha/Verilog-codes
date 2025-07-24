`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 07:53:24
// Design Name: 
// Module Name: cont_op_8_x_1_mux_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module cont_op_8_x_1_mux_tb();
reg i0,i1,i2,i3,i4,i5,i6,i7;
reg [2:0]s;
wire y;

cont_op_8_x_1_mux  uut(.i0(i0),
.i1(i1),
.i2(i2),
.i3(i3),
.i4(i4),
.i5(i5),
.i6(i6),
.i7(i7),
.s(s),
.y(y));

initial begin

i0=0; s=3'b000;
#5
i1=1; s=3'b001;
#5
i2=1; s=3'b010;
#5
i3=1; s=3'b011;
#5
i4=0; s=3'b100;
#5
i5=0; s=3'b101;
#5
i6=1; s=3'b110;
#5
i7=0; s=3'b111;
#5
$finish;
end



endmodule



    
