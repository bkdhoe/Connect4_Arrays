function validLocations=getValidLocations(board)
    validLocations=-1;
    for(col=1:7)
        if(canMoveHere(col)~=-1)
            validLocations(size(board, 2));
            count=count+1;
        end
    end