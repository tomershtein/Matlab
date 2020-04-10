function [X,w] = CTFT(x,t)
% function X,w = CTFT(x,t)
%
% PURPOSE: Preform Furier Transform
% INPUT
%   x  : 1D array (1 x n}
%   t  : 1D array (1 x n}
%
% OUTPUT
%   CTFT: vector named X,w (1 x n)
%
% OPERATION
%   with the lenght of the vector find delta t and by function multiply the
%   values
%
n = length(t);
delta_t=(t(1,n)-t(1,1))/(n-1);
w = linspace(-pi/delta_t,pi/delta_t,n);
X = zeros(1,n);
F = exp(-1j*(w.')*t);
X = x*F*delta_t;
end

