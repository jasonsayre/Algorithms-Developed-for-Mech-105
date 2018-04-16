%x= sym('x'); %for testing purpose
func = @(x) x.^2+2*x-1  %test %
%source for where i learned how to do this notation: https://www.mathworks.com/matlabcentral/answers/63664-evaluate-f-x-for-multiple-evenly-spaced-values
xl=0
xu=3
es=0.1
maxiter=200
falsepositionn (func, xl, xu, es, maxiter)

function [root, fx, ea, iter] = falsepositionn (func, xl ,xu, es, maxiter)
%This function estimates the root of a given function
%Inputs:
%   func - the function being evaluated
%   xl - the lower guess
%   xu - the upper guess
%   es - the desired relative error (default = 0.0001%)
%   maxiter - the number of iterations desired (default = 200)
%Outputs:
%   root - the estimated root location
%   fx - the function evaluated at the root location
%   ea - the approximate relative error as a percent
%   iter - how many iterations were performed

if nargin('falsePositionn') < 3 %sets minimum input arguments as 3
    warning('the requested function does not have enough info to properly calculate the root of the function')
end

if nargin('falsePositionn') == 3 %sets 4th and 5th arg as a default value
    es = 0.0001;
    maxiter = 200;
end

if nargin('falsePositionn') == 4 %sets 5th arg as default
    maxiter = 200;
end

if nargin('falsePositionn') > 5 %limits inputs to 5 arguments
    warning('You have not entered the proper amount of input arguments')
end

fxu = func(xu)
fxl = func(xl)

if fxu*fxl > 0 
    warning('there is either multiple roots, or no root between the upper and lower bound estimates entered. Try reentering the bounds')
end

iter=1;%starting interation 


while ea >= es
xu = xu %upper x value
xl = xl %lower x value
fxu = func(xu) %calculated upper y value
fxl = func(xl) %calculated lower y value

xr = (xu-((fxu*(xl-xu))/ (fxl - fxu))) %plugs values in to find the functions calculated root
rootstorage(iter) = xr

ea = (((rootstorage(iter+1) - rootstorage(iter))/rootstorage(iter+1))*100) %calculated percent error
abs(es)
iter = iter +1 ;%counts iterations



if iter == maxiter
    break
end

end

end