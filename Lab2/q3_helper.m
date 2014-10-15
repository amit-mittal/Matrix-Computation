function x = q3_helper(A, b, L, U, P)
    [n, n] = size(A);
    b = P*b;
    y = forward_col_lower(L, b);
    x = backward_col_upper(U, y); 
end