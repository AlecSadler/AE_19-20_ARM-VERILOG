module p4mod (output [N-1:0]out,input [N-1:0]in,input clk);

  parameter N=8;

  wire [N-1:0]bridge;
  stage s1(bridge,in,clk);
  stage s2(out,bridge,clk);

endmodule
