function d = determinant(n,a)

    d = 0;
    
        if n<1
            disp('no')
        elseif n==1
            d = a(1,1);
        elseif n==2
            d = a(1,1)*a(2,2)-a(1,2)*a(2,1);
        else
            for j = 1:n     
                 Cof = cofactor(n,1,j,a);
                 
                 if j==1
                     d = ((-1)^(1+j))*a(1,j)*determinant(n-1,Cof);
                 else
                    d = d + (((-1)^(1+j))*a(1,j)*determinant(n-1,Cof));
                 end
            end
        end
end
                     


