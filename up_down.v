module up_down(q,qn,clk,clr,m);
output [2:0]q,qn;
input clr,clk,m;
wire mn,a1,a2,b1,a3,a4;
not(mn,m);
JK_filpflop JK1(q[0],qn[0],1,1,clk,clr);
and(a1,q[0],mn);
and(a2,qn[0],m);
or(b1,a1,a2);
JK_filpflop JK2(q[1],qn[1],b1,b1,clk,clr);
and(a3,a1,q[1]);
and(a4,a2,qn[1]);
or(b2,a3,a4);
JK_filpflop JK3(q[2],qn[2],b2,b2,clk,clr);
endmodule

