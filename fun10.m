clc; clear; close all;

r1 = [7000 ; 0 ; 0];
r2 = 7.5*[0 ; sqrt(2)/2 ; sqrt(2)/2];
r = [r1 ; r2];

u = 398600;

T = 2*pi*sqrt(7000^3/u);

f1 = @(t,y)fun(t,y);

[t, y] = ode45(f1,[0 T],r);

[a, b, z] = sphere;
a = a*6378.1;
b = b*6378.1;
z = z*6378.1;

function Xdot = fun(t,y)
u = 398600;

r = y(1:3);
rdot = y(4:6);

Xdot = [rdot ; -u*r/(sqrt(r(1,1)^2 + r(2,1)^2 + r(3,1)^2))^3];
end

figure(1)
plot3(y(:,1),y(:,2),y(:,3),'r');
hold on
surf(a,b,z,"EdgeColor","none","FaceColor","blue");
axis equal;
hold off
