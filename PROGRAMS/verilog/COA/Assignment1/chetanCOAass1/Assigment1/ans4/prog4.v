`include "prog3.v"

module full_add(a,b,c,ca,sum1);
input a;
input b;
input c;
inout sumo;
inout co;
output sum1;
inout c1;
output ca;

half_add A(a,b,sumo,co);

half_add B(sumo,c,sum1,c1);

or C(ca,c1,co);

endmodule 
