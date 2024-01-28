function C=SynthesisMaxLS(A,l)
n=size(A,2);
if mod(n,2)==0
    Ap=A(1:n/2);
    De=A((n/2)+1:end);
else
    Ap=A(1:floor(n/2));
    De=A(floor(n/2)+1:end);
end
b1=size(Ap,2);
b2=size(De,2);
for i=1:b1
    if i==b2
        ev(i)=Ap(i)-max(0,De(i));
    else
        ev(i)=Ap(i)-max(0,max(De(i),De(i+1)));
    end
end
for i=1:b1
    if i==1
        od(i)=De(i)+ev(i);
    else
        od(i)=De(i)+max(ev(i-1),ev(i));
    end
end
for i=1:b1+b2
    if mod(i,2)~=0
        C(i)=od(floor(i/2)+1);
    else
        C(i)=ev(floor(i/2));
    end
end
if l(1)+l(2)~=l(3)
    C(end)=[];
end