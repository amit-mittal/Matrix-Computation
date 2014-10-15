n = 32;
W = wilkinson(n);
x = rand(n, 1);
b = W*x;
x1 = W\b;
norm((x1-x), inf)/norm(x, inf)
cond(W)