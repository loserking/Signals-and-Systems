clear;
clc;

Nd = [ 5 10 20 50 100 200 500 1000 2000 5000]
a = 96; b = 50; c = 4028;
w0 = a*b/c ; % w0 = 1.1917 > 1

for m = 1:10;
    times = 0;
    k = Nd(m); 
   for n = (-10000/k):(10000/k);
       xd(n+10000/k+1) = sin((k*n)*w0*0.001);
       times = times + 1 ;
   end
   t = -10:20/(times-1):10;
   figure(m);
   plot(t,xd);
   clear xd;
end

clear t;
clear xd;
k = pi*1000/w0;
times = 0;
for n = (-10000/k):(10000/k);
     xd(n+10000/k+1) = sin((k*n)*w0*0.001);
     times = times + 1 ;
end
t = -10:20/(times-1):10;
figure(11);
plot(t,xd);
clear xd;