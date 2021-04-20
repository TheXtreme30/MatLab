function M = cofactor(n,g,h,a)

        
        for k = 1:g-1
        for p = 1:h-1
            M(k,p) = a(k,p);
        end
        end
        for k = 1:g-1
        for p = h+1:n
            M(k,p-1) = a(k,p);
        end
        end
        for k = g+1:n
        for p = 1:h-1
            M(k-1,p) = a(k,p);
        end
        end
        for k = g+1:n
        for p = h+1:n
            M(k-1,p-1) = a(k,p);
        end
        end        
   
    
end

