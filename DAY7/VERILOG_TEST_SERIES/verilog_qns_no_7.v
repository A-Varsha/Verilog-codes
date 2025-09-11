`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2025 14:50:02
// Design Name: 
// Module Name: verilog_qns_no_7
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


module verilog_qns_no_7(
output  reg [13:0]sum,
output reg [13:0] largest_num);
reg [13:0]mem[0:7];
integer i;
task memory_array;
begin
for(i=0;i<8;i=i+1)begin
mem[i]=$random;
end
end
endtask
task memory_elem;
begin
for(i=0;i<8;i=i+1)begin
$display("mem[%0d]=%0d",i,mem[i]);
end
end
endtask

initial begin
memory_array;
memory_elem;
end
always @ (*)begin
largest_num=mem[0];
sum=mem[0];
for(i=0;i<8;i=i+1)begin
sum=sum+mem[i];
if(mem[i]>largest_num)
largest_num= mem[i];
$display ("largest element=%d",largest_num);
$display("sum of elements =%d",sum);
end
end
endmodule    

