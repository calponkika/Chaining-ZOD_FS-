function D =IsOutlier_3p5_Median(B) %%
A=zscore(B);
[ra,ca]=size(A);
Median_1=zeros(1,ca);
 D=zeros(ra,ca);
for i=1:ca
Median1=median(B(:,i));
Median_1(i)=Median1;
end
for i=1:ca
 for j=1:ra
if abs(A(j,i))>3.5 ; 
   A(j,i)=Median_1(1,i); 
end
D=A;
 end
 end
 end % 