clc;
clear;
keyLevel=[2 3 2 3];
k1=[];k2=[];k3=[];k4=[];
n1=[];
biner=16;

Plaintext=char(importdata('Test Data 1.txt'));
n1=[n1 size(double(Plaintext),2)];
[ChiperText KS Kode t]=EnkripsiMin(Plaintext,keyLevel,biner);
a1=corelation_value(Plaintext,ChiperText);
k1=[k1 a1];
[ChiperText KS Kode t]=EnkripsiMax(Plaintext,keyLevel,biner);
a2=corelation_value(Plaintext,ChiperText);
k2=[k2 a2];
[ChiperText KS Kode t]=EnkripsiMaxMin(Plaintext,keyLevel,biner);
a3=corelation_value(Plaintext,ChiperText);
k3=[k3 a3];
[ChiperText KS Kode t]=EnkripsiAveMin(Plaintext,keyLevel,biner);
a4=corelation_value(Plaintext,ChiperText);
k4=[k4 a4];

Plaintext=char(importdata('Test Data 2.txt'));
n1=[n1 size(double(Plaintext),2)];
[ChiperText KS Kode t]=EnkripsiMin(Plaintext,keyLevel,biner);
a1=corelation_value(Plaintext,ChiperText);
k1=[k1 a1];
[ChiperText KS Kode t]=EnkripsiMax(Plaintext,keyLevel,biner);
a2=corelation_value(Plaintext,ChiperText);
k2=[k2 a2];
[ChiperText KS Kode t]=EnkripsiMaxMin(Plaintext,keyLevel,biner);
a3=corelation_value(Plaintext,ChiperText);
k3=[k3 a3];
[ChiperText KS Kode t]=EnkripsiAveMin(Plaintext,keyLevel,biner);
a4=corelation_value(Plaintext,ChiperText);
k4=[k4 a4];

Plaintext=char(importdata('Test Data 3.txt'));
n1=[n1 size(double(Plaintext),2)];
[ChiperText KS Kode t]=EnkripsiMin(Plaintext,keyLevel,biner);
a1=corelation_value(Plaintext,ChiperText);
k1=[k1 a1];
[ChiperText KS Kode t]=EnkripsiMax(Plaintext,keyLevel,biner);
a2=corelation_value(Plaintext,ChiperText);
k2=[k2 a2];
[ChiperText KS Kode t]=EnkripsiMaxMin(Plaintext,keyLevel,biner);
a3=corelation_value(Plaintext,ChiperText);
k3=[k3 a3];
[ChiperText KS Kode t]=EnkripsiAveMin(Plaintext,keyLevel,biner);
a4=corelation_value(Plaintext,ChiperText);
k4=[k4 a4];

Plaintext=char(importdata('Test Data 4.txt'));
n1=[n1 size(double(Plaintext),2)];
[ChiperText KS Kode t]=EnkripsiMin(Plaintext,keyLevel,biner);
a1=corelation_value(Plaintext,ChiperText);
k1=[k1 a1];
[ChiperText KS Kode t]=EnkripsiMax(Plaintext,keyLevel,biner);
a2=corelation_value(Plaintext,ChiperText);
k2=[k2 a2];
[ChiperText KS Kode t]=EnkripsiMaxMin(Plaintext,keyLevel,biner);
a3=corelation_value(Plaintext,ChiperText);
k3=[k3 a3];
[ChiperText KS Kode t]=EnkripsiAveMin(Plaintext,keyLevel,biner);
a4=corelation_value(Plaintext,ChiperText);
k4=[k4 a4];

Plaintext=char(importdata('Test Data 5.txt'));
n1=[n1 size(double(Plaintext),2)];
[ChiperText KS Kode t]=EnkripsiMin(Plaintext,keyLevel,biner);
a1=corelation_value(Plaintext,ChiperText);
k1=[k1 a1];
[ChiperText KS Kode t]=EnkripsiMax(Plaintext,keyLevel,biner);
a2=corelation_value(Plaintext,ChiperText);
k2=[k2 a2];
[ChiperText KS Kode t]=EnkripsiMaxMin(Plaintext,keyLevel,biner);
a3=corelation_value(Plaintext,ChiperText);
k3=[k3 a3];
[ChiperText KS Kode t]=EnkripsiAveMin(Plaintext,keyLevel,biner);
a4=corelation_value(Plaintext,ChiperText);
k4=[k4 a4];

