function [ChiperText KS Kode t modulo result]= EncryptionProsessMain(Plaintext,KeyLevel,biner)
type=KeyLevel(1);
if type==1
    [ChiperText KS Kode t modulo result]=EncryptionMin(Plaintext,KeyLevel,biner);
elseif type==2
    [ChiperText KS Kode t modulo result]=EncryptionMax(Plaintext,KeyLevel,biner);
elseif type==3
    [ChiperText KS Kode t modulo result]=EncryptionMaxMin(Plaintext,KeyLevel,biner);
elseif type==4
    [ChiperText KS Kode t modulo result]=EncryptionAveMin(Plaintext,KeyLevel,biner);
end