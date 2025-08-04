module fsm(input clk,input rst,input initial_bit,output out);
reg [2:0]present_state,next_state;
parameter s0=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
always@(posedge clk or posedge rst)begin
if (rst)
present_state<=s0;
else
present_state<=next_state;
end
always@(*)begin
case(present_state)
s0:next_state=(initial_bit==1)?s1:s0;
s1:next_state=(initial_bit==1)?s2:s0;
s2:next_state=(initial_bit==0)?s3:s2;
s3:next_state=(initial_bit==1)?s4:s3;
s4:next_state=s0;
default:next_state=s0;
endcase
end
assign out=(present_state==s4)?1:0;
endmodule

