function [M,N] = intervalSearch(S,j,n,T)

    for k = 1:j-1
        if S(k,3) == S(k,4)
           M = T(k,1);
        else
            M = T(j-1,1);
        end
    end
    
    for k = j:n
        if S(k,3) == S(k,4)
           N = T(k,1);break;
        else
            N = T(j,1);
        end
    end
    
end

