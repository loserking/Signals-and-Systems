clear;
clc;

n = -50 : 50;
u = (n >= 0 ) - (n >= 1);
stem(n,u)