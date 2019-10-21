module sigma (output [1:2]new_s,input [1:2]st,input [1:2]x);

  assign new_s[1]= ( !st[1] & st[2] & x[1] & !x[2] ) | ( st[1] & !st[2] & x[1] & x[2] );
  assign new_s[2]= ( !x[1] & x[2] ) | ( st[1] & !st[2] & x[1] & x[2] );

endmodule
