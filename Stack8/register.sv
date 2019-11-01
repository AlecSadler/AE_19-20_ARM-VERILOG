module register (output reg [0:7]outreg,input [0:7]inreg,input enable,input clk);

  initial begin
    outreg[0]=0;
    outreg[1]=0;
    outreg[2]=0;
    outreg[3]=0;
    outreg[4]=0;
    outreg[5]=0;
    outreg[6]=0;
    outreg[7]=0;
  end

  always @ ( posedge clk ) begin
    if (enable)
      outreg <= inreg;

  end

endmodule
