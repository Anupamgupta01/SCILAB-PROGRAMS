clc;
m=input('Enter The Number Of Rows:')
n=input('Enter The Number Of Columns:')
A=zeros(m,n)
B=zeros(m,n)
C=zeros(m,n)
disp('Enter the elements of first matrix:')
for i=1:m
for j=1:n
A(i,j)=input('')
end
end
disp('Enter the elements of second matrix:')
for i=1:m
for j=1:n
B(i,j)=input('')
end
end
for i=1:m
for j=1:n
C(i,j)=A(i,j)+B(i,j)
end
end
disp('First Matrix:')
disp(A)
disp('Second Matrix:')
disp(B)
disp('Sum Of Above Two Matrices:')
disp(C)
