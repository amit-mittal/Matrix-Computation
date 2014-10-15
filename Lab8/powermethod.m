function [iterate, sigma] = powermethod(A, q, k)
    for i=1:k
        q = A*q;
        [val, index] = max(abs(q));
        sigma = q(index);
        q = q/sigma;
        iterate(:, i) = q;
    end
end