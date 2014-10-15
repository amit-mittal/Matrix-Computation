function y = Horner(p, x)
    [m] = length(x);
    [n] = length(p);
    y = [];
    for i=1:m
        y(i) = p(1);
        for j=2:n
            y(i) = y(i)*x(i);
            y(i) = y(i) + p(j);
        end
    end
end