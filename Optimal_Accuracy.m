function   [OptSeqMeth, N_Outl, Acc]=Optimal_Accuracy(~,~) 
%tic
% % Load any sample size.For me I load Sample size No 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Sample size No 1
% %   load Sample_Size22K1.mat
% %   M=samplesize1;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Sample size No 2
% % load Sample_Size_33K1.mat
%  M=samplesize2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Sample size No 3
% % load Sample_Size41K1.mat
% %  M=samplesize3;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Sample size No 4
 load Sample_Size45K1
 M=samplesize4;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Sample size No 5
% %    load Sample_Size57K1
% %     M=samplesize5;
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Num_Dataset=Data_Conversion(M);
PreFS=Zero_SdtRemoval(Num_Dataset);
[Inputs,Targets]=DataMorph_NNW(PreFS);
A=Inputs;
B=InputSequences(A);
Acc=zeros(1,length(B));
for i=1:length(B)
    InpAcc=B{i};
    Accuracy=NNW_Alg(InpAcc,Targets);
  Acc(i)=Accuracy;
end
OptSeqMeth=Decision(Acc);
N_Outl=Outlier_Detect(A);
%toc
end


