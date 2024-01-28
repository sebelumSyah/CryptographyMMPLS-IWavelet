function [X kode]=multiAnalysisAveMin(A,level)
n=size(level,2);
kode=[];
X=A;
for i=1:n
    [X l]=MultiLevelAnalysisAveMinLS(X,level(i));
    kode=[l kode];
end

