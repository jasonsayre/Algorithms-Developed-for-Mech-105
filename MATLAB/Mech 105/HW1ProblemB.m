T = 0:0.1:0.8;
QO = 10;
R = 60;
L = 9;
C = 0.00005;
e = exp(1);
qt = QO.*((e).^((-R.*T)/(2.*L))) .* cos(sqrt((1/(L.*C))-((R/(2.*L))^(2)).*T))
plot (T, qt);
xlabel( 'Time (T)')
ylabel( 'Capacitor Charge (qt)')