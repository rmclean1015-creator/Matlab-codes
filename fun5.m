clc, clear, close all;

temp = [55;-72;62;-72;88.5];
tempk = 273.15*ones(5,1)+temp;
y = 1.4;
R = 287;

v = [304.2;672.1;96.4;440;513];
a = (y*R)^(1/2)*tempk.^(1/2);

M = v./a;

for i = 1:5
    if (M(i) < .3)
        disp("Subsonic incompressable, Mach =")
        disp(M(i))
    end
    if (.3 < M(i) && M(i) < .8)
        disp("subsonic compressable, Mach =")
        disp(M(i))
    end
    if (M(i)==1)
        disp("Sonic compressable, Mach =")
        disp(M(i))
    end
    if (.8 < M(i) && M(i)< 1.2)
        disp("sonic-ish compressable, Mach =")
        disp(M(i))
    end
    if (1.2 < M(i) && M(i) < 5)
        disp("super sonic compressable, Mach =")
        disp(M(i))
    end
end



