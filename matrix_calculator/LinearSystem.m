function    X = LinearSystem(n,A,B)
    A1 = InverseMatrix(n,A);
    X = A1*B;
end

