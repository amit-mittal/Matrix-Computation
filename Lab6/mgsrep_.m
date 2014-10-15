function [Q R] = mgsrep_(Q)
    [n m] = size(Q);
    R = zeros(m,m);
    R(1,1) = norm(Q(:,1),2);
    if(R(1,1) == 0)
        error('Error');
    end
    Q(:,1) = Q(:,1)/R(1,1);
    for k = 2:m
        for i = 1:k-1
            R(i,k) = Q(:,k)'*Q(:,i);
            Q(:,k) = Q(:,k) - R(i,k)*Q(:,i);
        end
        for i = 1:k-1
            S(i) = Q(:,k)'*Q(:,i);
            Q(:,k) = Q(:,k) - S(i)*Q(:,i);
            R(i,k) = R(i,k) + S(i);
        end

        R(k,k) = norm(Q(:,k),2);
        if(R(k,k) == 0)
            error('Error');
        end
        Q(:,k) = Q(:,k)/R(k,k);
    end

end