function [B, p] = deflateQR(A, tol, N)
[n, n] = size(A);
for i=1:N
   [Q, R] = qr(A);
   A = R*Q;
   if(abs(A(n, n-1)) < tol || abs(A(n-1, n-2)) < tol)
      break
   end
end
i
if(i==N)
    p=0;
else
   p=1;
end
B = A;
end