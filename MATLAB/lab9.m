clear
clc
%% Problem 1a
x=5500
totalyears=0
while x < 1000000
    x=((x*1.06)+5500)
    totalyears= totalyears+1
end
fprintf('%d\n',totalyears)
%% Problem 1b
y=10000
years=0
while y < 1000000
    y= ((y*1.01)+5000)
    years= years+1
end
fprintf('%d\n',years)
%% Problem 2
for B_initial=1:10
    for GRate=1:10
        
        B(B_initial,GRate)=100*B_initial*exp(10*GRate*0.02)
        
    end
end