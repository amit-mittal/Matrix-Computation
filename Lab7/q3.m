A = gallery('kahan', 90, 1.2, 0);
sig = svd(A);
format short e;
sig(1)
sig(89)
sig(90)
rank(A)
B = gallery('kahan', 90, 1.2, 25);
[Q, R, E] = qr(B);
norm(eye(90) - E)
R(90, 90)