module tb_fsm;
reg clk, rst, initial_bit;
wire out;
fsm uut(clk, rst, initial_bit, out);
initial begin
clk = 0;
forever #5 clk = ~clk;
end
initial begin
$monitor("%0t,%b,%b,%b,%b",$time,clk,rst,initial_bit,out);
rst = 1;
initial_bit = 0;
#10 rst = 0;
#10 initial_bit = 1;
#10 initial_bit = 1;
#10 initial_bit = 0;
#10 initial_bit = 1; 
#10 initial_bit = 0;
#20 $finish;
end
endmodule
