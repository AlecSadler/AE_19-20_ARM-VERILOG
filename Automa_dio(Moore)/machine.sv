module machine (output z,input [1:2]x,input clk);

  wire [1:2]sigma_regi;
  wire [1:2]regi_omega;

  register reg01 (regi_omega,sigma_regi,1'b1,clk);
  sigma sg (sigma_regi,regi_omega,x);
  omega om (z,regi_omega);

endmodule
