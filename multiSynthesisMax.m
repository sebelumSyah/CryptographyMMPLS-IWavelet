function C=multiSynthesisMax(X,kode,level)
for i=1:size(level,2)
    levelSynthesis(i)=level(size(level,2)-i+1);
end
n=size(levelSynthesis,2);
C=X;
for i=1:n
    C=MulitLevelSynthesisMaxLS(C,kode(1:levelSynthesis(i)+2),levelSynthesis(i));
    kode(1:levelSynthesis(i)+2)=[];
end
