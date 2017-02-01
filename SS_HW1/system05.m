function y = system05(x, n)
n_start = n(1);
n_end = n(2);
y = zeros(1, size(x, 2));
y(1) = 0;
for index1 = (n_start+1) : n_end
    y(index1 - n_start + 1) = sin(x(index1 - n_start + 1));
end
