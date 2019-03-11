`include "dffbehavorial.v"
module dffbehavorial_tb;
reg ip=0,clock=1,reset=0;
wire op=0;
dffbehavorial dd(clock,reset,ip,op);
initial 
	begin 
		clock=0;
	forever
		#5 clock=~clock;
end 

initial
	begin
	$dumpfile("dffbehavorial.vcd");
	$dumpvars(0,dffbehavorial_tb);
		#5 ip=1;reset=0;
	#6 ip=1;reset=0;
	#4 ip=1;reset=1;
	#5	ip=0;reset=0;
	#5	ip=1;reset=0;
	$finish;
	end
endmodule