function y = system06(x, n)
y = filter([1 0.1], [1 -0.1], x);
