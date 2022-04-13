module voter_tb;
reg [3:0] In_tb;
wire [3:1] Out_tb;
voter voter_1(In_tb,Out_tb);
initial
begin
    #10 In_tb=4'b0000;
    #10 In_tb=4'b0001;
    #10 In_tb=4'b0010;
    #10 In_tb=4'b0011;
    #10 In_tb=4'b0100;
    #10 In_tb=4'b0101;
    #10 In_tb=4'b0110;
    #10 In_tb=4'b0111;
    #10 In_tb=4'b1000;
    #10 In_tb=4'b1001;
    #10 In_tb=4'b1010;
    #10 In_tb=4'b1011;
    #10 In_tb=4'b1100;
    #10 In_tb=4'b1101;
    #10 In_tb=4'b1110;
    #10 In_tb=4'b1111;
end
initial
begin
    $dumpfile("voter.vcd");
    $dumpvars(0, voter_1);
end
endmodule
