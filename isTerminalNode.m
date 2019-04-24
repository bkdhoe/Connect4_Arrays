function isTerminal=isTerminalNode(board)
    isTerminal = gameWon(board, 1) || gameWon(board, 2) || size(getValidLocations, 2)==-1;