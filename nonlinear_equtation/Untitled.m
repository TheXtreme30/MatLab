clc
clear all

k = 0.25;
a = 0;
b = 3*pi/k;
h = input('h : ');
n = (b-a)/h + 1;
n = fix(n);

[X,Ya] = filling(a,b,n,k);

T = tableMethod(n,k,X);
disp(num2str(T, '%6.3f'))
signTable = sign(T);
%disp(signTable)
i = 0;
for j = 2:n
    
   if signTable(j,2) ~= signTable(j-1,2)
       i = i + 1;
       J(i) = j;
   elseif signTable(j-1,2) == 0
       i = i - 1;
   end
       
end
disp(['?????????? ?????? ?????????' num2str(i, '%6.0f')])

for s = 1:i
    [M(s),N(s)] = intervalSearch(signTable,J(s),n,T);
end
disp('????? ????????? ?? ??????????:')
disp(['[' num2str(M(1), '%6.3f') ';' num2str(N(1), '%6.3f') ']'])

x1 = secantMethod(M(2),N(2),k,n);
disp(num2str(x1(n), '%6.3f'))


p = plot(X,Ya,'.');
xlabel('x')
ylabel('y')
grid on


