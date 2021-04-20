clc 
clear all

n = input('uzli');
a = input('');
b = input('');

[F,Xu,Yu] = reading(n);

for k = 1:n
    disp(['X(' int2str(k) ') = ' num2str(Xu(k), '%6.3f')...
    '      Y(' int2str(k) ') = ' num2str(Yu(k), '%6.3f')])
end

p = 1000;
[X,Ya] = filling(a,b,p)

for k = 1:p
    F(k) = interpolation(Xu,Yu,n,X(k));
end

disp(F')
p1 = plot(Xu,Yu , X,F , X,Ya);
xlabel('x')
ylabel('y')
grid on


        

