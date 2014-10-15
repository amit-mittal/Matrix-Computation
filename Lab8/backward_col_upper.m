function x = backward_col_upper(U, b)
    n = length(b);
    x = b;
    x(n) = x(n)/U(n, n);
    for i=n-1:-1:1
        x(i:-1:1) = x(i:-1:1) - x(i+1)*U(i:-1:1, i+1);
        if U(i, i) == 0
            error('Matrix has a zero, error');
        end
        x(i) = x(i)/U(i, i);
    end
end