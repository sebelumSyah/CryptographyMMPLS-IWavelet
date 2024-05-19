function [modulo result]=transform_over(A)
n=size(A,2);
modulo=zeros(1,n);
result=zeros(1,n);
for i=1:n
        modulo(i)=mod(A(i),65503);
        result(i)=floor(A(i)/65503);
end