module bit4_AdderSub(sum,cout,a,b,cin);
input [3:0] a,b;
input cin;
output [3:0] sum;
output cout;
wire [7:0]w,c;
xor(w[0],b[0],cin);
xor(w[1],b[1],cin);
xor(w[2],b[2],cin);
xor(w[3],b[3],cin);
 Full_Adder f1(sum[0],c[0], a[0],w[0], cin);
 Full_Adder f2(sum[1], c[1], a[1],w[1], c[0]);
 Full_Adder f3(sum[2], c[2], a[2],w[2], c[1]);
 Full_Adder f4(sum[3], cout, a[3],w[3], c[2]);

endmodule

module TB_bit4_AdderSub;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

bit4_AdderSub as(sum,cout,a,b,cin);

initial

begin
a=4'b1000; b=4'b0010; cin=1;
#100 a=4'b1010; b=4'b0010; cin=1;
#100 a=4'b0010; b=4'b1000; cin=1;
#100 a=4'b1000; b=4'b1000; cin=1;
#100 a=4'b0001; b=4'b0111; cin=1;
end
endmodule
