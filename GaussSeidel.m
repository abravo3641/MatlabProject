%% Anthony Bravo
%5x1-2x2+3x3 = -1
%-3x1+9x2+x3 = 2
%2x1-x2-7x3 = 3
clc
clear all
x1 = @(x2,x3) -1/5 + (2/5)*x2 - (3/5)*x3;
x2 = @(x1,x3) 2/9 + (3/9)*x1 - (1/9)*x3;
x3 = @(x1,x2) -3/7 + (2/7)*x1 - (1/7)*x2;
newx1 = 0;
newx2 = 0;
newx3 = 0;
old = [0 0 0];
iteration = 1;
done = false(1);
while ~done
    iteration;
    newx1 = x1(newx2,newx3);
    newx2 = x2(newx1,newx3);
    newx3 = x3(newx1,newx2);
    new = round([newx1 newx2 newx3],3);
    difference = abs(abs(old)-abs(new));
    if difference == [0 0 0]
        done= true(1);
        break; 
    end
    old = new;
    iteration = iteration+1;
end
disp('Results: ')
iteration;
X1 = new(1)
X2 = new(2)
X3 = new(3)
