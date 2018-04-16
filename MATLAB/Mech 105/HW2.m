%%
T = 0:0.1:0.8;%runs the value 0 to .8 in intervals of 0.1
QO = 10;
R = 60;
L = 9;
C = 0.00005;
subC= 0.0005;

e = exp(1);
qt = QO.*((e).^((-R.*T)/(2.*L))) .* cos(sqrt((1/(L.*C))-((R/(2.*L))^(2)).*T))
qt2 = QO.*((e).^((-R.*T)/(2.*L))) .* cos(sqrt((1/(L.*subC))-((R/(2.*L))^(2)).*T))
xlabel( 'Time (T)')
ylabel( 'Capacitor Charge (qt)')
hold on
grid
subplot (2,1,1); 
plot (T,qt);
title('Subplot 1: C=0.00005')
subplot (2,1,2);
plot (T,qt2);
title('Subplot 2: C=0.0005')
hold off
%when the capacitance value went up, the response was for the y intercept to go up because the larger value
%stored in C causes the value from inside the cos function to be increased
%which raises the y intercept value

%%
figure
hold off
clc 
clear
e = exp(1)
Data =[10 3.4; 20 2.6; 30 1.6; 40 1.3; 50 1.0; 60 0.5]
x = Data(:, 1);
y = Data(:, 2);
t = (0:10:70);
c = 4.84*e.^(-0.034.*t)

plot(x, y, 'd', 'MarkerFaceColor', 'red')
hold on
plot(t, c, '--g')

xlabel( 'Time In Minutes (T)')
ylabel( 'Concentration In PPM (C)')
grid
title( 'Time impact on concentration')
legend('= Data Points', '= Function Line')


