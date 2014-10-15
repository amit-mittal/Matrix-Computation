H1 = Hilbert(7);
H2 = Hilbert(12);
%cgs
[Q, R] = cgs(H1);
sprintf('size 7 cgs')
norm((eye(7) - Q'*Q),2)
[Q, R] = cgs(H2);    
sprintf('size 12 cgs')
norm((eye(12) - Q'*Q),2)
%cgsrep
[Q, R] = cgsrep(H1);
sprintf('size 7 cgsrep')
norm((eye(7) - Q'*Q),2)
[Q, R] = cgsrep(H2);
sprintf('size 12 cgsrep')
norm((eye(12) - Q'*Q),2)
%mgs
[Q, R] = mgs(H1);
sprintf('size 7 mgs')
norm((eye(7) - Q'*Q),2)
[Q, R] = mgs(H2);
sprintf('size 12 mgs')
norm((eye(12) - Q'*Q),2)
%mgsrep
[Q, R] = mgsrep(H1);
sprintf('size 7 mgsrep')
norm((eye(7) - Q'*Q),2)
[Q, R] = mgsrep(H2);
sprintf('size 12 mgsrep')
norm((eye(12) - Q'*Q),2)
%QR
[Q, R] = reflectqr(H1);
sprintf('size 7 reflectqr')
norm((eye(7) - Q'*Q),2)
[Q, R] = reflectqr(H2);
sprintf('size 12 reflectqr')
norm((eye(12) - Q'*Q),2)