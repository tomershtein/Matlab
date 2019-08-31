% GAME RULES
%   There are 3 rounds:
%     1) The group of odd numbers
%     2) The group of even numbers
%     Each group selects an interger: 1 or 2
%     Compute the sum of the choises for both players.
%     If the modulu of the sum is equal 1, then player #1 won.
%     Otherwise Player #2 won.

for i=1:3
Player1 = randi([1,2],1); % Odd
Player2 = randi([1,2],1); % Even
Rounds_won(i)=mod(Player1+Player2,2);
end 
    if nnz(Rounds_won)>=2 %nnz: Number of nonzero matrix elements
        disp('Even Numbers won it all');
    else
        disp('Odd Numbers won it all!');
    end
    