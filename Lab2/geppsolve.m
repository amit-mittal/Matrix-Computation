function x = geppsolve(A, b)
    [L, U, P] = gepp(A);
    b = P*b;
    y = forward_col_lower(L, b);
    x = backward_col_upper(U, y);
end