`timescale 1ns / 1ps

module maze(
input 		clk,
input[5:0] 	starting_col, starting_row, 		// indicii punctului de start
input 		maze_in, 							// oferă informații despre punctul de coordonate [row, col]
output[5:0] row, col, 							// selectează un rând si o coloană din labirint
output 		maze_oe,							// output enable (activează citirea din labirint la rândul și coloana date) - semnal sincron	
output 		maze_we, 							// write enable (activează scrierea în labirint la rândul și coloana  date) - semnal sincron
output 		done);		 						// ieșirea din labirint a fost gasită; semnalul rămane activ 

//TODO implementare

endmodule