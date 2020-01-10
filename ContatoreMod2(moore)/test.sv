module test();

  reg clk;
  reg x;
  wire z;
  automa fsm(z,x,clk);

  initial begin
    clk=0;
  end

  always
    begin
      #3 clk=1;
      #1 clk=0;
    end

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
    #1 x=0;
    #4 x=1;
    #4 x=0;
    #4 x=1;
    #4 x=1;
    #4 x=0;
    #20
    $finish;
  end

endmodule
