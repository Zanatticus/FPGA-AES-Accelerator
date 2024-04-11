`timescale 1ns / 1ps

module Power_Monitor(clk, enable, avg_ro_freq);
    input clk, enable;
    output[31:0] avg_ro_freq;
    
    wire [9999:0] enables, clks;
    reg [31:0] power_readings [9999:0];
    
    one_to_100 enable_exapand(.in(enable), .out(enables));
    one_to_100 clk_expand(.in(clk), .out(clks));
    freq_ro RO[9999:0](.clk(clks), .ro_enable(enables), .freq(power_readings));
    calc_avg(.power_readings(power_readings), .power_avg(avg_ro_freq));
endmodule
    
    
    
//TODO: Make a module to instantiate and take the average of 100 ring oscillators

module calc_avg(power_readings, power_avg);
    input  [31:0] power_readings [9999:0];
    output reg [31:0] power_avg;
    
    reg [63:0] sum;
    integer i;
    always@(power_readings) begin
        for(i = 0; i < 100; i = i + 1) begin
            sum = sum + power_readings[i];
        end
        
        power_avg = sum / 2'h64;
    end
endmodule

module one_to_100(in, out);
    
    input in;
    output reg [9999:0] out; 
    
    integer i;
    
    always@(in) begin
        for(i = 0; i < 100; i = i+1) begin
            if(in) begin out[i] = 1'b1; end
            else   begin out[i] = 1'b0; end
        end
    end
endmodule

module freq_ro(clk, ro_enable, freq);
    input clk, ro_enable;
    output[31:0] freq;
    
    wire ro_out;
    wire internal_reset;
    ring_osc(.enable(enable), .osc(ro_out));
    reset_enable(.clk(clk), .reset_out(internal_reset));
    counter(.trigger(ro_out), .reset(internal_reset), .count(freq));
    
endmodule
    
module ring_osc(enable, osc);
    input enable;
    output osc;
    
    wire and_out;
    
    and_1(.a(enable), .b(osc), .out(and_out));
    inv_1(.in(and_out), .out(osc));

endmodule
    
module reset_enable(clk, reset_out);
    
    input clk;
    output reg reset_out;
    
    reg [31:0] clk_cycles;
    reg in_reset;
    
    counter(.trigger(clk), .reset(in_reset), .count(clk_cycles));
    
    always@(clk_cycles) begin
        if(clk_cycles >= 32'h000003E8) begin
            reset_out = 1'b1;
            in_reset = 1'b1;
        end
        else begin
            reset_out = 1'b0;
            in_reset = 1'b0;
        end
    end
endmodule
    
module counter (trigger, reset, count);
    input trigger;
    input reset;
    output reg [31:0] count;
    
    always @(posedge trigger or posedge reset) begin
        if (reset) begin
            count <= 0;
        end 
        
        else begin
            count <= count + 1;
        end
    end
endmodule



module and_1(a, b, out);
    input a, b;
    output reg out;
    always@(a, b) begin
        out = a & b;
    end
endmodule

module inv_1(in, out);
    input in;
    output reg out;
    always@(in) begin
        out = ~in;
    end
endmodule

