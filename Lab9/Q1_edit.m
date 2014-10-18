function[]=Q1()
    format long e;
    degree=19;
    t=-5:.5:6;
    b=(sin(pi*t/5)+(t/5))';
    deg=0:degree;
    for i = 1:length(b)
        A(i,:)=t(i).^deg;
    end
    
    % Part a
    p1=A\b;
    r1=b-(A*p1);
    
    % Part b
    p2=(A'*A)\(A'*b);
    r2=(A'*b)-(A'*A*p2);
    
    % Part c
    temp = [eye(length(b)) A ; A' zeros(degree+1)];
    rp3 = temp\[b;zeros(length(deg),1)];
    r3 = -rp3(1:length(b));
    p3 = rp3(length(b)+1:degree+length(b)+1);

    % Plotting Graphs
    figure(1);
    hold on;

    plot(t,b-A*p1,'.r');
    plot(t,b-A*p2,'og');
    plot(t,b-A*p3,'+k');
    hold off;
    
    fprintf('Norm of residual in first  part is %e \n',norm(r1,2));
    fprintf('Norm of residual in second part is %e \n',norm(r2,2));
    fprintf('Norm of residual in third  part is %e \n',norm(r3,2));
end