module per2 (output [N-1:0]z, input [N-1:0]in);

  parameter N=8; // per gestire numeri a 8 bit
  assign #2 z= in*2;

endmodule
