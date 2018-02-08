function [board, winner] = playTicTacToe(position, marker, board0)
%playTicTacToe play tic-tac-toe on the command line.

%Initialize empty board
board = ['   ';'   ';'   ']

%assign position arrays
position_ind = num2cell(position);
[index,j] = position_ind{:};

%Error Checking
    if (any(position > 3))
        board = board0;
        winner = 'Error! Marker placed out of bounds.';
    elseif (marker ~= 'x' && marker ~= 'o')
        board = board0;
        winner = 'Error! Incorrect marker.';
    elseif (~isspace(board0(index,j)))
        board = board0;
        winner = 'Error! This position is already occupied.'; 
    
%Pass Error Checks
    else
        board = board0;
        board(index,j) = marker;
        switch marker
            case 'x'
                for i = 1:3
                    if(strcmp(myMatrixSlice(board,'r',index),'xxx') ||...
                            strcmp(myMatrixSlice(board,'c',index),'xxx') ||...
                            strcmp(diag(board)','xxx') || strcmp(diag(board')','xxx'))
                        winner = marker;
                        break
                    else
                        winner = ' ';
                    end
                end
            case 'o'
                for i = 1:3
                    if(strcmp(myMatrixSlice(board,'r',index),'ooo') ||...
                    strcmp(myMatrixSlice(board,'c',index),'ooo') ||...
                    strcmp(diag(board)','ooo') || strcmp(diag(board')','ooo'))
                        winner = marker;
                        break
                    else
                        winner = ' ';
                    end
                end

        end
    end
end