h = input('What is the value of h in meters? ');
while h >=34 || h<0
    warning('The value of h is non-sensical, please try again')
    h = input('What is the value of h in meters? ')
end
if h == 0 
    fprintf('Volume = 0 m^3')
end
if h>=19
    cylH=19;
    coneH= h-19;
else
    cylH= h;
end
r1 = 12.5;
r2 = 23;
cylV= pi*((r1)^2)*cylH;
coneV = ((1/3) * pi * (((r1)^2) + (r1* r2) + ((r2)^2)) * coneH);
Volume = cylV + coneV;
fprintf('Volume of the tank is %6.3f m^3 \n',Volume)