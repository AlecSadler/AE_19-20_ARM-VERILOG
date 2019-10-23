module test();

  parameter N=8;

  reg clk;
  reg [N-1:0]num1;
  reg [N-1:0]num2;
  wire [N-1:0]res1;
  wire [N-1:0]res2;
  integer i;
  per4farm m1(res1,res2,num1,num2,clk);

  initial begin
    clk=0;
  end

  always begin
    #3 clk=1;
    #1 clk=0;
  end

  initial begin

    $dumpfile("wave.vcd");
    $dumpvars;
    #7
    for (i=0;i<9;i=i+2) begin
      #4
      num1 = i;
      num2 = i+1;
    end
    #30
    $finish;
  end

endmodule
