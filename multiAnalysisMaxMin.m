function [X kode]=multiAnalysisMaxMin(A,level)
n=size(level,2);
kode=[];
X=A;
for i=1:n
    [X l]=MultiLevelAnalysisMaxMinLS(X,level(i));
    kode=[l kode];
end

