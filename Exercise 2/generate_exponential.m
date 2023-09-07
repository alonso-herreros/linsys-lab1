% Write a function called “genera_exponencial.m”, which generates exponential signals with
% the following input parameters: initial time instant (n0), final time instant (n1), sampling 
% period (step), and base (b). The function will return the generated sequence (y) and the 
% corresponding time reference vector (tout).

function [y,tout] = generate_exponential(n0,n1,step,b)
    % n0: initial time instant
    % n1: final time instant
    % step: sampling period
    % b: base
    % y: generated sequence
    % tout: time reference vector
    
    % time reference vector
    tout = n0:step:n1;
    
    % generated sequence
    y = b.^tout;
end
