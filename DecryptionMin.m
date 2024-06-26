function [text t]=DecryptionMin(ChiperText,KS,Kode,KeyLevel, modulo, result,biner)
tic
if size(result,2)==size(double(ChiperText),2)
    ChiperAscii_modulo=double(ChiperText);
    ChiperAscii=ChiperAscii_modulo-32;
elseif 2*size(result,2)==size(double(ChiperText),2)
    ChiperAscii_modulo=double(ChiperText);
    ChiperAscii=65503*result+ChiperAscii_modulo(1:size(ChiperAscii_modulo,2)/2)-32;
end

%KS=flip_array(KS);
n1=size(KS,2);
dekripChar=[];
%biner=16;
for i=1:n1-1
    dekripChar=strcat(dekripChar,dec2bin(KS(i),biner));
end
m=mod(size(ChiperAscii,2),biner);
if m==0
    m=biner;
end
dekripChar=strcat(dekripChar,dec2bin(KS(n1),m));
for i=1:size(ChiperAscii,2)
    dekripsi(i)=(ChiperAscii(i))*(-1)^(str2num(dekripChar(i)));
end
C=MultiSynthesisTypeMinLS(dekripsi,Kode,KeyLevel);
text=char(C);
t=toc;