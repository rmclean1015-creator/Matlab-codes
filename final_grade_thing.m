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

gradet = gradec * (1 - w) + x * w;
%gradef2 = w * (x - gradec) + gradec;


D = ((gradet.^2 - x.^2).^2).^(1/4);
d = D - gradec1;


%D = diff(gradet, gradec1, x);

%{
if (x <= gradec)
    D = gradec1 - gradet;
else
    D = gradet - gradec1;
end
%}


figure(1)
plot(x, gradet)
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

function D = diff(gradet, gradec1, x)
for j = 1:length(x)
if (x <= gradec1(j))
    D(j) = gradec1(j) - gradet(j);
else
    D(j) = gradet(j) - gradec1(j);
end

end
end