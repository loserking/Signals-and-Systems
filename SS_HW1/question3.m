clear;
clc;

n = -50 : 50;
s = (n >= -10 ) - (n >= 11) ;
x1 = exp (j*pi*n/12);
x = s.* x1;
u = (n >= 0 ) - (n >= 1);
N = [-50 50];
U2 = system02(u,N);
U4 = system04(u,N);
U5 = system05(u,N);
U6 = system06(u,N);
U8 = system08(u,N);
subplot(5,1,1);
stem(n , U2)
subplot(5,1,2);
stem(n , U4)
subplot(5,1,3);
stem(n , U5)
subplot(5,1,4);
stem(n , U6)
subplot(5,1,5);
stem(n , U8)