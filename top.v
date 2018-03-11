`timescale 1ns / 1ps

module top(input clk,output done);

wire [5:0] 	starting_col;
wire [5:0] 	starting_row;
wire [5:0] 	col;
wire [5:0] 	row;
wire 		maze_we;
wire 		maze_oe;
wire 		maze_in;

maze maze(	.clk(clk),
				.starting_col(starting_col),
				.starting_row(starting_row),
				.row(row),
				.col(col),
				.maze_oe(maze_oe),
				.maze_we(maze_we),
				.maze_in(maze_in),
				.done(done)	
			);
maze_structure maze_structure(.clk(clk),
										.starting_col(starting_col),
										.starting_row(starting_row),
										.row(row),
										.col(col),
										.oe(maze_oe),
										.we(maze_we),
										.out(maze_in)
										);	
endmodule
