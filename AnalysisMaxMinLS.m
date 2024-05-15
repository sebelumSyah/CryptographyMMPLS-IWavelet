function [c l]=AnalysisMaxMinLS(A)
n=size(A,2);
if mod(size(A,2),2)~=0
    A(end+1)=A(end);
end
m=size(A,2);
od=[];
ev=[];
for i=1:m
    if mod(i,2)~=0
        od(end+1)=A(i);
    else
        ev(end+1)=A(i);
    end
end
b1=size(od,2);
b2=size(ev,2);
for i=1:b1
    if i==1
        De(i)=od(i)-ev(i);
    else
        De(i)=od(i)-max(ev(i-1),floor((ev(i-1)+ev(i))/2));
    end
end
for i=1:b2
    if i==b2
        Ap(i)=ev(i)+min(0,De(i));
    else
        Ap(i)=ev(i)+min(0,min(De(i),floor((De(i+1)+De(i))/2)));
    end
end
c=[Ap De];
l=[size(Ap,2) size(De,2), n];
