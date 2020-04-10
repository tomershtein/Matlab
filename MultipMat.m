function [C] = MultipMat(A,B)
% function C = MultipMat(A,B)
%
% PURPOSE: Multiple matrix product for systems having the same size
%
% INPUT
%   A  : 2D array (n x k}
%   X  : 2D array (k x m)
% OUTPUT
%   MultiMat: 2D array (n x m)
% 
% OPERATION
%   first the function checks if we can preform a valid multiplication action
%   with loop we do a multiplication of element-by-elemnt 

[n,k1] = size(A);
[k2,m] = size(B);
C = zeros(n,m);
% checks if the number of columns equel to the number of rows in the 2nd matrix
if k1==k2
    
 for row = 1 : n
  for column = 1 : m 
    sum = 0;
    for m = 1 : k2
      sum = sum + A(row, m) * B(m,column);
    end
    C(row,column) = sum;
  end
 end
 else
    disp('the operation you requested is not logically correct');
end

