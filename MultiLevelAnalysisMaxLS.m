function [c l]=MultiLevelAnalysisMaxLS(A,level)
n=size(A,2);
c=[];l=[];
for i=1:level
    temp=A;
    l=[size(temp,2) l];
    [temp le]=AnalysisMaxLS(A);
    c=[temp((size(temp,2)/2)+1:end) c];
    A=temp(1:size(temp,2)/2);
    if i==level
        c=[A c];
        l=[size(A,2) size(A,2) l];
    end
end

