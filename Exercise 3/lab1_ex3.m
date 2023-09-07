% In the file “lab1file.m:”
% a) Define a discrete-time base vector N that ranges from -50 to +50.
% b) Define a pulse signal that has unit height between -10 and +10 and that is zero 
% elsewhere.
% c) Define a delta signal d[N-20] + d[N+20] that is equal to one at N=20 and N=-20 and 
% that is zero elsewhere.
% d) Using the conv function in Matlab, compute the convolution of the above two signals 
% and plot it in a figure.


%% Generate signals
N = -50:50;
pulse = zeros(1,101);
pulse(41:61) = 1;
delta = zeros(1,101);
delta(21) = 1; delta(81) = 1;
conv = conv(pulse,delta);

% Simple check to see if we deleted any values outside of the cut
values_outside_of_cut = sum([conv(1:49)~=0 conv(151:end)~=0])


%% Plot signal
figure(1)
plot(N,conv_cut)
title('Convolution of pulse and delta'), xlabel('N'), ylabel('Amplitude')