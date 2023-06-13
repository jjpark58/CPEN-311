`default_nettype none
module shared_access_to_one_state_machine #(
  parameter N = 32,
  parameter M = 8
) (
  output reg [(N-1):0] output_arguments,
  output start_target_state_machine,
  input target_state_machine_finished,
  input sm_clk,
  input  logic start_request_a,
  input  logic start_request_b,
  output logic finish_a,
  output logic finish_b,
  output logic reset_start_request_a,
  output logic reset_start_request_b,
  input [(N-1):0] input_arguments_a,
  input [(N-1):0] input_arguments_b,
  output reg [(M-1):0] received_data_a,
  output reg [(M-1):0] received_data_b,
  input reset, // async active high reset
  input [M-1:0] in_received_data
);

logic select_b_output_parameters;
logic register_data_a_enable;
logic register_data_b_enable;

logic [11:0] state;

localparam check_start_a      = 12'b0000_0000_0000;
localparam check_start_b      = 12'b0001_0000_0001;
localparam give_start_a       = 12'b0010_0000_0110;
localparam give_start_b       = 12'b0011_0000_1011;
localparam wait_for_finish_a  = 12'b0100_0000_0000;
localparam wait_for_finish_b  = 12'b0101_0000_0001;
localparam register_data_a    = 12'b0110_0100_0000;
localparam register_data_b    = 12'b0111_1000_0001;
localparam give_finish_a      = 12'b1000_0001_0000;
localparam give_finish_b      = 12'b1001_0010_0001;

assign select_b_output_parameters = state[0];
assign start_target_state_machine = state[1];
assign reset_start_request_a      = state[2];
assign reset_start_request_b      = state[3];
assign finish_a                   = state[4];
assign finish_b                   = state[5];
assign register_data_a_enable     = state[6];
assign register_data_b_enable     = state[7];

always_ff @( posedge sm_clk or posedge reset ) begin
  if (reset) begin
    state <= check_start_a;
  end else begin
    case (state)
      check_start_a:  if (start_request_a) state <= give_start_a;
                      else state <= check_start_b;

      check_start_b:  if (start_request_b) state <= give_start_b;
                      else state <= check_start_a;

      give_start_a: state <= wait_for_finish_a;

      give_start_b: state <= wait_for_finish_b;

      wait_for_finish_a:  if (target_state_machine_finished) state <= register_data_a;
                          else state <= wait_for_finish_a;
      
      wait_for_finish_b:  if (target_state_machine_finished) state <= register_data_b;
                          else state <= wait_for_finish_b;
      
      give_finish_a: state <= check_start_b;

      give_finish_b: state <= check_start_a;
      default: state <= check_start_a;
    endcase
  end
end

assign output_arguments = (select_b_output_parameters) ? input_arguments_b : input_arguments_a;

always_ff @( posedge sm_clk ) begin
  if (register_data_a_enable) begin
    received_data_a <= in_received_data;
  end
end

always_ff @( posedge sm_clk ) begin
  if (register_data_b_enable) begin
    received_data_b <= in_received_data;
  end
end

endmodule
`default_nettype wire
