function [iterate, sigma] = shiftinv(A, q, k, s)
[Q, H] = hess(A);
[n, n] = size(A);
I = eye(n);
[L, U, P] = lu((H - s*I));
for i=1:k
    q = P*q;
    q_ = forward_col_lower(L, q);
    q = backward_col_upper(U, q_);
   % q = inv(H-s*I)*q;
    [val, index] = max(abs(q));
    sigma = q(index);
    q = q/sigma;
    iterate(:, i) = Q*q;
end
sigma = 1/sigma + s;
end