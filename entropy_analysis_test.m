clc;
clear;
KeyLevel=[2 5 5 5 7 9 8];
biner=16;

plaintext1=char(importdata('Test Data 1.txt'));
[ChiperText1 KS Kode t]=EnkripsiMin(plaintext1,KeyLevel,biner);
entropy_plaintext1 =entropy_analysis(plaintext1)
entropy_chipertext1 =entropy_analysis(ChiperText1)
disp('====================================================================')
plaintext2=char(importdata('Test Data 2.txt'));
[ChiperText2 KS Kode t]=EnkripsiMin(plaintext2,KeyLevel,biner);
entropy_plaintext2 =entropy_analysis(plaintext2)
entropy_chipertext2 =entropy_analysis(ChiperText2)
disp('====================================================================')
plaintext3=char(importdata('Test Data 3.txt'));
[ChiperText3 KS Kode t]=EnkripsiMin(plaintext3,KeyLevel,biner);
entropy_plaintext3 =entropy_analysis(plaintext3)
entropy_chipertext3 =entropy_analysis(ChiperText3)
disp('====================================================================')
plaintext4=char(importdata('Test Data 4.txt'));
[ChiperText4 KS Kode t]=EnkripsiMin(plaintext4,KeyLevel,biner);
entropy_plaintext4 =entropy_analysis(plaintext4)
entropy_chipertext4 =entropy_analysis(ChiperText4)
disp('====================================================================')
plaintext5=char(importdata('Test Data 5.txt'));
[ChiperText5 KS Kode t]=EnkripsiMin(plaintext5,KeyLevel,biner);
entropy_plaintext5 =entropy_analysis(plaintext5)
entropy_chipertext5 =entropy_analysis(ChiperText5)
disp('====================================================================')
plaintext6=char(importdata('Test Data 6.txt'));
[ChiperText6 KS Kode t]=EnkripsiMin(plaintext6,KeyLevel,biner);
entropy_plaintext6 =entropy_analysis(plaintext6)
entropy_chipertext6 =entropy_analysis(ChiperText6)
disp('====================================================================')
plaintext7=char(importdata('Test Data 7.txt'));
[ChiperText7 KS Kode t]=EnkripsiMin(plaintext7,KeyLevel,biner);
entropy_plaintext7 =entropy_analysis(plaintext7)
entropy_chipertext7 =entropy_analysis(ChiperText7)
disp('====================================================================')
plaintext8=char(importdata('Test Data 8.txt'));
[ChiperText8 KS Kode t]=EnkripsiMin(plaintext8,KeyLevel,biner);
entropy_plaintext8 =entropy_analysis(plaintext8)
entropy_chipertext8 =entropy_analysis(ChiperText8)
disp('====================================================================')
plaintext9=char(importdata('Test Data 9.txt'));
[ChiperText9 KS Kode t]=EnkripsiMin(plaintext9,KeyLevel,biner);
entropy_plaintext9 =entropy_analysis(plaintext9)
entropy_chipertext9 =entropy_analysis(ChiperText9)
disp('====================================================================')
