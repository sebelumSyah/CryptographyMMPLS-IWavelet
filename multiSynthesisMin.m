function C=multiSintesisMin(X,kode,level)
for i=1:size(level,2)
    levelSintesis(i)=level(size(level,2)-i+1);
end
n=size(levelSintesis,2);
C=X;
for i=1:n
    C=MulitLevelSintesisMinLS(C,kode(1:levelSintesis(i)+2),levelSintesis(i));
    kode(1:levelSintesis(i)+2)=[];
end
