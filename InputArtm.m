 function W=InputArtm(Ub,U0,r)
% Ub=3.5;%%Upper Boundary
% U0=2.5;%%%Lower Boundary
% r=0.5;%%Common difference
N=((Ub-U0)/r)+1 ; %All possible value
W=zeros(1,N);
for i=1:N
    Un=U0+r*(i-1);
    W(i)=Un;
%     fprintf('The possible value is %.2f% \n\n', W(i));
end
end