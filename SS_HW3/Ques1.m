a = 96; b = 50; c = 4028;
w0 = a*b/c ; % w0 = 1.1917 > 1

for n = 1:20001 ;
   x(n) = sin((n-10001)*w0*0.001);
end;

t = -10:0.001:10 ;
plot(t,x)