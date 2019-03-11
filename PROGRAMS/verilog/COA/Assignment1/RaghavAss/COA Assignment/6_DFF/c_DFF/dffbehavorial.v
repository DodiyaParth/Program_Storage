
module dffbehavorial(clk,reset,ip,op);
input ip; 
input clk; 
input reset;
output reg op;
	always @(posedge clk) 	
	begin
		if(reset == 1)
			op<=0;
		else
			op <= (ip);  
	end
endmodule 