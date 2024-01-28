function X=MulitLevelSynthesisMaxLS(c,l,level)
n=size(c,2);
for i=1:level
    c1=c;
    m=l(1);
    c1=SynthesisMaxLS(c1(1:2*m),l(1:3));
    c(1:2*m)=[];
    c=[c1 c];
    if l(1)+l(2)==l(3)
        l(1)=[];
        l(1)=2*l(1);
    else
        l(1)=[];
        l(1)=2*l(1)-1;
    end
end
X=c;
