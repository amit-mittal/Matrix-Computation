function [L, U, P] = gepp(A)

[n,n] = size(A);
P = [1:n]';

L = tril(A, -1) + eye(n)
U = triu(A)
I = eye(n)
P = I(P,:)

for k = 1: n-1
    [k,m] = find(abs(A(k:n, k)));
    m = m + k - 1;
    
    if A(m,k) == 0
        continue
    else if m ~= k
            A([m,k], :) = A([k,m], :)
            P([m,k]) = P([k,m]);
        end
    end
 A(k+1:n, k) = A(k+1:n, k)/ A(k,k)
 A(k+1:n, k+1:n) = A(k+1:n, k+1:n) - A(k+1:n, k)*A(k, k+1:n)
end
