module stack8 (output [0:7]z,input x,input clk);

  wire [0:7]sg_rg;
  wire [0:7]rg_om;
  register r01 (rg_om,sg_rg,1'b1,clk);
  sigma sg (sg_rg,rg_om,x);
  omega om (z,rg_om);

endmodule
