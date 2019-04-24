function [column, value]=minimax(board, depth, alpha, beta, maximizingPlayer)
    validLocations=getValidLocations(board);
    isTerminal=isTerminalNode(board);
    
    AIPiece=2;
    playerPiece=1;
    
    if depth==0 || isTerminal
        if isTerminal
            if(gameWon(board, AIPiece))
                column=-1;
                value=100000000000000;
                return
            elseif(gameWon(board, playerPiece))
                column=-1;
                value=-100000000000000;
                return
            else % game is over, no more valid moves
                column=-1;
                value=0;
                return
            end
        else % depth is 0
            column=-1;
            value=scorePosition(board, AIPiece);
            return
        end
    end
    
    if maximizingPlayer
        value=-Inf;
        column = randi(size(validLocations,2));
        for col=validLocations
            row=canMoveHere(col);
            boardCopy=board;
            boardCopy(row, col)=AIPiece;
            newScore=minimax(boardCopy, depth-1, alpha, beta, False);
            newScore=newScore(2);
            if newScore>value
                value=new_Score;
                column=col;
            end
            alpha=max(alpha, value);
            if alpha>=beta
                break
            end
        end
        return
    else % minimizing player
        value=-Inf;
        column = randi(size(validLocations,2));
        for col=validLocations
            row=canMoveHere(col);
            boardCopy=board;
            boardCopy(row, col)=playerPiece;
            newScore=minimax(boardCopy, depth-1, alpha, beta, True);
            newScore=newScore(2);
            if newScore<value
                value=new_Score;
                column=col;
            end
            beta=min(beta, value);
            if alpha>=beta
                break
            end
        end
        return
    end
        