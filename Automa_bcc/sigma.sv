module sigma (output [1:2]newSt, input [1:2]x, input [1:2]st);
  assign newSt[1]= !st[1] & st[2] & x[1] & x[2];
  assign newSt[2]= ( !st[1] & !st[2] & !x[1] & x[2] ) | ( !st[1] & st[2] & x[1] & x[2] );
endmodule
