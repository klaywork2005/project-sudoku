% Sudoku Solver
%
% Hints:
% For subgrid of size n, subgrids can be identified by labels 1..n*n
% A cell (x,y) can be mapped to the subgrid labeled 1+(((x-1)/n)*n+(y-1)/n)

% Your implementation please...

{ sudoku(ROW,COL,NUM) : NUM = 1..4 } = 1 :- ROW = 1..4, COL = 1..4.
:- initial(ROW,COL,NUM), not sudoku(ROW,COL,NUM).
:- sudoku(ROW1,COL,NUM), sudoku(ROW2,COL,NUM), ROW1 != ROW2.
:- sudoku(ROW,COL1,NUM), sudoku(ROW,COL2,NUM), COL1 != COL2.

#show sudoku/3.
