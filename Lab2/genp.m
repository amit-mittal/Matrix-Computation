function [L, U] = genp(A)
    n = length(A);
    for k=1:n-1
        A(k+1:n, k) = A(k+1:n, k)/A(k, k);
        A(k+1:n, k+1:n) = A(k+1:n, k+1:n) - A(k+1:n, k)*A(k,k+1:n);
    end
    L = tril(A);
    L(1:n+1:end) = 1;
    U = triu(A);
end