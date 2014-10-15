n = 32;
W = wilkinson(n);
x = rand(n, 1);
b = W*x;
[Q, R] = qr(W);
x1 = R\(Q'*b);
norm((x1-x), inf)/norm(x, inf)
cond(W)