function [tout,y] = square(tin,x)
    tout = tin; % The time axis does not vary
    y = x.*x; % Returns the square of the entered signal