function x = iter(P, L, U, A, b, y, m, tol)
    r_ = b - A*y;
    r = P*r_;
    z_ = forward_col_lower(L, r)
    z = backward_col_upper(U, z_)
    y = y + z
    count = 1;
    while( norm(z)/norm(y) > tol || count < m)
        r_ = b - A*y;
        r = P*r;
        z_ = forward_col_lower(L, r)
        z = backward_col_upper(U, z_)
        y = y + z
    end
    x = y;
end