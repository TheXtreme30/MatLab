function F = interpolation(Xu,Yu,n,X)

F = 0;
for i = 1:n
    L = 1;
    for j = 1:n
        if j ~= i
            L = L*((X-X(j))/(Xu(i)-Xu(j)));
        end
    end
    F = F+Yu(i)*L;
end

end

