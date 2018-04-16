%%
%Program Created by Jason Sayre on 2/5/2018
%housekeeping
clear
clc
close all
%fx=25x^(3)-6x^(2)+7x-88 %original function
%fx1=75x^(2)-12x+7 %first derivative of function
%fx2=150x-12 %second derivative of function
%fx3=150
xb=1; %starting approximation base
xf=3; %point we are wanting to predict 
h=xf-xb; %h= difference between the starting and predicted point

%zeroth order estimate
fx0app= 25*(xb^(3))-6*(xb^(2))+7*(xb)-88;%uses original function
fxtrue= 25*(xf^(3))-6*(xf^(2))+7*(xf)-88;%true value we are trying to estimate
TRPE0 = [(fxtrue - fx0app)/fxtrue]*100; %finds percent error of zeroth estimate

%First order estimate
fx1app = fx0app + [75*(xb^(2))-12*(xb)+7]*h; %uses 1st deriv.
TRPE1 = [(fxtrue - fx1app)/fxtrue] *100; %percent error of first estimate

%Second order estimate
fx2app = fx1app + [((150*(xb)-12)*h^(2))/(2*1)]; %uses 2nd deriv
TRPE2 = [(fxtrue - fx2app)/fxtrue] *100; %percent error

%Third order estimate
fx3app = fx2app + [(150*h^(3))/(3*2*1)]; %uses 3rd deriv
TRPE3 = [(fxtrue - fx3app)/fxtrue] *100; %percent error

fprintf('The true value is: ') 
disp(fxtrue)
fprintf('The Zeroth order estimate is: ')
disp(fx0app)
fprintf('The Zeroth True Relative Percent Error is: ')
disp(TRPE0)
fprintf('The First order estimate is: ')
disp(fx1app)
fprintf('The First True Relative Percent Error is: ')
disp(TRPE1)
fprintf('The Second order estimate is: ')
disp(fx2app)
fprintf('The Second True Relative Percent Error is: ')
disp(TRPE2)
fprintf('The Third order estimate is: ')
disp(fx3app)
fprintf('The First True Relative Percent Error is: ')
disp(TRPE3)
%%
clear %reset variables to default
%Forward Difference
%f'(x) = [f(x+h)-f(x)]/h    %Forward Difference Formula
%fx=25x^(3)-6x^(2)+7x-88    %original function
%fx1=75x^(2)-12x+7          %first derivative of function
x=2; %given
h=0.25; %given
xph = x+h;

firstDerivAtTwo= [75*((2)^(2))-12*(2)+7]
fprintf('The first derivative evaluated at the value two is: ')
disp(firstDerivAtTwo)

ApproxFirstDerivForDiff = (((25*((xph)^(3))-(6*((xph)^(2)))+(7*(xph))-88)-(25*((x)^(3))-(6*((x)^(2)))+(7*(x))-88)))/(h);
fprintf('The calculated forward difference approximation for the first derivative is: ')
disp(ApproxFirstDerivForDiff)

FrontError = abs(firstDerivAtTwo - ApproxFirstDerivForDiff);
fprintf('The calculated error from forward difference is: ')
disp(FrontError)

%Backward Difference
%f'(x) = [f(x)-f(x-h)]/h    %Backward Difference Formula
xmh = x-h;
FirstDerivBackDiff = ((25*((x)^(3))-(6*((x)^(2)))+(7*(x))-88)-(25*((xmh)^(3))-(6*((xmh)^(2)))+(7*(xmh))-88))/(h);
fprintf('The calculated backwards difference approximation for the first derivative is: ')
disp(FirstDerivBackDiff)

BackError = abs(firstDerivAtTwo-FirstDerivBackDiff);
fprintf('The calculated error from backward difference is: ')
disp(BackError)

%Centered Difference
%f'(x) = [f(x+h)-f(x-h)]/2h %Centered Difference Formula
h2 = h*2;
FirstDerivCentDiff = ((25*((xph)^(3))-(6*((xph)^(2)))+(7*(xph))-88)-(25*((xmh)^(3))-(6*((xmh)^(2)))+(7*(xmh))-88))/(h2);
fprintf('The calculated centered difference approximation for the first derivative is: ')
disp(FirstDerivCentDiff)

CentError = abs(firstDerivAtTwo-FirstDerivCentDiff);
fprintf('The calculated error from centered difference is: ')
disp(CentError)







