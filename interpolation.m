function F = interpolation(X,Y,n,x)

F = 0;
for i = 1:n
    L = 1;
    for j = 1:n
        if j ~= i
            L = L*((x-X(j))/(X(i)-X(j)));
        end
    end
    F = F+Y(i)*L;
end

end

