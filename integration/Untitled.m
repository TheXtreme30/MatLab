clc 
clear all

disp('enter interval bounds:')
a = input('a = ');
b = input('b = ');
disp('enter accuracy:')
eps = input('eps = ');


[I,p] = middleRectangle(a,b,eps);
disp('The value of the integral found by the method of middle rectangles:')
disp(['I = ' num2str(I, '%6.10f')])
disp('number of divisions:')
disp(['p = ' num2str(p-1, '%6.0f')])

[I1,p1] = Lobatto(a,b,eps);
disp('The value of the integral found by the Lobatto method:')
disp(['I1 = ' num2str(I1, '%6.10f')])
disp('number of divisions:')
disp(['p1 = ' num2str(p1-1, '%6.0f')])




