module test ();

  wire z;
  reg clk;
  reg [1:2]x;
  machine m1 (z,x,clk);

  parameter a= 2'b00;
  parameter d= 2'b01;
  parameter i= 2'b10;
  parameter o= 2'b11;

  initial begin
    clk=0;
  end

  always begin
    #3 clk=1;
    #1 clk=0;
  end

  initial begin
    $dumpfile ("wave.vcd");
    $dumpvars;
    x=d;
    #5 x=i;
    #4 x=o;
    #4 x=d;
    #20
    $finish;
  end

endmodule
