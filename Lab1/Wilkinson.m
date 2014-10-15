function [W] = Wilkinson(n)
        W = eye(n);
        W(find(W==0)) = -1;
        W = tril(W);
        W(:,n) = 1;
end

