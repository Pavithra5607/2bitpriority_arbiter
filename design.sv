module priority_arbiter_2bit (
    input  [1:0] req,     
    output reg [1:0] grant 
);

    always @(*) begin
        casez (req)
            2'b1?: grant = 2'b10; 
            2'b01: grant = 2'b01; 
            default: grant = 2'b00; 
        endcase
    end

endmodule