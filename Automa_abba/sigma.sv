module sigma (output [1:2]dest,input [1:2]s,input [1:2]x);
  assign dest[2]= (~s[1] & ~x[1] & ~x[2]) | (s[2] & ~x[1] & ~x[2]) | (~s[1] & s[2] & ~x[1]);
endmodule
