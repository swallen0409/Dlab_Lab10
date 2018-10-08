`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:33:03 01/06/2017 
// Design Name: 
// Module Name:    frog 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module frog_mona(
	input clk,
	input rst,
	input [10:0]col,
	input [10:0]row,
	input [10:0]frog_s,
	input [10:0]frog_e,
	input [10:0]frog_up,
	input [10:0]frog_down,
	output fro
    );
reg [10:0]row_count;
reg [10:0]col_count;
reg [63:0]mona;//64*49
assign fro=(row>frog_up-2&&row<=frog_down-2&&col>frog_s&&col<=frog_e)?mona[col_count]:0;

always@(posedge clk) begin
	if(rst)
		col_count<=0;
	else begin
		case(col)
			frog_s+1:	col_count<=63;
			frog_s+2:	col_count<=62;
			frog_s+3:	col_count<=61;
			frog_s+4:	col_count<=60;
			frog_s+5:	col_count<=59;
			frog_s+6:	col_count<=58;
			frog_s+7:	col_count<=57;
			frog_s+8:	col_count<=56;
			frog_s+9:	col_count<=55;
			frog_s+10:	col_count<=54;
			frog_s+11:	col_count<=53;
			frog_s+12:	col_count<=52;
			frog_s+13:	col_count<=51;
			frog_s+14:	col_count<=50;
			frog_s+15:	col_count<=49;
			frog_s+16:	col_count<=48;
			frog_s+17:	col_count<=47;
			frog_s+18:	col_count<=46;
			frog_s+19:	col_count<=45;
			frog_s+20:	col_count<=44;
			frog_s+21:	col_count<=43;
			frog_s+22:	col_count<=42;
			frog_s+23:	col_count<=41;
			frog_s+24:	col_count<=40;
			frog_s+25:	col_count<=39;
			frog_s+26:	col_count<=38;
			frog_s+27:	col_count<=37;
			frog_s+28:	col_count<=36;
			frog_s+29:	col_count<=35;
			frog_s+30:	col_count<=34;
			frog_s+31:	col_count<=33;
			frog_s+32:	col_count<=32;
			frog_s+33:	col_count<=31;
			frog_s+34:	col_count<=30;
			frog_s+35:	col_count<=29;
			frog_s+36:	col_count<=28;
			frog_s+37:	col_count<=27;
			frog_s+38:	col_count<=26;
			frog_s+39:	col_count<=25;
			frog_s+40:	col_count<=24;
			frog_s+41:	col_count<=23;
			frog_s+42:	col_count<=22;
			frog_s+43:	col_count<=21;
			frog_s+44:	col_count<=20;
			frog_s+45:	col_count<=19;
			frog_s+46:	col_count<=18;
			frog_s+47:	col_count<=17;
			frog_s+48:	col_count<=16;
			frog_s+49:	col_count<=15;
			frog_s+50:	col_count<=14;
			frog_s+51:	col_count<=13;
			frog_s+52:	col_count<=12;
			frog_s+53:	col_count<=11;
			frog_s+54:	col_count<=10;
			frog_s+55:	col_count<=9;
			frog_s+56:	col_count<=8;
			frog_s+57:	col_count<=7;
			frog_s+58:	col_count<=6;
			frog_s+59:	col_count<=5;
			frog_s+60:	col_count<=4;
			frog_s+61:	col_count<=3;
			frog_s+62:	col_count<=2;
			frog_s+63:	col_count<=1;
			frog_s+64:	col_count<=0;
			default:	col_count<=col_count;
		endcase
	end
end

always@(posedge clk) begin
	if(rst)
		mona<=0;
	else if(row>frog_up-2&&row<=frog_down-2) begin
		case(row)
			frog_up-1:	mona<=64'b0000000000000000000000000000011111110000000000000000000000000000;
			frog_up:	mona<=64'b0000000000000000000000011111111111111111110000000000000000000000;
			frog_up+1:	mona<=64'b0000000000000000000111111111111111111111111110000000000000000000;
			frog_up+2:	mona<=64'b0000000000000000011111111111111111111111111111100000000000000000;
			frog_up+3:	mona<=64'b0000000000000001111111111111111111111111111111111100000000000000;
			frog_up+4:	mona<=64'b0000000000000011111111111111111111111111111111111110000000000000;
			frog_up+5:	mona<=64'b0000000000000111111111111111111111111111111111111111000000000000;
			frog_up+6:	mona<=64'b0000000000001111111000000000011111111111111111111111110000000000;
			frog_up+7:	mona<=64'b0000000000011111000000000001100111111111111111111111111100000000;
			frog_up+8:	mona<=64'b0000000000111101000000000000000101111111111111111111111110000000;
			frog_up+9:	mona<=64'b0000000001111000000000000000000001111111111111111111111111000000;
			frog_up+10:	mona<=64'b0000000011111000000000000000000001111111111111111111111111000000;
			frog_up+11:	mona<=64'b0000000111110000000000000000000001111111111111111111111110000000;
            frog_up+12:	mona<=64'b0000001111110000000000000000000001111111111111111111111111000000;
			frog_up+13:	mona<=64'b0000001111110000000000000000000000111111111111111111111111000000;
			frog_up+14:	mona<=64'b0000001111110000000000000000000000101111111111111111111111100000;
           	frog_up+15:	mona<=64'b0000001111110000000000000000000000101111111111111111111111100000;
            frog_up+16:	mona<=64'b0000001111110000000000000000000010001111111111111111111111100000;
            frog_up+17:	mona<=64'b0000001111110000000000000000000000001111111111111111111111000000;
			frog_up+18:	mona<=64'b0000001111110000000000000000000000001011111111111111111111100000;
			frog_up+19:	mona<=64'b0000011111110000000000000000000000001001111111111111111111110000;
			frog_up+20:	mona<=64'b0000011111100000000000000000000000001111111111111111111111110000;
			frog_up+21:	mona<=64'b0000011111110000000000000011111110111111111111111111111111110000;
			frog_up+22:	mona<=64'b0000011111101111111000000111111111111111111111111111111111110000;
            frog_up+23:	mona<=64'b0000011111111111111000001111111111111111111111111111111111110000;
			frog_up+24:	mona<=64'b0000011111111111111100001111111111111111111111111111111111110000;
			frog_up+25:	mona<=64'b0000111111111101111110001110000011111111111111111111111111110000;
			frog_up+26:	mona<=64'b0000011111111000111110011110000011111101111111111111111111110000;
			frog_up+27:	mona<=64'b0000111111011000111100001111001111111000011111111111111111111100;
			frog_up+28:	mona<=64'b0000111111000000000000001110000000000000111111111111111111111000;
			frog_up+29:	mona<=64'b0000111111000000000000011100000000000001111111111111111111111000;
            frog_up+30:	mona<=64'b0000111111100000000000001001000000000001111111111111111111111000;
			frog_up+31:	mona<=64'b0000011101100000000000000110000000000000111111111111111111111000;//
			frog_up+32:	mona<=64'b0000111111100000000000001001000000000001111111111111111111111000;
			frog_up+33:	mona<=64'b0000011101100000000000000110000000000000111111111111111111111000;
			frog_up+34:	mona<=64'b0001010111110000000000001111000000000001111111111111111111110110;
			frog_up+35:	mona<=64'b0001111111110000000100011111000000000011111111111111111011111100;
			frog_up+36:	mona<=64'b0001111111110000000111111111000000000111111101111011110111111010;
			frog_up+37:	mona<=64'b0001111111111000000011111111000000001111011011101111111111101110;
            frog_up+38:	mona<=64'b0000111111111100000111111111000000001111011011101111111111101110;
            frog_up+39:	mona<=64'b0000111111111110000111111111000000001111011011101111111111101110;
			frog_up+40:	mona<=64'b0001101111111110000000111111100000011111101111111110111111111110;
			frog_up+41:	mona<=64'b0001111101111110100010111111100000011111111111110111111111111010;
			frog_up+42:	mona<=64'b0000111110111110001111111111100000011111111111111110111110101110;
            frog_up+43:	mona<=64'b0001111111111111000011111111100000111111011111111111111111111110;
			frog_up+44:	mona<=64'b0000111111111111100001111111000010011111011111111111111111111110;
			frog_up+45:	mona<=64'b0000111110111110100001110010000000110111111111011111111111111110;
            frog_up+46:	mona<=64'b0001111111101110101000000000000001101111111111111111111111011110;
			frog_up+47:	mona<=64'b0001111111101110100000000000010011101111111111111111111111011110;
			frog_up+48:	mona<=64'b0010111111111111110000000000010011101111011111101111111011111110;
			frog_up+49:	mona<=64'b0001111110111111111100000000000110111111111111111111111111011110;
			frog_up+50:	mona<=64'b0010110101111111111111000000011011111111111111111111111110111110;
			frog_up+51:	mona<=64'b0000101111111111111111100001111111111101111111111111111111111110;
			frog_up+52:	mona<=64'b0001111011111111111111111111111111111111101110111111111111111110;
			frog_up+53:	mona<=64'b0001111110111111111111111111111011011111111111111111110111111110;
			frog_up+54:	mona<=64'b0001111111111111111111111101111111111111111111111110111111111010;
			frog_up+55:	mona<=64'b0001111111111111111111111000011111110111111111011111111111110110;
			frog_up+56:	mona<=64'b0001111010111111111111111000000111111111111111011111110111111110;
			frog_up+57:	mona<=64'b0001111111101110111111111100000000010000001101111111111101111110;
			frog_up+58:	mona<=64'b0001111111111111111111111101000000000000001011111111111111111110;
            frog_up+59:	mona<=64'b0001111111111111111111111101000000000000000011111111111111111110;
            frog_up+60:	mona<=64'b0001111111111111111111111101000000000000000011111111111111111110;
            frog_up+61:	mona<=64'b0001111111111111111111111101111111111110011001111111111111111110;
            frog_up+62:	mona<=64'b0001111111111111111111111111111111111111111111111111111111111110;
			default:	mona<=mona;
		endcase
	end
	else
		mona<=mona;
end

endmodule
