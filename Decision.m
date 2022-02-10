function [Effect] =Decision(A)
%%%%%%%%%SPLIT THE ACCURACIES INTO 2 Grpes
  G1=(A(:,1:3));
  G2=(A(:,4:end));
  [Max1,id1]=max(G1);
   [Max2,id2]=max(G2);
Effect=Max2-Max1;
%%%%%%%%
 M={'Zscore.','MinMax normalization.','Decimal Scaling.'};
CM={ 'M{4}:ZOD and Decimal Scaling,Threshold=2.5,Opt=Mean.'...
    'M{5}:ZOD and Decimal scaling,ThresholdT=3,Opt=Mean.'...
     'M{6}:ZOD and Decimal Scaling,Threshold=3.5, Opt=Mean.'...
     'M{7}:ZOD and Zscore,Threshold=2.5, Opt=Mean.'...
     'M{8}:ZOD and Zscore,Threshold=3, Opt=Mean.'...
     'M{9}:ZOD and Zscore,Threshold=3.5,Opt=Mean.'...
    'M{10}:ZOD and MinMax,Threshold=2.5,Opt=Mean.'...
    'M{11}:ZOD and MinMax,Threshold=3,Opt=Mean.'...
    'M{12}:ZOD and MinMax,Threshold=3.5,Opt=Mean.'...
    'M{13}:ZOD (Decimal scaling),Threshold=2.5,Opt=Median.'...
    'M{14}:ZOD (Decimal scaling),Threshold=3, Opt=Median.'...
   'M{15}:ZOD(Decimal scaling),Threshold=3.5,Opt=Median.'...
   'M{16}:ZOD (Zscore),Threshold=2.5,Opt=Median.'...
   'M{17}:ZOD (Zscore),Threshold=3,Opt=Median.'...
   'M{18}: ZOD (Zscore),Threshold=3.5,Opt=Median.'...
   'M{20}:ZOD(MinMax), Threshold=2.5, Opt=Median.'...
   'M{21}:ZOD(MinMax), Threshold=3, Opt=Median.'...
   'M{22}:ZOD(MinMax), Threshold=3.5, Opt=Median.'};
S1=length(G1);
S2=length(G2);
for s1=1:S1
for s2=1:S2
fprintf('The %s existing  Traditional FS  perfroms %.2f%%\n\n',s1,G1);
fprintf('The %s designed  ZOD_FS perfroms %.2f%%\n\n',s2,G2);
end
end
if Effect > 0
fprintf('Warning!!.The chained method is better than the classical Feature Scaling.\n\n')
for i=1:id2
if max(G2)==G2(1,i);
CM(:,i);
fprintf('The best method is chain of %s \n',CM{i});
fprintf('It performs at %.2f%% and has effect of %.2f%%\n\n',Max2, Effect);
for j1=1:id1
if max(G1)==G1(:,j1);
M(:,j1);
fprintf('The best classical feature scaling method was %s.\nIt has accuracy of %.2f%%\n',M{j1},Max1);
end
end
end
end
if Effect <0
fprintf('Warning !!Your proposed method is not better\n')
 for j=1:id1
if max(G1)==G1(:,j);
M(:,j);
fprintf('The best Classical method is %s\n',M{j});
fprintf('It performs at %.2f%%.\n',Max1);
end  
end
end
end