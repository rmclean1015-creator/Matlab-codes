clc; clear; close all;
Ans = zeros(1, 5);
c = 0;
for j = 1:9
    for i = j:10
       %disp(i)
       %disp(j)
       c = c+1;
       Ans(c,1) = i;
       Ans(c,2) = j;
       Ans(c,3) = f1(i,j);
       Ans(c,4) = f2(i,j);
       Ans(c,5) = f3(i,j);
    end
end

writematrix(Ans,'numtheroy.csv')


function a = f1(u,v)
a = u^2 - v^2;
end

function b = f2(u,v)
b = 2*u*v;
end

function c = f3(u,v)
c = u^2 + v^2;
end
