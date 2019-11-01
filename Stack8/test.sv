module test ();

  reg x;
  reg clk;
  wire [0:7]z;
  stack8 stk (z,x,clk);

  initial begin
    clk=0;
  end

  always  begin
    #4 clk=1;
    #2 clk=0;
  end

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
    x=0;
    #3 x=1;
    #6 x=1;
    #6 x=1;
    #6 x=0;
    #6 x=0;
    #6 x=0;
    #6 x=1;
    #10
    $finish;
  end

endmodule // test
