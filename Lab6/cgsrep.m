function [Q, R] = cgsrep(Q)
    [Q_hat, R_hat] = cgs(Q);
    [Q_, R_] = cgs(Q_hat);
    Q = Q_;
    R = R_*R_hat;
end
    