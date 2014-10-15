format long e
for i = 1:23
    t(i) = -5 + (i-1)/2;
    for j=1:19
        A(i, j) = t(i)^(j);
    end
    b(i) = sin(pi/5*t(i)) + t(i)/5;
end
t = t';
b = b';

%Method 1 A\b
a_m1 = A \ b;
%Method 2 A'A*a = A'b
a_m2 = (A'*A)\(A'*b);
%Method 3
new_A = [eye(23) A;A' zeros(19)];
new_b = [b;zeros(19, 1)];
temp_a = new_A \ new_b;
a_m3 = temp_a([24:42], :);

%part 2 - condition number of matrices
cond_m1 = cond(A);
cond_m2 = cond(A'*A);
cond_m3 = cond(new_A);

%part 3 - norm of the residual
r1 = A*a_m1 - b;
r2 = A*a_m2 - b;
r3 = A*a_m3 - b;
norm(r1);
norm(r2);
norm(r3);
