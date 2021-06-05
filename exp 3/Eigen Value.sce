clc;
disp('Enter the matrix:')
for i=1:2
for j=1:2
A(i,j)=input('\');
end
end
b=A(1,1)+A(2,2);
c=A(1,1)*A(2,2)-A(1,2)*A(2,1);
disp('The characteristic equation is:')
disp(['e^2+' string(-b) '*e+' string(c) '=0'])
e1=(b+sqrt(b^2-4*c))/2;
e2=(b-sqrt(b^2-4*c))/2;
if A(1,2)~=0 then
    v1=[A(1,2);e1-A(1,1)];
    v2=[A(1,2);e2-A(1,1)];
else if A(2,1)~=0
        v1=[e1-A(2,2);A(2,1)];
        v2=[e2-A(1,2);A(2,1)];
else
         v1=[1;0];
         v2=[0;1];
end
end
disp('First Eigen value:');
disp(e1);
disp('First Eigen vector:');
disp(v1);
disp('Second Eigen value:');
disp(e2);
disp('Second Eigen vector:');
disp(v2);
