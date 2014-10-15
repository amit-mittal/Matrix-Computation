function [B, p] = deflateQRW(A, tol, N)
[n, n] = size(A);
for i=1:N
   E = eig(A(n-1:n, n-1:n));
   E_ = E - A(n,n)*ones(2,1);
   [val, index] = min(abs(E_));
   rho = E(index);
   [Q, R] = qr(A - rho*eye(n));
   A = R*Q + rho*eye(n);
   if(abs(A(n, n-1)) < tol || abs(A(n-1, n-2)) < tol)
      break; 
   end
end
if(i==N)
    p=0;
else
   p=1;
end
B = A;
end