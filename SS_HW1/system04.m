function y = system04(x, n)
n_start = n(1);
n_end = n(2);
y = zeros(1, size(x, 2));
y(1) = x(1) + 0.5 * x(2);
for index1 = (n_start+1) : (n_end-1)
    y(index1 - n_start + 1) = 0.5 * x(index1 - n_start) + x(index1 - n_start + 1) + 0.5 * x(index1 - n_start + 2);
end
y(n_end - n_start + 1) = 0.5 * x(n_end - n_start) + x(n_end - n_start + 1);
