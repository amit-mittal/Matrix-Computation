function B = applreflect(u, gamma, A)
    v = gamma*u;
    w = v'*A;
    temp = u*w;
    B = A - temp;
end