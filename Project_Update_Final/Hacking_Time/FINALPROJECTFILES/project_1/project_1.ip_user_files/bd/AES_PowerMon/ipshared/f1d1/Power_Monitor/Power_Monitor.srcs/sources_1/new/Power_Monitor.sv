`timescale 1ns / 1ps

(* DONT_TOUCH = "yes" *) 
module Power_Monitor(clk, enable, avg_ro_freq);
    input wire clk;
    input wire enable;
  
    (* DONT_TOUCH = "yes" *) output reg [31:0] avg_ro_freq;
    
    wire [9:0] enables;
    wire [9:0] clks;
    
   
    (* DONT_TOUCH = "yes" *) reg [31:0] power_readings [9:0];
    
    (* DONT_TOUCH = "yes" *) one_to_100 enable_exapand(.in(enable), .out(enables));
    
    (* DONT_TOUCH = "yes" *) one_to_100 clk_expand(.in(clk), .out(clks));
    
    (* DONT_TOUCH = "yes" *) freq_ro RO[9:0](.clk(clks), .ro_enable(enables), .freq(power_readings));
    
    (* DONT_TOUCH = "yes" *) calc_avg bingbong(.power_readings(power_readings), .power_avg(avg_ro_freq));
endmodule

(* DONT_TOUCH = "yes" *) 
module calc_avg(power_readings, power_avg);
    (* DONT_TOUCH = "yes" *) input  [31:0] power_readings [9:0];
    (* DONT_TOUCH = "yes" *) output reg [31:0] power_avg;
    
    (* DONT_TOUCH = "yes" *) reg [63:0] sum;
    integer i;
    always_comb begin
        for(i = 0; i < 10; i = i + 1) begin
            sum = sum + power_readings[i];
        end
        
        power_avg = sum / 32'd10;
    end
endmodule

(* DONT_TOUCH = "yes" *) 
module one_to_100(in, out);
    
    input in;
    output reg [9:0] out; 
    
    integer i;
    
    always@(in) begin
        for(i = 0; i < 10; i = i+1) begin
            if(in) begin out[i] = 1'b1; end
            else   begin out[i] = 1'b0; end
        end
    end
endmodule

(* DONT_TOUCH = "yes" *) 
module freq_ro(clk, ro_enable, freq);
    input clk, ro_enable;
    output[31:0] freq;
    
    wire ro_out;
    wire internal_reset;
    (* DONT_TOUCH = "yes" *) ring_osc(.enable(ro_enable), .osc(ro_out));
    (* DONT_TOUCH = "yes" *) reset_enable(.clk(clk), .reset_out(internal_reset));
    (* DONT_TOUCH = "yes" *) counter(.trigger(ro_out), .reset(internal_reset), .count(freq));
    
endmodule
    
(* DONT_TOUCH = "yes" *)
module ring_osc(enable, osc);
    input enable;
    output osc;
    
    wire and_out;
    
    (* DONT_TOUCH = "yes" *) and_1(.a(enable), .b(osc), .out(and_out));
    (* DONT_TOUCH = "yes" *) inv_1(.in(and_out), .out(osc));

endmodule
    
(* DONT_TOUCH = "yes" *) 
module reset_enable(clk, reset_out);
    
    input clk;
    output reg reset_out;
    
    reg [31:0] clk_cycles;
    reg in_reset;
    
    (* DONT_TOUCH = "yes" *) counter(.trigger(clk), .reset(in_reset), .count(clk_cycles));
    
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
    
(* DONT_TOUCH = "yes" *) 
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

(* DONT_TOUCH = "yes" *) 
module and_1(a, b, out);
    input a, b;
    output reg out;
    (* MARK_DEBUG = "yes" *)
    assign out = a & b;
    
endmodule

Library UNISIM;

(* DONT_TOUCH = "yes" *) 
module inv_1(in, out);
    input in;
    output reg out;
//    always@(in) begin
//        out = ~in;
//    end
    LUT1 #(.INIT(2'b01))  // Specify LUT Contents for an inverter
    LUT1_inst 
    (
       .O(out),   // LUT general output
       .I0(in)  // LUT input
    );
endmodule

