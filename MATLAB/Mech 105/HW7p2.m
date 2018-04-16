%This program is designed to find the smallest positive real number
%recognizable to matlab
%program created by Jason Sayre on 02/04/2018
MatError = 1 %initial test point
while 0 + MatError > 0 && MatError ~=0 %when test point +0 is greater than 0 and not 0 the loop runs
    MatOld = MatError ;%stores previous value that is > 0 in a seperate variable to avoid getting 0 at the end of the loop
    MatError = MatError/2 ;%divides test point by 2 and re-stores it in the variable
end

fprintf('The smallest positive real number recognizable by matlab is: \n')
disp(MatOld)