clc; clear ;close all;

disp("column 1 altitule, column 2 orbit, column 3 comm")

%5X3 alt orbit comm
data1 = [107 95 13 ; 180 93 9 ; 135 101 12 ; 170 98 10 ; 169 94 11];

add10 = [10 0 0 ; 10 0 0 ; 10 0 0 ; 10 0 0 ; 10 0 0];

data2 = data1 + add10;

alt = data2(:,1);
orbit = data2(:,2);
comm = data2(:,3);

aveAlt = mean(alt);
aveorb = mean(orbit);
avecomm = mean(comm);
%aveAlt = (data2(1,1) + data2(2,1) + data2(3,1) + data2(4,1) + data2(5,1))/5;
%aveorb = (data2(1,2) + data2(2,2) + data2(3,2) + data2(4,2) + data2(5,2))/5;
%avecomm = (data2(1,3) + data2(2,3) + data2(3,3) + data2(4,3) + data2(5,3))/5;

disp(aveAlt + " " + aveorb + " " + avecomm)
%disp(data2)

for i = 1:3
a(i) = orbit(i);
b(i) = comm(i);
end

ratio = orbit./comm;
dotP = orbit' * comm;
crossP = cross(a, b);

disp("the average altitude is " + aveAlt + " km")
disp(['the ratio is ', num2str(ratio')])
disp("the dot product is " + dotP)
disp(['the cross product is ', num2str(crossP)])


%sumAlt = sum(alt);
