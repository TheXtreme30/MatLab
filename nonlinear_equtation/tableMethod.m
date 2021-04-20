function T = tableMethod(n,k,x)

    
    for i = 1:4
        for j = 1:n
            if i == 1
                T(j,i) = x(j);
            elseif i == 2
                T(j,i) = fTest(x(j),k);
                
            elseif i == 3
                T(j,i) = d1(x(j),k);
            elseif i == 4
                T(j,i) = d2(x(j),k);
            end
        end
    end

end

