% Using the function generate_sinusoid(n0,n1,step,f0,phi) and the subplot command, plot three sinusoids with a time range from
% 0 to 2 and frequencies π, 2π, and 4π. The time steps must be sufficiently small to make the
% sinusoidal shape recognizable. The three graphs will have to be seen in the same figure, 
% separated into three rows.

%% Generate signals
n0 = 0; n1 = 2; step = 0.01;
f1 = pi; f2 = 2*pi; f3 = 4*pi;
phase = 0;
[y1, t1] = generate_sinusoid(n0, n1, step, f1, phase);
[y2, t2] = generate_sinusoid(n0, n1, step, f2, phase);
[y3, t3] = generate_sinusoid(n0, n1, step, f3, phase);

%% Plot signals
figure(1);

% Figure 1.1
subplot(3,1,1);
plot(t1, y1);
title('Sinusoid with frequency pi'), xlabel('Time'), ylabel('Amplitude');

% Figure 1.2
subplot(3,1,2);
plot(t2, y2);
title('Sinusoid with frequency 2pi'), xlabel('Time'), ylabel('Amplitude');

% Figure 1.3
subplot(3,1,3);
plot(t3, y3);
title('Sinusoid with frequency 4pi'), xlabel('Time'), ylabel('Amplitude');
