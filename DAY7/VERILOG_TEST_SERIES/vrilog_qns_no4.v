`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.09.2025 11:31:42
// Design Name: 
// Module Name: vrilog_qns_no4
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


module vrilog_qns_no4(
input a,b,c,d,e,
output y);
wire not_b,not_c,not_d;
wire and_1,and_2,and_3,and_4,and_5,and_6;
wire or_1,or_2;

not #4( not_b,b);
not #4( not_c,c);
not #4( not_d,d);


and #3(and_1,a,b);
and #3(and_2,and_1,not_c);
and #3(and_3,a,b);
and #3(and_4,and_3,e);
and #3(and_5,not_b,not_c);
and #3(and_6,c,not_d);



or #2(or_1,and_2,and_4);
or #2(or_2,and_5,and_6);
or #2(y,or_1,or_2);
endmodule
