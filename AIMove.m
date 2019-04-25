% Connect 4 Project Notre Dame Spring 2019 
% Brian Donahoe, Jack Masciopinto, Thomas Fisher, Kenan Lumantas, Jason Brown
% EG 10112 Final Project
% Prof. McWilliams
% Updated: 4/10/2019

% Given the state of the game and the state of the AI, return the move the AI will make

function move=AIMove(difficulty, board, player, aggregateMoves, moveNum)
winMove=immediateWin(board, player);
val = 0;
if(player==1)
    opponent=2;
else 
    opponent=1;
end

opponentWin=immediateWin(board, opponent);

if(difficulty==1)
    if(winMove~=-1)
        move=winMove;
        return;
    elseif(opponentWin~=-1)
        move=opponentWin;
    else 
        while(true)
            move=randi(7);
            if(canPlayHere(move, board)~=-1)
                break;
            end
        end
    end
end

if(difficulty==2)
	if(winMove~=-1)
      	move=winMove;
      	return;
    elseif(opponentWin~=-1)
      	move=opponentWin;
        return;
    else 
        for i=1:20
        	move=aggregateMoves(moveNum, randi(size(aggregateMoves,2)));
            if(canPlayHere(move, board)~=-1)
                boardPoss = board;
                boardPoss(canPlayHere(move,board),move) = 2;
                if immediateWin(boardPoss,opponent)==-1
                    break;
                end
            end
        end
    end

end
if(difficulty == 3)
   [move , val] = minimax(board, 5, -Inf, Inf, true, player);
end
end
