module test();

  parameter N=8;

  reg clk;
  reg [N-1:0]numero;
  wire [N-1:0]result;
  integer i;
  p4mod m1(result,numero,clk);

  initial begin
    clk=0;
  end

  always begin
    #1 clk=1;
    #1 clk=0;
  end

  initial begin
    numero=0;
    $dumpfile("wave.vcd");
    $dumpvars;
    #1 numero=0;
    for (i=1;i<9;i=i+1)
      #2 numero = i;
    #20
    $finish;
  end

endmodule
