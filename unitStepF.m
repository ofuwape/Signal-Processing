function [x,n] = unitStepF( n0)
n = -20:20; % create a vector of sample indices
if(n0==0)
    x = (n>=n0); % creates a '1' where n>=0, and a '0' elsewhere
else
    x = (n>=n0*(-1));
end
stem( n, x ); % display using a stem diagram
xlabel( 'n' ); % mark the x-axis
ylabel( 'x[n]' );% mark the y-axis
end