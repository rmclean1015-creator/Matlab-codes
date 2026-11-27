clc; close; clear all;

prompt = 'input upper bound to: ';
b = input(prompt);

n = 2:2:b;


% use modular arithatic to compute the rmainders and exlcude any 
% nonzero remainders so that a sum 
% if(mod(x)=0 inclued 1 ~= 0 include 0)
n2 = n/2;
n4 = n/4;
n6 = n/6;
n10 = n/10;
n14 = n/14;
n18 = n/18;
n22 = n/22;
n26 = n/26;
n30 = n/30;

N = [n' n2' n4' n6' n10' n14' n18' n22' n26' n30'];
writematrix(N,'Eprimes.csv');
