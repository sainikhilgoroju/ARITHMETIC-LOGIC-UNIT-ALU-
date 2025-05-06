module alu (
    input [3:0] A,
    input [3:0] B,
    input [2:0] sel,
    output reg [3:0] Y
);
    always @(*) begin
        case(sel)
            3'b000: Y = A + B;       // ADD
            3'b001: Y = A - B;       // SUB
            3'b010: Y = A & B;       // AND
            3'b011: Y = A | B;       // OR
            3'b100: Y = ~A;          // NOT
            default: Y = 4'b0000;
        endcase
    end
endmodule
