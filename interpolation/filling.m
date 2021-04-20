function [X,Ya] = filling(a,b,p)

    X = linspace(a,b,p);
    for k = 1:p
        Ya(k) = y(X(k));
    end

end

