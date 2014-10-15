function [B, p] = deflateQRR(A, tol, N)
[n, n] = size(A);
for i=1:N
   [Q, R] = qr(A - A(n,n)*eye(n));
   A = R*Q + A(n,n)*eye(n);
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