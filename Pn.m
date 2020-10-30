function P = Pn(X,x,y)

n = length(x);
P = 0;

for k = 1:n
    L = ones([1,length(X)]); 
    for i = 1:n
        if ( i ~= k)
            L = L .* (X - x(i))/(x(k) - x(i));
        end
    end
    P = P + y(k) * L;    
end

end

    
