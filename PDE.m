clear all
clc
syms x y
b = 10;
c = 5;
ro = 0.5;
g = 32.2;
P = 0.00155;
m = input('Enter the value of m ');
n = input('Enter the value of n ');
%n = 2;
%m = 2;
w_mn = sqrt(((m * pi/b)^2) + ((n * pi/b)^2));
a = sqrt (P*g*12/ro);
A_mn = ((16*(b*c)^2) * (1+((-1)^(n+1))) * (1+((-1)^(n+1))))/ ((m^3)*(n^3)*(pi^6));
if (A_mn == 0)
    message = strcat('The Solution id Becoming 0 at even values of m & n.');
    f = msgbox(message);
else
    T=0;
    f=1;
    while T<=1/4
        figure(f)
        z = A_mn * sin(m*pi*x/b) * sin(n*pi*y/c) * A_mn *(cos(a*w_mn*(T)));
        ezsurfc(z,[0, 10, 0, 5])
        str = strcat('Shape of the pad at ', 'T = ', num2str(T), 'seconds', ' in Mode ', num2str(m));
        title(str)
        T = T + 1/8;
        f = f + 1;
    end
end

