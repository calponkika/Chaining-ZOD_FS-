function [T]=Zero_SdtRemoval(Inp) 
[~,ca]=size(Inp);
Std1_1=zeros(1,ca);
for i=1:ca;
Std1=std(Inp(:,i));
Std1_1(i)=Std1;
K=find(~Std1_1);
if Std1 ~=0;
   X1=Inp(:,i); 
   X2{i}=X1; 
end
 
 T=cell2mat(X2); 
[r,c]=size(T);
end
fprintf('The prepared sample size from your loaded data is[%d x %d]\n\n',r,c);
fprintf('The detected useless predictors from data inputs is [%2d]\n',K)
end


