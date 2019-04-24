function bool =  isTerminalNode(board)
	bool =  gameWon(board, 1) || gameWon(board, 2) || len(getValidLocations(board)) == 0;
end
