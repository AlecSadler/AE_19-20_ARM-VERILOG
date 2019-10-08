module m1 (output z,input [1:2]x,input clk);
  wire [1:2]inreg;
  wire [1:2]outreg;
  register r (outreg,clk,1'b1,inreg);
  sigma sm (inreg,outreg,x);
  omega om (z,outreg,x);
endmodule
