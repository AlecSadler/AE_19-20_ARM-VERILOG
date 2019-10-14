module machine (output z,input [1:2]x,input clk);
  wire [1:2]sig_reg;
  wire [1:2]reg_om;
  register r01(reg_om,sig_reg,clk,1'b1);
  sigma sig(sig_reg,x,reg_om);
  omega om(z,reg_om,x);
endmodule
