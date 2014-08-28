function [y,n] = sigshift(x,n,n_0)
% Generates y[n] = x[n-n0]
n = n + n_0; % new time axis
y = x; % the sample sequence remains untouched
end