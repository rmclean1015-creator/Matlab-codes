clc, clear, close all;

%{
x = linspace(0,2*pi,100);

y1 = sin(x);
y2 = cos(x);

plot(x,y1,x,y2)
legend("sin" , "cos")
%}

prompt = 'input value for nth fibonacci number: ';
n = input(prompt);

x = zeros(n,1);
y = 1:n;
x(1) = 1;
x(2) = 1;

if (n == 1)
    disp("the first fibinacci number is 1")
elseif (n == 2)
    disp("the second fibinacci number is 1")
else 
    for i = 3:n
        x(i) = x(i-1) + x(i-2);
    end
    disp(['the ', num2str(n) ,' fibonacci number is ', num2str(x(i))])

end

if (n>=2)
phi = x(n)/x(n-1);
disp(['the golden ration ' ...
    'according to the highes order of fibinacci number provided is ',...
    num2str(phi)])


figure(1)
plot(y,x)
hold on
xlabel("counting index")
ylabel("fibinacci numbers")
title("graph of fibonacci numbers")
hold off
end


figure(2)
scatter(y,x,'filled','o','green')
hold on
xlabel("counting index")
ylabel("fibinacci numbers")
title("points of fibonacci numbers")
hold off