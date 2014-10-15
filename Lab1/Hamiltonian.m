function H = Hamiltonian(n)
        if(rem(n,2) ~= 0)
            error('invalid size, hamiltonian matrix has even dimension');
        end
        k = n/2;
        h11 = randn(k);
        h12 = randn(k);
        h12 = h12 + h12';
        h21 = randn(k);
        h21 = h21 + h21';
        h22 = -h11';
        H = [h11 h12;h21 h22];
end
