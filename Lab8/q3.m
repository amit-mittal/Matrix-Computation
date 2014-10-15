%{
A = [0 0 1;0 1 0;1 0 0];
q = [1;0;0];
k = 5;
[iterate, sigma] = Rayleigh(A, q, k);

% to get the e vector of A
[Q, H] = hess(A);
Q*iterate(:, k)
%}
A = [1 1 1;-1 9 2;0 -1 2];
q = [1;0;1];
k = 10;
[iterate, sigma] = Rayleigh(A, q, k)
%{
A = [2.4347 -0.8641 1.4661;-0.8641 2.6630 -3.1263;1.4661 -3.1263 6.9023];
q = [1;1;1];
k = 90;
[iterate, sigma] = Rayleigh(A, q, k)
%}