% Consider the following sequences:
% x1[n] = 3 sin(π/7 n) + j 4 cos(π/7 n),  n = 0, ..., 20
% x2[n] = (1.1)^n cos(π/11 n + π/4),      n = 0, ..., 50
% Express x1[·] and x2[·] using complex exponentials with the help of Euler's formula and
% generate new vectors x11[·] and x22[·] using the `exp` function in Matlab. Next, using the `subplot`
% command, plot the functions x1[·], x2[·], x11[·], and x22[·] and verify that the new vectors match
% the representations obtained from the sinusoids. (For x1[·] and x11[·], plot the real and
% imaginary part separately.)

%% Generate signals
n1 = 0:20;
n2 = 0:50;
x1 = 3 * sin(pi/7 * n1) + 4j * cos(pi/7 * n1);
x2 = (1.1).^n2 .* cos(pi/11 * n2 + pi/4);
x11 = real(exp(1j * pi/7 * n1)) * (4j + 3);
x22 = real((1.1).^n2 .* exp(1j * (pi/11 * n2 + pi/4)));

%% Plot signals
figure(1);

% Figure 1.1: x1[·]
subplot(3, 2, 1);
plot(n1, real(x1));
title('x_1[·] (real)'), xlabel('n'), ylabel('Re(x_1[n])');
subplot(3, 2, 3);
plot(n1, imag(x1));
title('x_1[·] (imaginary)'), xlabel('n'), ylabel('Im(x_1[n])');

% Figure 1.2: x11[·]
subplot(3, 2, 2);
plot(n1, real(x11));
title('x_{11}[·] (real)'), xlabel('n'), ylabel('Re(x_{11}[n])');
subplot(3, 2, 4);
plot(n1, imag(x11));
title('x_{11}[·] (imaginary)'), xlabel('n'), ylabel('Im(x_{11}[n])');

% Figure 1.3: x2[·]
subplot(3, 2, 5);
plot(n2, x2);
title('x_2[·]'), xlabel('n'), ylabel('x_2[n]');

% Figure 1.4: x22[·]
subplot(3, 2, 6);
plot(n2, x22);
title('x_{22}[·]'), xlabel('n'), ylabel('x_{22}[n]');


