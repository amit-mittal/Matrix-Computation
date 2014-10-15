function x = forward_col_lower(L, b)
    n = length(b);
    x = b;
    for i=1:n-1
        if L(i, i) == 0
            error('Matrix has a zero, error');
        end
        x(i) = x(i)/L(i,i);
        x(i+1:n) = x(i+1:n) - x(i)*L(i+1:n, i);
    end
    x(n) = x(n)/L(n, n);
end