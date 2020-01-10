module automa (output z, input x, input clk);

  wire sigma_regis;
  wire regis_omega;

  omega myOm(z,regis_omega);
  sigma mySig(sigma_regis,regis_omega,x);
  register regi(regis_omega,sigma_regis,clk,1'b1);

endmodule
