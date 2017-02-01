clear;
clc;

n = -50 : 50;
s = (n >= -10 ) - (n >= 11) ;
x1 = exp (j*pi*n/12);
x = s.* x1;
stem(n,x)