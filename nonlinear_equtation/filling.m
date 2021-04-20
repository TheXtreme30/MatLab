function [X,Ya] = filling(a,b,n,k)
    
    X = linspace(a,b,n);
    for j = 1:n
        Ya(j) = fTest(X(j),k);
    end

end

