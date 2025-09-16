module uni_shift_register(
  input clk,
  input reset,
  input [3:0] din,
  input [1:0] s,
  input  ld,
  input sin,
  output reg [3:0] q);
  always @(posedge clk or posedge reset) begin
    if (reset) 
      q<=4'b000;
      else  if (ld)
        q<=din;
      else 
        if(s==2'b01)
        q<={ [3:0] q,sin};
    else 
      if(s==2'b10)
        q<={ sin, [3:0] q};
    else
      q<=din;
    
    end
    endmodule
