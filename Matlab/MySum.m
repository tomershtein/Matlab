function [vout] = MySum(var1)
% function vout = MySum(var1)
%
% PURPOSE: Implement the infamous Matlab function 'sum' 
% INPUT
%   var1  : vector or matrix sized [n x m]
%
% OUTPUT
%   MySum: value called 'vout'
%
% OPERATION
%   Separates between to events: n=1 or n>1
%   In For loop runs on all columns to exract the vectors
%   In For loop sum every column sepretely
%
[n,m] = size(var1);
vout = zeros(1,m);
if n ~= 1 
    for rows = 1:n
        for colm=1:m 
        colm_vector = var1(:,colm)';
        vout(colm)= vout(colm) + colm_vector(rows);
        end
    end
else
    for colm = 1:m
        vout = vout + var1(colm); 
    end

end

