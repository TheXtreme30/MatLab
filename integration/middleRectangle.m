function  [I,N] = middleRectangle(a,b,eps)
    
    t = 0;
    N = 1;
    I1 = (b-a)/2 * 2*reducedFunction(a,b,t);
    I = 0;
    R1 = abs(I - I1);
    
    
    
   
  while  R1 > eps 
      
        I = 0;
        I1 = 0;
        h = (b-a)/N;
        ah = [a:h:b-h];
        bh = [a+h:h:b];
        
         for q = 1:N
             
            I = I + (bh(q)-ah(q))/2 * 2*reducedFunction(ah(q),bh(q),t);
               
         end 
             
        N = N+1;
        h = (b-a)/N;
        ah = [a:h:b-h];
        bh = [a+h:h:b];
         
        for q = 1:N
            
             I1 = I1 + (bh(q)-ah(q))/2 * 2*reducedFunction(ah(q),bh(q),t);
             
        end
         
      
        
         R1 = abs(I - I1);
        
         
        
      
            
  end
         
    
end

