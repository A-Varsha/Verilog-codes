module multiplexer(
input i1,i2,i3,i4,i5,i6,i7,i8,
wire y0,y1,y2,y3,y4,y5,y6,y7,y8,y9,out_1,out_2,out_3,
input s0,s1,s2,
output o);

not not_1(n1,s0);
not not_2(n2,s1);
not not_3(n3,s2);

and and_1(yo,i1,n1,n2);
and and_2(y1,i2,n1,s1);
and and_3(y2,i3,s0,n2);
and and_4(y3,i4,s0,s1);
or or_1(out_1,y0,y1,y2,y3);

and and_5(y4,i5,n1,n2);
and and_6(y5,i6,n1,s1);
and and_7(y6,i7,s0,n2);
and and_8(y7,i8,s0,s1);
or or_2(out_2,y4,y5,y6,y7);

and and_9(y8,n3,out_1);
and and_11(y9,s2,out_2);
or or_3(o,y8,y9);
 endmodule
