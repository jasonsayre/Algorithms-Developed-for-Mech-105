z = -5: 0.1: 5;
e = exp(1);
freq = (1/ (sqrt(2*pi)))* ((e).^((-z.^(2))/2))
plot (z, freq)
xlabel('Z (z)');
ylabel('Frequency (freq)');
grid