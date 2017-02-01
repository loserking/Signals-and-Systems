clear;
clc;

N = [-50 50];
n = -50 : 50;
s = (n >= -10 ) - (n >= 11) ;
x1 = exp (j*pi*n/12);
x = s.* x1;
u = (n >= 0 ) - (n >= 1);
y2 = system02(x, N);
y4 = system04(x, N);
y5 = system05(x, N);
y6 = system06(x, N);
y8 = system08(x, N);
subplot(5,1,1);
stem(n , y2)
subplot(5,1,2);
stem(n , y4)
subplot(5,1,3);
stem(n , y5)
subplot(5,1,4);
stem(n , y6)
subplot(5,1,5);
stem(n , y8)