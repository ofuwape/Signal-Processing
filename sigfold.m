function [y,n] = sigfold(x,n)
% implements y(n) = x(-n)
% -----------------------
% [y,n] = sigfold(x,n)
%
n = -fliplr(n); % reverse the time axis
y = fliplr(x); % sample values are unchanged
end