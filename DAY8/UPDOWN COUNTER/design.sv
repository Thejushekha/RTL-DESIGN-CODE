module up_down_counter (
    input clk,
    input reset,
    output reg [3:0] out,
  	output reg dir
);

    

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            out <= 4'd1;
            dir <= 1'b1; 
        end else begin
            if (dir) begin
                if (out == 4'd6)
                    dir <= 0;  
                else
                    out <= out + 1;
            end else begin
                if (out == 4'd0)
                    dir <= 1; 
                else
                    out <= out - 1;
            end
        end
    end

endmodule
