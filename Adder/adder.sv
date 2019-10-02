module adder (r0,x,y,s,r1);
  input r0,x,y;
  output s,r1;
  assign s = ( (~r0) & ~x & y) | ( (~r0) & x & (~y) ) | (r0 & (~x) & (~y)) | (r0 & x & y);
  assign r1 = ( (~r0) & x & y ) | ( r0 & (~x) & y ) | ( r0 & x & (~y) ) | ( r0 & x & y ) ;
endmodule
