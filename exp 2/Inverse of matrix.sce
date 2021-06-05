clc;
clear;
close;
function[B]=anupam(A)
B=eye(3,3);
disp('The given matrix A is==>')
disp(A)
if(det(A)==0) then
disp('Matrix A is singular, Inverse does not exist')
abort
end
aug=[A,B];
if(aug(1,1)==0 &aug(2,1)~=0) then
C(1,:)=aug(1,:);
aug(1,:)=aug(2,:);
aug(2,:)=C(1,:);
elseif(aug(1,1)==0 &aug(3,1)~=0)
C(1,:)=aug(1,:);
aug(1,:)=aug(3,:);
aug(3,:)=C(1,:);
end
aug(1,:)=aug(1,:)/aug(1,1);
aug(2,:)=aug(2,:)-aug(2,1)*aug(1,:);
aug(3,:)=aug(3,:)-aug(3,1)*aug(1,:);
if(aug(2,2)==0)
C(2,:)=aug(2,:);
aug(2,:)=aug(3,:);
aug(3,:)=C(2,:);
end
aug(2,:)=aug(2,:)/aug(2,2);
aug(1,:)=aug(1,:)-aug(1,2)*aug(2,:);
aug(3,:)=aug(3,:)-aug(3,2)*aug(2,:);

aug(3,:)=aug(3,:)/aug(3,3);
aug(1,:)=aug(1,:)-aug(1,3)*aug(3,:);
aug(2,:)=aug(2,:)-aug(2,3)*aug(3,:);
aug(:,1:3)=[]
B=aug(:,1:3);
disp('The inverse of given matrix is==>')
endfunction
