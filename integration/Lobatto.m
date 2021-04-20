function [I,N] = Lobatto(a,b,eps)

   t1 =  -0.7650553238;
   t2 = -0.2852315163; 
   t3 = 0.2852315163; 
   t4 = 0.7650553238;
   
   c1 = 0.3784749568; 
   c2 = 0.5548583768; 
   c3 = 0.5548583768; 
   c4 = 0.3784749568;
    n = 4;
    N = 1;
    
    I1 = (b-a)/((n+1)*(n+2))*(f(a)+f(b)) + (b-a)/2 * ( c1*reducedFunction(a,b,t1)+c2*reducedFunction(a,b,t2)+c3*reducedFunction(a,b,t3)+c4*reducedFunction(a,b,t4) );
    I = 0;
    R1 = abs(I - I1);
    
   
  while  R1 > eps  
      
        I = 0;
        I1 = 0;
        h = (b-a)/N;
        ah = [a:h:b-h];
        bh = [a+h:h:b];
        

         for q = 1:N
            
            I = I + (bh(q)-ah(q))/((n+1)*(n+2))*(f(ah(q))+f(bh(q))) + (bh(q)-ah(q))/2 * ( c1*reducedFunction(ah(q),bh(q),t1)+c2*reducedFunction(ah(q),bh(q),t2)+c3*reducedFunction(ah(q),bh(q),t3)+c4*reducedFunction(ah(q),bh(q),t4) );
            
         end 
         
        N = N+1; 
        h = (b-a)/N;
        ah = [a:h:b-h];
        bh = [a+h:h:b];
        
        for q = 1:N
            
            I1 = I1 + (bh(q)-ah(q))/((n+1)*(n+2))*(f(ah(q))+f(bh(q))) + (bh(q)-ah(q))/2 * ( c1*reducedFunction(ah(q),bh(q),t1)+c2*reducedFunction(ah(q),bh(q),t2)+c3*reducedFunction(ah(q),bh(q),t3)+c4*reducedFunction(ah(q),bh(q),t4) );
            
        end
            
         
      
         
         R1 = abs(I - I1);
         
        
         
         
        
  
       
  end
        
  

end



