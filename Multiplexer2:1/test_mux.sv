module test_mux();
   reg  my_x, my_y, my_ic;
   wire my_z;
   mux miomux(my_z, my_x, my_y, my_ic);
   initial
     begin
	   $dumpfile("provamux.vcd");
	   $dumpvars;
	   my_x = 0;
	   my_y = 0;
	   my_ic = 1;
	   #10       // wait 10 t
	   my_x = 1;
  	   #10
	   my_ic = 0;
	   #10
	   $finish;
     end
endmodule // test_mux
