clear
w_p = 2*pi*10000;
number = 1;

for eps = [0.5 1 1.5]
	for N=3:6
		for k =1:N
			a = -w_p* sin((2*k-1)*pi/N/2) * sinh(asinh(1/eps)/N);
            b = j*w_p* cos((2*k-1)*pi/N/2) * cosh(asinh(1/eps)/N);
            p(k) = a + b;   
		end

		[NUM DEN] = zp2tf([], p(1:N), w_p^N/ (eps* (2^(N-1)) ));
		figure(number);
		number = number + 1 ;
        freqs(NUM, DEN, logspace(-1,5,500));
	end
end