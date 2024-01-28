function [X kode]=multiAnalysisMax(A,level)
n=size(level,2);
kode=[];
X=A;
for i=1:n
    [X l]=MultiLevelAnalysisMaxLS(X,level(i));
    kode=[l kode];
end

