function [S] = RiemannSum(f,x)
% function S = RiemannSum(f,x)
%
% PURPOSE: calaculate the integral using Riemann's Sum 
% INPUT
%   f  : function vector [1 x m]
%   x  : time vector [1 x n]
%
% OUTPUT
%   RiemannSum: value called 'S'
%
% OPERATION
%   Calcultes delta for specific function and in for loop multiply delta
%   with each index in the function and sums it all up.
%
S = 0;
n = length(f);
delta_x = (x(n)-x(1))/n;
for i=1:n
    S = S+ MySum(f(i).*delta_x);
end
S = abs(S); %Riemann Sum must be positive
end

