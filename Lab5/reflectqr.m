function [Q, R] = reflectqr(A)
    [n, m] = size(A);
    if(n~=m)
        apply_times = m;
    else
        apply_times = n-1;
    end
    for i=1:apply_times
        [u, gamma, tau] = reflect(A(i:n,i));
        u_hat = u/u(1);
        u_hat_matrix(i:n, i) = u_hat;
        gamma_hat = gamma*(u(1)^2);
        gamma_hat_row(i) = gamma_hat;
        A(i:n, i:m) = applreflect(u_hat, gamma_hat, A(i:n, i:m));
    end
    R = A;
    identity = eye(n);
    
    for i=1:n
        applicant = identity(:, i);
        for j=min(i, apply_times):-1:1
            applicant = applreflect(u_hat_matrix(:, j), gamma_hat_row(j), applicant);
        end
        Q(:, i) = applicant;
    end
end