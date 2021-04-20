function [F,X,Y] = reading(n)

    p1 = 'iCloud?Drive\Documents\MATLAB\Interpolation\VAR17';
    if n>=11
    p2 = (['TAB' int2str(n-1) '.pages']);
    else
    p2 = (['TAB0' int2str(n-1) '.pages']);
    end
    
    F = fopen([p1 p2] , 'r');
    t = fgetl(F);
    A = fscanf(F,'%f',[2 n]);
    fclose(F)
    for k = 1:n
        Xu(k) = A(1,k);
        Yu(k) = A(2,k);
    end

end


