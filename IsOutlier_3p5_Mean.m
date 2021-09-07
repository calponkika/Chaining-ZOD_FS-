function D =IsOutlier_3p5_Mean(B) 
A=zscore(B);
[ra,ca]=size(A);
Mean_1=zeros(1,ca);
D=zeros(ra,ca);
for i=1:ca
Mean1=mean(A(:,i));
Mean_1(i)=Mean1;
end
for j=1:ra
for i=1:ca
 if abs(A(j,i))>3.5  ;
   A(j,i)=Mean_1(1,i); 
end
D=A;
 end
 end
 end