function   [B]=InputSequences(A) 
%%CREATE A SEQUENCES OF INPUTS ,use cells so you create a dynamic sequences
%%%proposed threshold and their imputaion method
O{1}=IsOutlier_2p5_Mean(A);
O{2}=IsOutlier_3p_Mean(A);
O{3}=IsOutlier_3p5_Mean(A);
Med{1}=IsOutlier_2p5_Median(A);
Med{2}=IsOutlier_3p_Median(A);
Med{3}=IsOutlier_3p5_Median(A);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
M{1}=zscore(A);
M{2}=MinMaxScaling(A);
M{3}=DScaling(A);
%%%Sequence Methods 
M{4}=DScaling(O{1});
M{5}=DScaling(O{2});
M{6}=DScaling(O{3});
M{7}=zscore(O{1});
M{8}=zscore(O{2});
M{9}=zscore(O{3});
M{10}=MinMaxScaling(O{1});
M{11}=MinMaxScaling(O{2});
M{12}=MinMaxScaling(O{3});
M{13}=DScaling(Med{1});
M{14}=DScaling(Med{2});
M{15}=DScaling(Med{3});
M{16}=zscore(Med{1});
M{17}=zscore(Med{2});
M{18}=zscore(Med{3});
M{19}=MinMaxScaling(Med{1});
M{20}=MinMaxScaling(Med{2});
M{21}=MinMaxScaling(Med{3});
%%%Add new function if it exists
L=length(M);
 B=cell(1,L);
for i=1:L;
    K=M{i}';
    B{i}=K;
end
end