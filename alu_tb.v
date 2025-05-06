module alu_tb;
    reg [3:0] A, B;
    reg [2:0] sel;
    wire [3:0] Y;

    alu uut (.A(A), .B(B), .sel(sel), .Y(Y));

    initial begin
        A = 4'b0101; B = 4'b0011;

        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;

        $stop;
    end
endmodule
