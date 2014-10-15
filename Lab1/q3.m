for counter=200:50:1150
    A = rand(counter, counter);
    b = rand(counter, 1);
    size((counter-200)/50 + 1) = counter;
    tic;
    x_gepp = A\b;
    time_gepp((counter-200)/50 + 1) = toc;
    tic;
    x_inv = inv(A) * b;
    time_inv((counter-200)/50 + 1) = toc;
end
figure();
semilogy(size,time_gepp);
hold on;
semilogy(size,time_inv);
hold off;

figure();
plot(size,time_gepp);
hold on;
plot(size,time_inv);
hold off;

figure();
semilogx(size,time_gepp);
hold on;
semilogx(size,time_inv);
hold off;