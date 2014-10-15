C=[];
N= 2:2:16;
for n=N
    H=hilb(n); 
    C=[C; cond(H)];
end
semilogy(N,C)