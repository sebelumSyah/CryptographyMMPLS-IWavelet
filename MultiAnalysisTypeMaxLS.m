function [X kode]=MultiAnalysisTypeMaxLS(A,level)
n=size(level,2);
kode=[];
X=A;
for k=1:n
    [X l]=MultiLevelAnalysisTypeMaxLS(X,level(k));
    kode=[l kode];
end
%=========================================================================
    function [c1 l1]=MultiLevelAnalysisTypeMaxLS(A2,level_value)
    n=size(A2,2);
    c1=[];l1=[];
    for t=1:level_value
        temp=A2;
        l1=[size(temp,2) l1];
        [temp le]=AnalysisMaxLS(A2);
        c1=[temp((size(temp,2)/2)+1:end) c1];
        A2=temp(1:size(temp,2)/2);
        if t==level_value
            c1=[A2 c1];
            l1=[size(A2,2) size(A2,2) l1];
        end
    end
        function [c l]=AnalysisMaxLS(A1)
        n1=size(A1,2);
        if mod(size(A1,2),2)~=0
          A1(end+1)=A1(end);
        end
        m=size(A1,2);
        od=[];
        ev=[];
        for i=1:m
            if mod(i,2)~=0
               od(end+1)=A1(i);
            else
               ev(end+1)=A1(i);
            end
        end
        b1=size(od,2);
        b2=size(ev,2);
        for i=1:b1
            if i==1
               De(i)=od(i)-ev(i);
            else
                De(i)=od(i)-max(ev(i-1),ev(i));
            end
        end
        for i=1:b2
            if i==b2
                Ap(i)=ev(i)+max(0,De(i));
            else
                Ap(i)=ev(i)+max(0,max(De(i),De(i+1)));
            end
        end
        c=[Ap De];
        l=[size(Ap,2) size(De,2), n1];
        end
    end
end
