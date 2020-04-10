function [x] = MyLogSpace(A1,An,n)
% function x = MyLogSpace(A1,An,n)
%
% PURPOSE: Implement the infamous Matlab function 'logspace' 
% INPUT
%   A1  : value (1 x 1) : first index
%   An  : value (1 x 1) : last index
%   n   : value (1 x 1) : number of elements
%
% OUTPUT
%   MyLogSpace: vector called 'x'
%
% OPERATION
%   Using MyLinSpace function and for loop returns every value in power n form 
%
% use MyLinSpace function
x = MyLinSpace(A1,An,n);
% run for loop
for n=1:n
  x(n)=10.^x(n);
end
end


