// Code your design here
module jk_ff_sync (
    input clk,
    input j,
    input k,
    input reset,      
    output reg q
);
    always @(posedge clk) begin
        if (reset)        
            q <= 1'b0;
        else begin
            case ({j, k})
                2'b00: q <= q;       
                2'b01: q <= 1'b0;   
                2'b10: q <= 1'b1;   
                2'b11: q <= ~q;      //
            endcase
        end
    end
endmodule
