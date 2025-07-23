`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 19:36:14
// Design Name: 
// Module Name: full_sub_tb
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


module full_sub_tb();
reg x,y,z;
wire diff,bor;
full_sub u1(.x(x),
.y(y),
.z(z),
.diff(diff),
.bor(bor)
);

initial begin
x=0;y=0;z=0;
#10;
x=0;y=0;z=1;
#10;
x=0;y=1;z=0;
#10;
x=0;y=1;z=1;
#10;
x=1;y=0;z=0;
#10;
x=1;y=0;z=1;
#10;
x=1;y=1;z=0;
#10;
x=1;y=1;z=1;
#10;
$finish;
end 
endmodule