Plaintext=char(importdata('Test Data 6.txt'));
n1=[n1 size(double(Plaintext),2)];
[ChiperText KS Kode t]=EnkripsiMin(Plaintext,keyLevel,biner);
a1=corelation_value(Plaintext,ChiperText);
k1=[k1 a1];
[ChiperText KS Kode t]=EnkripsiMax(Plaintext,keyLevel,biner);
a2=corelation_value(Plaintext,ChiperText);
k2=[k2 a2];
[ChiperText KS Kode t]=EnkripsiMaxMin(Plaintext,keyLevel,biner);
a3=corelation_value(Plaintext,ChiperText);
k3=[k3 a3];
[ChiperText KS Kode t]=EnkripsiAveMin(Plaintext,keyLevel,biner);
a4=corelation_value(Plaintext,ChiperText);
k4=[k4 a4];

Plaintext=char(importdata('Test Data 7.txt'));
n1=[n1 size(double(Plaintext),2)];
[ChiperText KS Kode t]=EnkripsiMin(Plaintext,keyLevel,biner);
a1=corelation_value(Plaintext,ChiperText);
k1=[k1 a1];
[ChiperText KS Kode t]=EnkripsiMax(Plaintext,keyLevel,biner);
a2=corelation_value(Plaintext,ChiperText);
k2=[k2 a2];
[ChiperText KS Kode t]=EnkripsiMaxMin(Plaintext,keyLevel,biner);
a3=corelation_value(Plaintext,ChiperText);
k3=[k3 a3];
[ChiperText KS Kode t]=EnkripsiAveMin(Plaintext,keyLevel,biner);
a4=corelation_value(Plaintext,ChiperText);
k4=[k4 a4];

Plaintext=char(importdata('Test Data 8.txt'));
n1=[n1 size(double(Plaintext),2)];
[ChiperText KS Kode t]=EnkripsiMin(Plaintext,keyLevel,biner);
a1=corelation_value(Plaintext,ChiperText);
k1=[k1 a1];
[ChiperText KS Kode t]=EnkripsiMax(Plaintext,keyLevel,biner);
a2=corelation_value(Plaintext,ChiperText);
k2=[k2 a2];
[ChiperText KS Kode t]=EnkripsiMaxMin(Plaintext,keyLevel,biner);
a3=corelation_value(Plaintext,ChiperText);
k3=[k3 a3];
[ChiperText KS Kode t]=EnkripsiAveMin(Plaintext,keyLevel,biner);
a4=corelation_value(Plaintext,ChiperText);
k4=[k4 a4];

Plaintext=char(importdata('Test Data 9.txt'));
n1=[n1 size(double(Plaintext),2)];
[ChiperText KS Kode t]=EnkripsiMin(Plaintext,keyLevel,biner);
a1=corelation_value(Plaintext,ChiperText);
k1=[k1 a1];
[ChiperText KS Kode t]=EnkripsiMax(Plaintext,keyLevel,biner);
a2=corelation_value(Plaintext,ChiperText);
k2=[k2 a2];
[ChiperText KS Kode t]=EnkripsiMaxMin(Plaintext,keyLevel,biner);
a3=corelation_value(Plaintext,ChiperText);
k3=[k3 a3];
[ChiperText KS Kode t]=EnkripsiAveMin(Plaintext,keyLevel,biner);
a4=corelation_value(Plaintext,ChiperText);
k4=[k4 a4];

% figure(1)
% title('Nilai corelation_value')
% hold on
% plot(n1,k1,'-*');
% plot(n1,k2,'-o');
% plot(n1,k3,'-*');
% plot(n1,k4,'-o');
% 
% legend('MinLS','MaxLS','MaxMinLS','AveMinLS'...
%     ,'Location', 'Best')

n1

k1
k2
k3
k4