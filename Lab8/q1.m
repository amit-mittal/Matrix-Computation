A = [2.4347 -0.8641 1.4661;-0.8641 2.6630 -3.1263;1.4661 -3.1263 6.9023];
q = [1;1;1];
k = 90;
[iterate, sigma] = powermethod(A, q, k)
