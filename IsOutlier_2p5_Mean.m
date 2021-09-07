function D =IsOutlier_2p5_Mean(B)
A=zscore(B);
[ra,ca]=size(A);
Mean_1=zeros(1,ca);
 D=zeros(ra,ca);
for i=1:ca
Mean1=mean(A(:,i));
Mean_1(i)=Mean1;
end
for i=1:ca
 for j=1:ra
if abs(A(j,i))>2.5   
   A(j,i)=Mean_1(1,i); 
end
D=A;
 end
 end
 end