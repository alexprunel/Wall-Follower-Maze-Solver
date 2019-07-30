`timescale 1ns / 1ps

module maze_structure(
    input           clk,            // synchronization signal
	  input [5:0]     starting_row,   // row index of starting position
    input [5:0]     starting_col,   // col index of starting position
    input [5:0]     row,            // row index of cell to be read/written
    input [5:0]     col,            // col index of cell to be read/written
    input           we,             // write enable: 1 - cell is written
	  input           oe,             // output enable: 1 - cell is read
    output          out);           // when reading: current cell value

parameter init = 1;                 // init data: 0 - don't init, 1 - init

reg[1:0] data[63:0][63:0];          // storage for maze data

integer data_file;                  // initialization file handle
integer i, j;
integer sp_row,sp_col;
reg cell_data;

initial begin
    if(init) begin
        // open file
        data_file = $fopen("test.data", "r");
        if(!data_file) begin
            $write("error opening data file\n");
            $finish;
        end
		// read starting point
        if($fscanf(data_file, "starting_row=%d\n", sp_row) != 1) begin
            $write("error reading seed value\n");
            $finish;
        end
		  if($fscanf(data_file, "starting_col=%d\n", sp_col) != 1) begin
            $write("error reading seed value\n");
            $finish;
        end
        // init data
        for(i = 0; i < 64; i = i + 1) begin
            for(j = 0; j < 64; j = j + 1) begin
					begin
                    // read data from file
                    if($fscanf(data_file, "%d\n", data[i][j]) != 1) begin
                        $write("error reading test data\n");
                        $finish;
                    end
                end
            end
        end

        // close file
        $fclose(data_file);
    end
end

// reading and writing are synchronous; new value is available in next cycle
always @(posedge clk) begin
    if(we)
        data[row][col] <= 2'b10;
    if(oe)
			cell_data <= data[row][col][0];
end

assign out = cell_data;
assign starting_row = sp_row;
assign starting_col = sp_col;


endmodule
