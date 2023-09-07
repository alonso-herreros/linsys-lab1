clc; clear; close all

%% Start of the file
tin = -5:1:5; % Time vector
x = -5:1:5; % Value vector
[tout,y] = square(tin,x); %  Function invocation

%% Creation of the figures
figure(1)      % Figure 1

% Figure 1.1 // 2 rows, 1 column, first figure
subplot(2,1,1)
plot(tin,x)
title('Input'), xlabel('time'), ylabel('values'), ylim([min(x) max(y)])

% Figure 1.2 // 2 rows, 1 column, second figure
subplot(2,1,2) 
plot(tout,y)
title('Output'), xlabel('time'), ylabel('values'), ylim([min(y) max(y)])