function [result max_quality_enk persent_quality_enk]=encryption_quality(text1,text2)
temp=0;
n=65535-32;
A=[];B=[];
for i=32:65535
    temp=temp+abs(count_characters(char(i),text1)-count_characters(char(i),text2));
end
result=temp/n;
n1=size(double(text1),2);
n2=size(double(text2),2);
max_quality_enk=(n2+n2)/(n);
persent_quality_enk=(result/max_quality_enk)*100;