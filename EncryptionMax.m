function [ChiperText KS Kode t modulo result]=EncryptionMax(A,KeyLevel,biner)
%%% EXAMPLE
%%%INPUT : A='max-plus algebra 2024'
%%%KeyLevel=[2 3 3];
%%%biner=16
tic
textASCII=double(A);
[X Kode]=MultiAnalysisTypeMaxLS(textASCII,KeyLevel);
SinyalBin=zeros(1,size(X,2));
for i=1:size(X,2)
    if X(i)<0
        SinyalBin(i)=1;
    else
        SinyalBin(i)=0;
    end
end
X=abs(X);
[modulo result]=transform_over(X);
X=modulo+32;
N=ceil(size(SinyalBin,2)/biner);
for i=1:N-1
    KeyNum(i)=bin2dec(num2str(str2num(char(SinyalBin((i*biner-(biner-1)):(i*biner)) + '0'))));
end
KeyNum(N)=bin2dec(num2str(str2num(char(SinyalBin((N*biner-(biner-1)):size(SinyalBin,2)) + '0'))));
KS=KeyNum;
rho=sum(result);
if rho==0
    ChiperText=char(X);
else
    ChiperText=char([X result+32]);
end
t=toc;


