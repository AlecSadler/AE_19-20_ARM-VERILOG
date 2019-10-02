module mux(z, x, y, ic);
   input x,y,ic;
   output z;
   assign
     z = ((~ic) & x) | (ic & y); 
endmodule
