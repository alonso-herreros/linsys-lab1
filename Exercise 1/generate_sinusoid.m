% Write a function called “genera_sinusoide.m”, which generates sinusoidal signals with the 
% following  input  parameters:  initial  time  instant  (n0),  final  time  instant  (n1),  sampling 
% period  (step),  frequency  (f0), and  phase  (phi).  The  function  will  return  the  generated 
% sequence in a vector (y) and the corresponding time reference vector (tout).
function [y,tout] = generate_sinusoid(n0,n1,step,f0,phi)
    t = n0:step:n1;
    f = f0;        % If f0 is in rad/s
    %f = 2*pi*f0;  % If f0 is in Hz
    y = sin(f*t+phi);
    tout = t;
end
