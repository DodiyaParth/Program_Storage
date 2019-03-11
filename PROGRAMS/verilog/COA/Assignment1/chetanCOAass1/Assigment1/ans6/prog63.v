module d_ff(clk,d,q);
input clk;
input d;
output q;

wire d,clk;
reg q;

always @(posedge clk)
begin
	q<=d;
end

endmodule



