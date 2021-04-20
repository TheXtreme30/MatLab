function displaying(A,n,m)
      
      for k = 1:n
         s = [];
         for p = 1:m
            s = [s A(k,p)];
         end
         disp(s) 
      end
end

