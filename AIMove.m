% Connect 4 Project Notre Dame Spring 2019 
% Brian Donahoe, Jack Masciopinto, Thomas Fisher, Kenan Lumantas, Jason Brown
% EG 10112 Final Project
% Prof. McWilliams
% Updated: 4/10/2019

function move=AIMove(difficulty, board, player, aggregateMoves, moveNum)
winMove=immediateWin(board, player);

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
    else % maybe modify to look ahead 1 move and not move under win conditions
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
    else % maybe modify to look ahead 1 move and not move under win conditions	
        while(true)
        	move=aggregateMoves(moveNum, randi(size(aggregateMoves,2)));
            if(canPlayHere(move, board)~=-1)
                break;
            end
        end
    end

end