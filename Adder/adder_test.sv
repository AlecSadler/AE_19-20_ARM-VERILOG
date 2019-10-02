module adder_test();
  reg r0,x,y;
  wire s,r1;
  adder my_add (r0,x,y,s,r1);
  initial begin
    $dumpfile("wave.vcd");
	  $dumpvars;
    r0=0;
    x=1;
    y=1;
    #10
    r0=1;
    #10
    x=0;
    y=0;
    r0=0;
    #10
    $finish;
  end
endmodule
