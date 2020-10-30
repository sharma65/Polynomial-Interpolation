function TestPn(n)
X = -5:0.001:5;
A = (2*rand(1,n+1)-1).*[1:n+1];
Y = A(1) + A(2)*X;
x(n+1) = 0;
y(n+1) = 0;

for i = 3:n+1;
    Y = Y + A(i).*X.^(i-1);
end

ind = randsample(length(X),n+1);

for i = 1:n+1
    x(i) = X(ind(i)); 
    y(i) = Y(ind(i));
end

P = Pn(X,x,y);
figure;
plot(X,Y,'k-','linewidth',2);
hold on; grid on;
plot(X,P,'r--','linewidth',2);
set(gca,'fontsize',20);xlabel('x');ylabel('y');
plot(x,y,'go','linewidth',3);
set(gca,'xtick',min(X):max(X));
title(['Polynomial, n = ', num2str(n)]);
end