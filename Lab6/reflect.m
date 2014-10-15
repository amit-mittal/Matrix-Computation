function [u, gamma, tau] = reflect(x)
    n = length(x);
    y = zeros(n, 1);
    tau = norm(x,2)*x(1)/abs(x(1));
    y(1) = -tau;
    u = x - y;
    gamma = 2/(norm(u, 2)^2);
end