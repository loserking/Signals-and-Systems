clear
w_p = 903.0346 ;
eps = 0.5;
N = 5;
T = 0.001;
   for k =1:N
      a = -w_p* sin((2*k-1)*pi/N/2) * sinh(asinh(1/eps)/N);
      b = j*w_p* cos((2*k-1)*pi/N/2) * cosh(asinh(1/eps)/N);
      p(k) = a + b;   
   end

[NUM DEN] = zp2tf([], p(1:N), w_p^N/ (eps* (2^(N-1)) ));
[Zb Za] = bilinear(NUM, DEN, 1/T)
freqz(Zb, Za, 0:0.01:5);