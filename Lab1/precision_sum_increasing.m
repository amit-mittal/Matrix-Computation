function [sum] = precision_sum_increasing(m, k)
    sum = 0;
    for i=1:m
        sum = chop((sum + chop(1/i, k)), k);
    end
end
