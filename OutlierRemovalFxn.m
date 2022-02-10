classdef  OutlierRemovalFxn
      methods(Static) 
 function D1mean =IsOutlier_2p5_Mean(B,Po)
Po= Outlier_Thresholds;
A=zscore(B);
[ra,ca]=size(A);
Mean_1=zeros(1,ca);
 D1mean=zeros(ra,ca);
for i=1:ca
Mean1=mean(A(:,i));
Mean_1(i)=Mean1;
end
 for i=1:ca
for  j=1:ra
if abs(A(j,i))>Po.ThreshVal(1) %Outlier_Threshold.InputPee(1)
   A(j,i)=Mean_1(1,i); 
end
D1mean=A;
 end
 end
 end

 function D1med =IsOutlier_2p5_Median(B,Po)

A=zscore(B);
 Po= Outlier_Thresholds;
[ra,ca]=size(A);
Median_1=zeros(1,ca);
 D1med=zeros(ra,ca);
for i=1:ca
Median1=median(B(:,i));
Median_1(i)=Median1;
end
for i=1:ca
 for j=1:ra
    if abs(A(j,i))> Po.ThreshVal(1)
   A(j,i)=Median_1(1,i); 
   D1med=A;
    end
 end
end 
 end
 function D2me =IsOutlier_3p_Mean(B,Po)
A=zscore(B);
Po= Outlier_Thresholds;
[ra,ca]=size(A);
Mean_1=zeros(1,ca);
 D2me=zeros(ra,ca);
for i=1:ca
Mean1=mean(A(:,i));
Mean_1(i)=Mean1;
end
for i=1:ca
 for j=1:ra
if abs(A(j,i))> Po.ThreshVal(2)
   A(j,i)=Mean_1(1,i); 
end
D2me=A;
 end
 end
 end
 function D2med =IsOutlier_3p_Median(B,Po)
A=zscore(B);
 Po= Outlier_Thresholds;
[ra,ca]=size(A);
Median_1=zeros(1,ca);
 D2med=zeros(ra,ca);
for i=1:ca
Median1=median(B(:,i));
Median_1(i)=Median1;
end
for i=1:ca
 for j=1:ra
% if abs(A(j,i))>Outlier_Threshold.InputPee(2) 
if abs(A(j,i))> Po.ThreshVal(2)
   A(j,i)=Median_1(1,i); 
   D2med=A;
 end
 end
end 
 end
 
 function D3mean =IsOutlier_3p5_Mean(B,Po)
A=zscore(B);
 Po= Outlier_Thresholds;
[ra,ca]=size(A);
Mean_1=zeros(1,ca);
D3mean=zeros(ra,ca);
for i=1:ca
Mean1=mean(A(:,i));
Mean_1(i)=Mean1;
end
for j=1:ra
for i=1:ca
 if abs(A(j,i))>Po.ThreshVal(3);
   A(j,i)=Mean_1(1,i); 
end
D3mean=A;
 end
 end
 end 
 
 function D3med =IsOutlier_3p5_Median(B,Po)
 Po= Outlier_Thresholds;
A=zscore(B);
[ra,ca]=size(A);
Median_1=zeros(1,ca);
 D3med=zeros(ra,ca);
 K=zeros(ra,ca);
for i=1:ca
Median1=median(A(:,i));
Median_1(i)=Median1;
end
for i=1:ca
 for j=1:ra
if abs(A(j,i))>Po.ThreshVal(3) ;
   K(j,i)=Median_1(1,i); 
    
end
D3med=K;
 end
 end
 end
  end
 end
 