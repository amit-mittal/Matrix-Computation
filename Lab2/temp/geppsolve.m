function [y,x] = geppsolve(A,b)

%
%Factor A = LU
%Solve Ly = b for y (Lower triangular matrix)
%Solve Ux = y for x (Upper triangular matrix)
%

[L,U,P] = gepp(A)

n = length(b)
y = b;

for i = 1: n-1
    if (L(i,i)==0) error('Matrix is singular!'); end;
    y(i) = y(i)/L(i,i);
    y(i+1:n) = y(i+1:n) - L(i+1:n,i)*y(i);
end 

for j = n-1:-1:1
    if (U(j,j)==0) error('Matrix is singular!'); end;
    x(j) = x(j)/U(j,j);
    x(1:j-1) = x(1:j-1) - U(1:j-1,j)*x(j);
end