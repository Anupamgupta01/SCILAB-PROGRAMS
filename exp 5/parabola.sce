clc;
n=input('Enter the no. of pairs of values (x,y):')
disp('Enter the values of x:')
for i=1:n
 x(i)=input('-->')
end
disp('Enter the values of y:')
for i=1:n
17
 y(i)=input('-->')
end
sumx=0;sumx2=0;sumx3=0;sumx4=0;sumy=0;sumxy=0;sumx2y=0;
for i=1:n
 sumx=sumx+x(i);
 sumx2=sumx2+x(i)^2;
 sumx3=sumx3+x(i)^3;
 sumx4=sumx4+x(i)^4;
 sumy=sumy+y(i);
 sumxy=sumxy+x(i)*y(i);
 sumx2y=sumx2y+x(i)^2*y(i);
end
A=[sumx2 sumx n; sumx3 sumx2 sumx; sumx4 sumx3 sumx2];
B=[sumy;sumxy;sumx2y];
C=inv(A)*B
printf('The parabola is y=(%g)x^2+(%g)x+(%g)',C(1,1),C(2,1),C(3,1))
