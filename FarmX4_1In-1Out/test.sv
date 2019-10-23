module test();

  parameter N=8;

  reg clk;
  reg [N-1:0]num1;
  wire [N-1:0]res1;
  integer i;
  per4farm m1(res1,num1,clk);

  initial begin
    clk=0;
  end

  always begin
    #1 clk=1;
    #1 clk=0;
  end

  initial begin

    $dumpfile("wave.vcd");
    $dumpvars;
    #1
    for (i=0;i<9;i=i+1) begin
      #2
      num1 = i;
    end
    #30
    $finish;
  end

endmodule
