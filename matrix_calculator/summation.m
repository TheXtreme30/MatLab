function S = summation(n,m,A,B)
     
    for i = 1:n
        for j = 1:m
            S(i,j) = A(i,j)+B(i,j);
        end
    end

end

