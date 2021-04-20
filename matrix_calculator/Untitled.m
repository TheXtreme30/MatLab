clc
clear all

disp('actions with matrices:')
disp('1 - summation')
disp('2 - subtraction')
disp('3 - multiplication')
disp('4 - transposition')
disp('5 - determinant')
disp('6 - inverse matrix')
disp('7 - linear equation system')
n = input('selected action :');

switch n
    case 1
disp ('enter the matrix A')
rowA = input ('row  : ');
colA = input ('col  : ');
A = matrix(rowA,colA);
disp ('enter the matrix B')
rowB = input ('row  : ');
colB = input ('col  : ');
B = matrix(rowB,colB);
disp('A')
displaying(A,rowA,colA)
disp('B')
displaying(B,rowB,colB)
    if (rowA==rowB) & (colA==colB)
        Sd = A+B;     
        S = summation(rowA,colA,A,B);
        disp('S')
        displaying(S,rowA,colA)
        disp('Sd')
        displaying(Sd,rowA,colA)
    else
        disp('no')
    end
    
    case 2
disp ('enter the matrix A')
rowA = input ('row  : ');
colA = input ('col  : ');
A = matrix(rowA,colA);
disp ('enter the matrix B')
rowB = input ('row  : ');
colB = input ('col  : ');
B = matrix(rowB,colB);
disp('A')
displaying(A,rowA,colA)
disp('B')
displaying(B,rowB,colB)

    if (rowA==rowB) & (colA==colB)
        Sd = A-B;     
        S = subtraction(rowA,colA,A,B);
        disp('S')
        displaying(S,rowA,colA)
        disp('Sd')
        displaying(Sd,rowA,colA)
    else
        disp('no')
    end
        
    case 3
disp ('enter the matrix A')
rowA = input ('row  : ');
colA = input ('col  : ');
A = matrix(rowA,colA);
disp ('enter the matrix B')
rowB = input ('row  : ');
colB = input ('col  : ');
B = matrix(rowB,colB);
disp('A')
displaying(A,rowA,colA)
disp('B')
displaying(B,rowB,colB)        
    if rowB == colA
        Sd = A*B;     
        S = multiplication(rowA,colB,A,B,rowB);
        disp('S')
        displaying(S,rowA,colB)
        disp('Sd')
        displaying(Sd,rowA,colB)
    else
        disp('no')
    end
    
    case 4
disp ('enter the matrix A')
row = input ('row  : ');
col = input ('col  : ');
A = matrix(row,col);
disp('A')
displaying(A,row,col)
        
    Sd = A';
    S = transposition(col,row,A);
    disp('S')
    displaying(S,col,row)
    disp('Sd')
    displaying(Sd,col,row)
    
    case 5
disp ('enter the matrix A')
row = input ('row  : ');
col = input ('col  : ');
A = matrix(row,col);
disp('A')
displaying(A,row,col)

   if row==col
       D = det(A);
       disp('-')
       d = determinant(col,A);
       disp('d')
       disp(d)
       disp('D')
       disp(D)
      
   else
       disp('no')
   end
   
    case 6
disp ('enter the matrix A')
row = input ('row  : ');
col = input ('col  : ');
A = matrix(row,col);
disp('A')
displaying(A,row,col)
d = determinant(col,A);
if row==col
    if d~=0
    Sd = inv(A);
    S = InverseMatrix(row,A);
    disp('S')
    displaying(S,row,col)
    disp('Sd')
    displaying(Sd,row,col)
    
    E = multiplication(row,col,A,S,row);
    disp('E')
    displaying(E,row,col)
    
    else
        disp('d no')
    end
else
    disp('no')
end

    case 7
disp ('enter the matrix A')
rowA = input ('row  : ');
colA = input ('col  : ');
A = matrix(rowA,colA);
disp ('enter the matrix B')
rowB = rowA;
colB = 1;
B = matrix(rowB,colB);
disp('A')
displaying(A,rowA,colA) 
disp('B')
displaying(B,rowB,colB) 
if rowA==colA
    detA = determinant(rowA,A);
    if detA~=0
        X = LinearSystem(rowA,A,B);
        disp('X')
        displaying(X,rowB,colB)
    else
        disp('det=0')
    end
    else 
    disp('row~=col')
end
        
        

end 