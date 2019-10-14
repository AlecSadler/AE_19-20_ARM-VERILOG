module test();
  reg clk;
  reg [1:2]x;
  wire z;
  machine bcc(z,x,clk);

  parameter a= 2'b00;
  parameter b= 2'b01;
  parameter c= 2'b11;

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
    x=a;
    #1 x=b;
    #3 x=c;
    #3 x=c;
    #20
    $finish;
  end
endmodule
