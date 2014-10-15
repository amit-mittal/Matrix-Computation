function det = mydet(A)
    [L, U, P, sigma] = gepp_modified(A);
    det = sigma;
    temp = diag(U);
    for i=1:length(temp)
        det = det * temp(i);
    end
end