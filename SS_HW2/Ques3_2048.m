% prob 3,4 :

clear;
clc;

K = (96*28)/(5*4)

nn = 2048
clear x
clear t
step = nn / 8
nnn = nn + 1
t = -4:(1/step):4 ;

for i = 1:nnn
  x(i) = (cos(pi*t(i)/4))*(cos(K*pi*t(i))) ; 
end

tt1 = cputime;
x1 = b96504028_dft(x);
time1 = cputime - tt1

tt2 = cputime;
x2 = fft(x)/nnn
time2 = cputime -tt2

subplot(1,3,1), plot(t,x1)
subplot(1,3,2), plot(t,x2)
subplot(1,3,3), plot(t,x1-x2)