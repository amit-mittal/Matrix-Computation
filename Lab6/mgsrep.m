function [Q, R] = mgsrep(Q)
    [Q_hat, R_hat] = mgs(Q);
    [Q_, R_] = mgs(Q_hat);
    Q = Q_;
    R = R_*R_hat;
end
    