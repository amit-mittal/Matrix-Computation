A = randn(8, 4);
A(:, 5:6) = A(:, 1:2) + A(:, 3:4);
[Q, R] = qr(randn(6));
A = A*Q;
A
format short e
svd(A)
rank(A)
rank(A, 1e-17)