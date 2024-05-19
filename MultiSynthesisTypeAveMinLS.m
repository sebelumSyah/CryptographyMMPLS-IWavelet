function C=MultiSynthesisTypeAveMinLS(X,kode,level)
for k=1:size(level,2)
    levelSynthesis(k)=level(size(level,2)-k+1);
end
n=size(levelSynthesis,2);
C=X;
for k=1:n
    C=MulitLevelSynthesisAveMinLS(C,kode(1:levelSynthesis(k)+2),levelSynthesis(k));
    kode(1:levelSynthesis(k)+2)=[];
end
%=================================================================================
    function X=MulitLevelSynthesisAveMinLS(A,l,level)
    n=size(A,2);
    for j=1:level
        c1=A;
        m=l(1);
        c1=SynthesisAveMinLS(c1(1:2*m),l(1:3));
        A(1:2*m)=[];
        A=[c1 A];
        if l(1)+l(2)==l(3)
            l(1)=[];
            l(1)=2*l(1);
        else
            l(1)=[];
            l(1)=2*l(1)-1;
        end
    end
    X=A;
        function C=SynthesisAveMinLS(A1,l)
        n=size(A1,2);
        if mod(n,2)==0
            Ap=A1(1:n/2);
            De=A1((n/2)+1:end);
        else
            Ap=A1(1:floor(n/2));
            De=A1(floor(n/2)+1:end);
        end
        b1=size(Ap,2);
        b2=size(De,2);
        for i=1:b1
            if i==b2
                ev(i)=Ap(i)-min(0,De(i));
            else
                ev(i)=Ap(i)-min(0,min(De(i),De(i+1)));
            end
        end
        for i=1:b1
            if i==1
                od(i)=De(i)+ev(i);
            else
               od(i)=De(i)+floor((ev(i-1)+ev(i))/2);
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
    end
    end
end