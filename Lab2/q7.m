n = 10;
H = hilb(n);
x = rand(n, 1);
b = H*x;
x1 = H \ b;
r = H*x1 - b;
disp ( [norm(r) norm(x - x1)] )