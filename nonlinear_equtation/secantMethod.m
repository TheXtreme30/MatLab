function x = secantMethod(a,b,c,n)
   x(1) = a;
   x(2) = b;
   
    for k = 3:n
        x(k) = (x(k-2) + x(k-1))/2 - 1/2*(x(1) - x(2))/(fTest(x(1),c) - fTest(x(2),c))*(fTest(x(k-2),c) + fTest(x(k-1),c));
        
    end
end

