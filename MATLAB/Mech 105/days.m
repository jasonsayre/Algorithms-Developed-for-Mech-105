function [nd] = Days (mo, da, leap)
%the function calculated the number of days elapsed based on the input
%variables of the current month, day, and knowledge of whether it is a leap
%year
%   Inputs:
%       mo = current month (number abbreviation)
%       da = current date
%       leap = is it a leap year? (type 1 for yes or 0 for no)
%   Outputs:
%       nd= number of days elapsed

%created by Jason Sayre on 1/29/17
if leap >1
    warning ('The leap input is invalid, try again')
end
if leap<0
    warning ('The leap input is invalid, try again')%accounts for unexpected inputs
end
if leap == 1 %leap year value
    Feb = 29;
end
if leap == 0 %non leap year
    Feb = 28;
end
Jan = 31;Feb = Feb;Mar = 31;Apr = 30;May = 31;June = 30;July = 31;Aug = 31;
Sept = 30;Oct = 31;Nov = 30;Dec = 31; %defining # of days in each month

if mo == 1 % Calculates days elapsed in the year thus far
    nd = da
else if mo == 2
    nd = Jan + da
else if mo == 3
    nd = Jan + Feb + da
else if mo == 4
    nd = Jan + Feb + Mar + da
else if mo == 5
    nd = Jan + Feb + Mar + Apr + da
else if mo == 6 
    nd = Jan + Feb + Mar + Apr + May + da
else if mo == 7
    nd = Jan + Feb + Mar + Apr + May + June + da
else if mo == 8
    nd = Jan + Feb + Mar + Apr + May + June + July + da 
else if mo == 9
    nd = Jan + Feb + Mar + Apr + May + June + July + Aug + da
else if mo == 10
    nd = Jan + Feb + Mar + Apr + May + June + July + Aug + Sept + da
else if mo == 11
    nd = Jan + Feb + Mar + Apr + May + June + July + Aug + Sept + Oct + da
    else mo == 12
    nd = Jan + Feb + Mar + Apr + May + June + July + Aug + Sept + Oct + Nov + da
  
    %below was my original approach to the problem, however I could not get
    %it to work so the above was my resulting method to solve the question
% sumMo = [Jan; Feb; Mar; Apr; May; June; July; Aug; Sept; Oct; Nov; Dec];
%TsumMo = sum(sumMo(0:(mo-1)))
%nd = (  TsumMo +(da))
%nd = (  (sum (sumMo (0:(mo -1)))  )+(da))
    end
    end
    end
    end
    end
    end
    end
    end
    end
    end
end
end

    