module omega (output z,input [1:2]st);

  assign z= st[1] & st[2];

endmodule
