module test();

  reg [0:7]x;
  wire z;
  msb1 m11 (z,x);

  parameter quattro = 8'b00000100;
  parameter sedici = 8'b00010000;
  parameter sessanta4 = 8'b01000000;
  parameter sette = 8'b00000111;

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
    x=sette;
    #10 x=quattro;
    #10 x=sette;
    #10 x=sessanta4;
    #10 x=sedici;
    #10 x=sette;
    #10
    $finish;
  end

endmodule
