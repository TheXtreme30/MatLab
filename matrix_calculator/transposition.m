function S = transposition(n,m,A)

    for i = 1:n
        for j = 1:m
            S(i,j) =A (j,i);
        end
    end

end

