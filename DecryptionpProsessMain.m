function [text t]=DecryptionpProsessMain(ChiperText,KS,Kode,KeyLevel, modulo, result,biner)
type=KeyLevel(1);
if type==1
    [text t]=DecryptionMin(ChiperText,KS,Kode,KeyLevel, modulo, result,biner);
elseif type==2
    [text t]=DecryptionMax(ChiperText,KS,Kode,KeyLevel, modulo, result,biner);
elseif type==3
    [text t]=DecryptionMaxMin(ChiperText,KS,Kode,KeyLevel, modulo, result,biner);
elseif type==4
    [text t]=DecryptionAveMin(ChiperText,KS,Kode,KeyLevel, modulo, result,biner);
end