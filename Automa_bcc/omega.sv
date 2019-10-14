module omega (output z,input [1:2]st,input [1:2]x);
  assign z= st[1] & st[2] & x[1] & x[2];
endmodule
