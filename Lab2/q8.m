N = [20 40 80 100]
for n=N
    A = rand(n);
    A(1, 1) = 50*eps*A(1,1);
    [Lnp, Unp] = genp(A);
    n
    [norm(Lnp) norm(Unp) norm(Lnp*Unp - A)]
    [Lpp, Upp, P] = lu(A);
    [norm(Lpp) norm(Upp) norm(Lpp*Upp - P*A)]
end