# Wall-Follower-Maze-Solver
A Verilog algorithm to solve a maze using right-hand hand rule.

Enuntul complet al problemei se afla in maze-solver.pdf.
Algoritmul de rezolvare se afla in fisierul maze.v. Celelalte fisiere sunt parte a proiectului/temei, care implementeaza labirintul(matricea de 0 si 1), respectiv functionalitatea variabilelor declarate in modul:
  
  input clk,
  input[5:0] starting_col, starting_row, // indicii punctului de start
  input maze_in, // oferă informații despre punctul de coordonate [row, col]
  output   reg[5:0] row, col, // selectează un rând si o coloană din labirint
  output 	reg	maze_oe,// output enable (activează citirea din labirint la rândul și coloana date) - semnal sincron	
  output 	reg	maze_we, // write enable (activează scrierea în labirint la rândul și coloana  date) - semnal sincron
  output 	reg	done);      // ieșirea din labirint a fost gasită; semnalul rămane activ 

Din acest proiect, partea realizata de mine este maze.v.Pentru a rula proiectul aveti nevoie de Vivado ->http://www.xilinx.com/support/download.html
Dupa instalare, rulati top.xise.

Mai multe detalii gasiti in fisierul algorithm.







  
