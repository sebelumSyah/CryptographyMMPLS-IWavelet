function nilai_korelasi=corelation_value(plain,chip)
plain_num=double(plain);
chip_num=double(chip);
n=size(plain_num,2);
m=size(chip_num,2);
A=0;
for i=1:min(n,m)
    A=A+plain_num(i).*chip_num(i);
end
A=n*A;
plain=0;
chip=0;
for i=1:min(n,m)
    plain=plain+plain_num(i);
    chip=chip+chip_num(i);
end
B=plain*chip;
plainS=0;
chipS=0;
for i=1:min(n,m)
    plainS=plainS+plain_num(i)^2;
    chipS=chipS+chip_num(i)^2;
end
nilai_korelasi=(A-B)/(sqrt((n*plainS-plain^2)*(n*chipS-chip^2)));
nilai_korelasi=abs(nilai_korelasi);
