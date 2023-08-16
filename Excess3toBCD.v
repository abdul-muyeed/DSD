module Excess3toBCD(b,e);
input [3:0]e;
output [3:0]b;
wire [7:0]w;
not(b[0],e[0]);
xor(b[1],e[1],e[0]);
and(w[0],e[0],e[1],e[2]);
not(w[1],e[1]);
not(w[2],e[2]);
not(w[3],e[0]);
and(w[4],w[1],w[2]);
and(w[5],w[3],w[2]);
or(b[2],w[0],w[4],w[5]);
and(w[6],e[0],e[1],e[3]);
and(w[7],e[3],e[2]);
or(b[3],w[7],w[6]);
endmodule