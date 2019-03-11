module hellow();
initial begin
	$display ("Time = %g Hello World \n",$time);
	#100 $finish;	
	end

always begin
	#10 $display ("Time = %g Hello World \n",$time);
	end

endmodule
