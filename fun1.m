clc; clear; close all;

%{
a = [1 2 3 ; 4 5 6 ; 7 8 9];
b = [2 4 6];
c = [1;3;5];

d = linspace(2,4,50);
j = 2:2:10;
%k = j(3;5)
x=linspace(-30,30,3000);
y = x.^2;
z = 1/3*x.^3;


plot(y)
hold on
title("hi")
ylabel("blue")
xlabel("green yay")
legend("hello")
hold off

plot(z)
hold on
title("hi")
ylabel("blue")
xlabel("green yay")
legend("hello")
hold off
%}

a = [1 2 0 0];
a = a';

b = [-1 1 5 0];
b=b';
c = [0 1 -4 1];
c = c';

m = [a b c]

rref(m)