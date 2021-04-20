function S = multiplication(n,m,A,B,q)
    
    for i = 1:n
        for j = 1:m
            S(i,j) = 0;
            for k = 1:q
               S(i,j) = S(i,j) + A(i,k)*B(k,j); 
            end
        end
    end

end

