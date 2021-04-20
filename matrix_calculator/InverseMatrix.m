function    S = InverseMatrix(n,a)
    for i = 1:n
        for j = 1:n
            Cof = cofactor(n,i,j,a);
            c = ((-1)^(i+j))*determinant(n-1,Cof);
            C(i,j) = c;
            
        end
    end
    
    K = transposition(n,n,C);
    D = determinant(n,a);
    S = K/D;
    
end

