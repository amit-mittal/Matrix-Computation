function [sum] = simple_sum(m)
    sum = 0;
    for i=1:m
        sum = sum + 1/i;
    end
end