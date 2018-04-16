clear
clc
%%
%Problem 1

filename='lab_10_data.xlsx' %defines the lab 10 excel sheet as the source of information
data=xlsread(filename) %reads the source of information and stores its contents in the variable data

for i=1:4 %runs the for loop 4 times%
    maxvalues(1,i)= max(data(:,i+2)) %computes the max value of all the data from the 3rd column, then moves to the 4th, 5th, and 6th. It stores these 4 max values in a matrix defined as maxvalues 
    minvalues(1,i)= min(data(:,i+2)) %computes the min value of all the data from the 3rd column, then moves to the 4th, 5th, and 6th. It stores these 4 min values in a matrix defined as minvalues
end

%%
%Problem 2

r=1;
sumX=0;
while (data(r,1))<=2 && (data(r,6))<=85
   
   sumX= sumX + data(r,3);
   r=r+1;
   x= data(r,1);
   y= data(r,6);
    
end
fprintf('sum of x-acceleration =')
disp(sumX)
fprintf('time =')
disp(x)
fprintf('resultant acceleration =')
disp(y)
%disp(x)
%disp(y)

%%
%Problem 3
%F=m*a
for i=1:1009
    f=data(i,2);
    a=data(i,3);
    mass(1,i)= f/a ;
    
end

avgmasskg= mean(mass);
fprintf('Average Mass in kg =')
disp(avgmasskg)
fprintf('Average Mass in g =')
avgmassg= avgmasskg*1000;
disp(avgmassg)
%r=3
% while r<1012
%     f= data(r,2);
%     a= data(r,3);
%     Mass=f*a;
%     fprintf('Mass=\n')
%     disp(Mass)
%     r=r+1;
% end