function [AvgImage] = MovAvg(Image,N)
% function AvgImage = MovAvg(Image,N)
%
% PURPOSE: Implement moving avarage on image
% INPUT
%   Image : Image in a matrix type double [m x n]
%   N : value (Odd number)
% OUTPUT
%   AvgImage: matrix of smoother image
%
% OPERATION
%   
%
tf = isa(Image,'double');% next for loop can operate only data type 'double'
if tf == false
    Image = double(Image);
end
[rows,colm] = size(Image);
K = ones(N)/POWER(N,2); %moving avarage
AvgImage = zeros(rows,colm);
midN=floor(N/2);
for r=midN+1:(rows-midN)
    for c=midN+1:(colm-midN)
       AvgImage(r,c) = sum(sum(K.*Image(r-midN:r+midN,c-midN:c+midN)));
    end
    tf = isa(Image,'uint 8');% imshow can show only data type 'uint8'
if tf == false
    AvgImage = uint8(AvgImage);
end
end

