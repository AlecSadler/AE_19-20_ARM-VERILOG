module test();
  reg [1:2]x;
  reg clk;
  wire z;
  m1 automa(z,x,clk);
  initial
    clk=0;
  always begin
    #2
    clk=1;
    #1
    clk=0;
  end
  initial begin
    $dumpfile("automa.vcd");
	  $dumpvars;
    x= 2'b00;
    #4
    x= 2'b01;
    #5
    x= 2'b01;
    #1
    x= 2'b00;
    #10
    $finish;
  end
endmodule
