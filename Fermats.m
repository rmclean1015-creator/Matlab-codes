clc; clear; close all;

P = [2 3 5 7 11 13 17 19 23 29 31 37 41 43 47 53 59 61 67 71 73 79 83 89 97 101 103 107 109 113];

A = mod(factorial(P-1),P);

p = P';
a = A';

T = [p a];

writematrix(T,['Fermats.csv'])