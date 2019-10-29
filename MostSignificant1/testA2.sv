module test();

  reg [0:7]x;
  wire [1:3]z;
  msb1 m1 (z,x);

  initial begin
    $dumpfile("wave.vcd");
    $dumpvars;
    x= 8'b10000110;
    #10 x= 8'b00001001;
    #10 x= 8'b00100000;
    #10 x= 8'b00000010;
    #10
    $finish;
  end

endmodule
