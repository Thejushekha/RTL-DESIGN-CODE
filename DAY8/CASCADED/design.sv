module custom_counter (
    input clk,
    input reset,
    output reg [3:0] out
);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            out <= 4'd1;
        end else begin
            case (out)
                4'd1: out <= 4'd3;
                4'd3: out <= 4'd5;
                4'd5: out <= 4'd6;
                4'd6: out <= 4'd7;
                4'd7: out <= 4'd9;
                4'd9: out <= 4'd1; 
                default: out <= 4'd1; 
            endcase
        end
    end

endmodule