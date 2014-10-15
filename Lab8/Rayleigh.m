function [iterate, rho] = Rayleigh(A, q, k)

for i=1:k
    [Q, H] = hess(A);
    [n, n] = size(A);
    I = eye(n);
    rho = (q'*H*q)/(q'*q);
    q = (H-rho*I)\q;
    [val, index] = max(abs(q));
    sigma = q(index);
    q = q/sigma;
    iterate(:, i) = Q*q;    
end
%sigma = 1/sigma + rho;
end