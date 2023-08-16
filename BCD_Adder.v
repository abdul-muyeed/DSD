module BCD_Adder(sum,cout,a,b,cin);
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire[3:0]c,d;
wire[7:0]w;
bit4_AdderSub BA1(c,w[0],a,b,cin);
and(w[1],c[2],c[3]);
and(w[2],c[1],c[3]);
or(cout,w[0],w[1],w[2]);
assign d[0] = cin;
assign d[1] = cout;
assign d[2] = cout;
assign d[3] = cin;
bit4_AdderSub BA2(sum,w[4],c,d,cin);
endmodule

module TB_BCD_Adder;
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
BCD_Adder BA(sum,cout,a,b,cin);

initial begin
	a=4'b1010; b = 4'b0000; cin = 1'b0;
	#100 a=4'b1010; b = 4'b0010; cin = 1'b0;
	#100 a=4'b1010; b = 4'b0011; cin = 1'b0;
	#100 a=4'b1010; b = 4'b0111; cin = 1'b0;
	#100 a=4'b1010; b = 4'b1000; cin = 1'b0;
	end
endmodule

