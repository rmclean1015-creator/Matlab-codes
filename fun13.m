clc; clear; close all;

x = 0:.1:100;

prompt = 'input current grade: ';
gradec = input(prompt);

for i = 1:1001
    gradec1(i) = gradec;
end

prompt2 = 'input final grade weight (as a precent): ';
w = input(prompt2);

w = w / 100;

gradef = gradec * (1 - w) + x * w;
%gradef2 = w * (x - gradec) + gradec;
D = ((gradef.^2 - x.^2).^2).^(1/4);
d = D - gradec1;


figure(1)
plot(x, gradef)
hold on
plot(x,gradec1)
plot(x,D)
ylabel("total grade")
xlabel("final grade")
legend("final grade","current grade","percent differenmce",'Location','best')
hold off

%{
figure(2)
plot(x,D)
hold on
ylabel("distance from current grade")
xlabel("final grade")
hold off
%}