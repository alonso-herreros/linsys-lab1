% Using the function generate_exponential(n0,n1,step,b) and the subplot command, plot three exponentials with a time range 
% from 0 to 4 and bases 1/2, 1/4, and e^(jπ) (for the last base, plot the real and imaginary part separately).

%% Generate signals
n0 = 0; n1 = 4; step = 0.01;
b1 = 1/2; b2 = 1/4; b3 = exp(1j*pi);

[y1,t1] = generate_exponential(n0,n1,step,b1);
[y2,t2] = generate_exponential(n0,n1,step,b2);
[y3,t3] = generate_exponential(n0,n1,step,b3);


%% Plot signals
figure(1);

% Figure 1.1
subplot(3,4, [1 2]);
plot(t1,y1);
title('Base 1/2'), xlabel('t'), ylabel('y');

% Figure 1.2
subplot(3,4, [3 4]);
plot(t2,y2);
title('Base 1/4'), xlabel('t'), ylabel('y');

% Figure 1.3
subplot(3,4, [5 6 7 8]);
plot(t3,real(y3));
title('Base e^{jπ} (real)'), xlabel('t'), ylabel('y');
% Figure 1.4
subplot(3,4, [9 10 11 12]);
plot(t3,imag(y3));
title('Base e^{jπ} (imaginary)'), xlabel('t'), ylabel('Im(y)');