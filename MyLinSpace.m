function [x] = MyLinSpace(A1,An,n)
% function x = MyLinSpace(A1,An,n)
%
% PURPOSE: Implement the infamous Matlab function 'linspace' 
% INPUT
%   A1  : value (1 x 1) : first index
%   An  : value (1 x 1) : last index
%   n   : value (1 x 1) : number of elements
%
% OUTPUT
%   MyLinSpace: vector called 'x'
%
% OPERATION
%   Calculate the difference constant (d) and then with a for loop create the
%   vector using (d) and the indexes given
%
x = zeros(1,n);
% calculate the difference constant
d = (An-A1)/(n-1);
% run for loop
for n=1:n
  x(n)=A1+(n-1).*d ;
end
end

