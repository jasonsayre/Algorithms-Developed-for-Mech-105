function [matrix] = InterestingMatrix (R, C) 
%Interesting Matrix
%This program returns an R x C matrix in which 
%1. The value of each element in the first row is the number of the column
%2. The value of each element in the first column is the number of the row.
%3. The rest of the elements each has a value equal to the sum of the element above it and element to the left.
%4. The function must return a sensible error if the user does not input exactlytwo arguments
%
%Input:
%   R = number of rows
%   C = number of columns
%Output:
%   Matrix out = the interesting matrix that fulfills the criteria above
%
%Program created by Jason Sayre on 1/30/18
R = input('How many rows are desired? ') %user input
C = input('How many columns are desired? ')
matrix = [ ]; %initialized blank matrix
for Ro = 1:R %loops up to value R
    for Co = 1:C %loops up to value C
        if Ro == 1 
            matrix(Ro,Co) = Co;%when row =1, places the column number in that first row
        else if Co == 1
                matrix(Ro,Co) = Ro; %when column =1, places the row number in that column
            else
                matrix(Ro,Co) = matrix(Ro-1,Co) + matrix(Ro,Co-1) %adds row above and column to the left, places in new matrix location
                  
                
            end
        end
         
    end
    end

