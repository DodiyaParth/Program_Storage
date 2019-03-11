`include "d_latch.v"


module d_flipflop(clk,d,q);
input clk,d;
output q;
wire y;
d_latch m1(clk,d,y);
d_latch m2(clk,y,q);

endmodule
