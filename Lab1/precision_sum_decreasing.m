function [sum] = precision_sum_decreasing(m, k)
    sum = 0;
    for i=m:-1:1
        sum = chop((sum + chop(1/i, k)), k);
    end
end