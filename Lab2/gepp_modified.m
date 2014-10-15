function [L, U, P, sigma] = gepp_modified(A)
    [n, n] = size(A);
    p = [1:n];
    sigma = 1;
    for k=1:n-1
        [r, m] = max(abs(A(k:n, k)));
        m = m + k -1;
        if(A(m , k)==0)
            sprintf('A is singular');
        else if(m~=k)
            A([k m], :) = A([m k], :);
            p([k m]) = p([m k]);
            sigma = -1*sigma;
            end
        end
        A(k+1:n, k) = A(k+1:n, k)/A(k, k);
        A(k+1:n, k+1:n) = A(k+1:n, k+1:n) - A(k+1:n, k)*A(k, k+1:n);
    end
    L = tril(A, -1) + eye(n);
    U = triu(A);
    I = eye(n);
    P = I(p, :);
end