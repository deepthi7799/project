# Truncate Multiplier using MUX based Full Adder
module truncatedmux(
input [7:0] a,
input [7:0] b,
output [15:8] p
);
wire
d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14,d15,d16,d17,d18,d19,d2
0,d21,d22,d23,d24,d25,d26,d27,d28,d29,d30,d31,d32,d33,d34,d35,d36,d3
7,d38,d39,d40,d41,d42,d43;
wire
w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w
18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32,w3
3,w34,w35,w36,w37,w38,w39,w40,w41,w42,w43,w44,w45,w46,w47,w48
,w49,w50,w51,w52,w53,w54,w55,w56,w57,w58,w59,w60,w61;
and(d1,a[5],b[0]);
and(d2,a[6],b[0]);
and(d3,a[7],b[0]);
and(d4,a[6],b[2]);
and(d5,a[7],b[1]);
and(d6,a[6],b[3]);
and(d7,a[7],b[2]);
and(d8,a[6],b[4]);
and(d9,a[7],b[3]);
and(d10,a[6],b[5]);
and(d11,a[7],b[4]);
and(d12,a[6],b[6]);
and(d13,a[7],b[5]);
and(d14,a[6],b[7]);
and(d15,a[7],b[6]);
and(d16,a[5],b[1]);
and(d17,a[5],b[2]);
and(d18,a[5],b[3]);
and(d19,a[5],b[4]);
and(d20,a[5],b[5]);
and(d21,a[5],b[6]);
and(d22,a[5],b[7]);
and(d23,a[4],b[2]);
and(d24,a[4],b[3]);
and(d25,a[4],b[4]);
and(d26,a[4],b[5]);
and(d27,a[4],b[6]);
and(d28,a[4],b[7]);
and(d29,a[3],b[3]);
and(d30,a[3],b[4]);
and(d31,a[3],b[5]);
and(d32,a[3],b[6]);
and(d33,a[3],b[7]);
and(d34,a[2],b[4]);
and(d35,a[2],b[5]);
and(d36,a[2],b[6]);
and(d37,a[2],b[7]);
and(d38,a[1],b[5]);
and(d39,a[1],b[6]);
and(d40,a[1],b[7]);
and(d41,a[0],b[6]);
and(d42,a[0],b[7]);
and(d43,a[7],b[7]);
full_adder f1(d1,d2,d3,w1,w2);
full_adder f2(w1,d4,d5,w3,w4);
full_adder f3(w3,d6,d7,w5,w6);
full_adder f4(w5,d8,d9,w7,w8);
full_adder f5(w7,d10,d11,w9,w10);
full_adder f6(w9,d12,d13,w11,w12);
full_adder f7(w11,d14,d15,w13,w14);
full_adder f8(d16,w2,d17,w15,w16);
full_adder f9(w15,w4,d18,w17,w18);
full_adder f10(w17,w6,d19,w19,w20);
full_adder f11(w19,w8,d20,w21,w22);
full_adder f12(w21,w10,d21,w23,w24);
full_adder f13(w23,w12,d22,w25,w26);
full_adder f14(d23,w16,d24,w27,w28);
full_adder f15(w27,w18,d25,w29,w30);
full_adder f16(w29,w20,d26,w31,w32);
full_adder f17(w31,w22,d27,w33,w34);
full_adder f18(w33,w24,d28,w35,w36);
full_adder f19(d29,w28,d30,w37,w38);
full_adder f20(w37,w30,d31,w39,w40);
full_adder f21(w39,w32,d32,w41,w42);
full_adder f22(w41,w34,d33,w43,w44);
full_adder f23(d34,w38,d35,w45,w46);
full_adder f24(w45,w40,d36,w47,w48);
full_adder f25(w47,w42,d37,w49,w50);
full_adder f26(d38,w46,d39,w51,w52);
full_adder f27(d40,w48,w51,w53,w54);
full_adder f28(w52,d41,d42,w55);
full_adder f29(w54,w55,1,p[8],w56);
full_adder f30(w50,w53,w56,p[9],w57);
full_adder f31(w57,w49,w44,p[10],w58);
full_adder f32(w43,w36,w58,p[11],w59);
full_adder f33(w26,w35,w59,p[12],w60);
full_adder f34(w14,w25,w60,p[13],w61);
full_adder f35(w13,d43,w61,p[14],p[15]);
endmodule
module full_adder(u1,u2,u3,sum2,carry2);
input u1,u2,u3;
output sum2,carry2;
reg sum2,carry2;
wire g1;
not(g1,u3);
always@(u1 or u2 or u3)
begin
	case({u1,u2})
		2'b00 :
			begin
				sum2=u3;
				carry2=0;
			end
		2'b01 :
			begin
				sum2=g1;
				carry2=u3;
			end
		2'b10 :
			begin
				sum2=g1;
				carry2=u3;
			end
		2'b11 :
			begin
				sum2=u3;
				carry2=1;
			end
	endcase
end
endmodule






# Testbench code for Truncated Multiplier using MUX based Full Adder
module truncatedmuxtb;
// Inputs
reg [7:0] a;
reg [7:0] b;
// Outputs
wire [15:8] p;
// Instantiate the Unit Under Test (UUT)
truncatedmux uut (
.a(a),
.b(b),
.p(p)
);
initial begin
// Initialize Inputs
a = 0;
b = 0;
// Wait 100 ns for global reset to finish
#100;a=8'b11000000;b=8'b01000000;
#300;a=8'b11100000;b=8'b01100000;
// Add stimulus here
end
endmodule
