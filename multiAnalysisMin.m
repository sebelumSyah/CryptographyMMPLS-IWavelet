function [X kode]=multiAnalysisMin(A,level)
n=size(level,2);
kode=[];
X=A;
for i=1:n
    [X l]=MultiLevelAnalysisMinLS(X,level(i));
    kode=[l kode];
end

