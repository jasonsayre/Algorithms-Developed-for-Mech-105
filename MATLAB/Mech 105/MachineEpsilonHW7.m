%program created by Jason Sayre on 2/03/18
%eps = 1 value to test algorithm
format long
esp = input('enter the smallest number available to store on your computer: ')%we cannont calculate the machine epsilon without knowledge about the computer, therefor we ask the user to input it.
epsi = esp
while 1 + epsi > 1 %based on conditions of eps, one of two calculations happens
    epsi = epsi/2

end
while 1 + epsi <= 1
    epsi = 2*epsi
end

