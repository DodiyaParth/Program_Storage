`include "fullAdder.v"
module fullAdder_tb;
	reg op1,op2,cin;
	wire s,c;
	fullAdder fa(op1,op2,cin,s,c);
	initial
		begin
		$dumpfile("fullAdderAdder.vcd");
		$dumpvars(0, fullAdder_tb);
		$display("op1 op2 cin    sum carry");
		$monitor(op1,"   ",op2,"   ",cin,"      ",s,"    ",c);
		op1 = 1'b0;
		op2 = 1'b0;
		cin = 1'b0;
	
		#10
		op1 = 1'b0;
		op2 = 1'b0;
		cin = 1'b1;	
		
		#10
		op1 = 1'b0;
		op2 = 1'b1;
		cin = 1'b0;
		
		#10
		op1 = 1'b0;
		op2 = 1'b1;
		cin = 1'b1;
		
		#10
		op1 = 1'b1;
		op2 = 1'b0;
		cin = 1'b0;
	
		#10
		op1 = 1'b1;
		op2 = 1'b0;
		cin = 1'b1;	
		
		#10
		op1 = 1'b1;
		op2 = 1'b1;
		cin = 1'b0;
		
		#10
		op1 = 1'b1;
		op2 = 1'b1;
		cin = 1'b1;
		
		#10;
		$finish;
		end
endmodule