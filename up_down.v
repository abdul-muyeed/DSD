// first force clr=0. Then clr=1. m=0 => count up m=1 => count down;

module up_down(q,qn,clk,clr,m);
output [2:0]q,qn;
input clr,clk,m;
wire mn;
wire [4:0]a,b;
not(mn,m);
JK_filpflop JK1(q[0],qn[0],1,1,clk,clr);
and(a[1],q[0],mn);
and(a[2],qn[0],m);
or(b[1],a[1],a[2]);
JK_filpflop JK2(q[1],qn[1],b[1],b[1],clk,clr);
and(a[3],a[1],q[1]);
and(a[4],a[2],qn[1]);
or(b[2],a[3],a[4]);
JK_filpflop JK3(q[2],qn[2],b[2],b[2],clk,clr);
endmodule

