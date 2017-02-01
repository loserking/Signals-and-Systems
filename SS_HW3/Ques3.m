clear k;
times = 0;
k = floor(0.95*pi*1000/w0)
for n = (-10000/k):(10000/k);
    xd(n+10000/k+1) = sin((k*n)*w0*0.001);
    times = times + 1 ;
end
t = -10:20/(times-1):10;
figure(12);
plot(t,xd);