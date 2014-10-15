function x = bisect(p, x0, x1, tol)
    v0 = Horner(p, x0);
    v1 = Horner(p, x1);
    if(v0*v1>0)
        error('Error: No root or even number of roots in the provided interval');
    end
    while x1-x0>2*tol
        x_mid = (x0 + x1)/2;
        v0 = Horner(p, x0);
        v1 = Horner(p, x1);
        v_mid = Horner(p, x_mid);
        if(v0*v_mid < 0)
            x1 = x_mid;
        elseif(v_mid*v1<0)
                x0 = x_mid;
        else 
            x0= x_mid; 
            x1 = x_mid;
        end
    end
    x = (x0+x1)/2;
end