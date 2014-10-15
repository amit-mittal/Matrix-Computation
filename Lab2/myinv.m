function X = myinv(A)
    [n, n] = size(A);
    [L, U, P] = gepp(A);
    I = eye(n);
    X = zeros(n);
    for i=1:n
        X(:, i) = q3_helper(A, I(:, i), L, U, P);
    end
end