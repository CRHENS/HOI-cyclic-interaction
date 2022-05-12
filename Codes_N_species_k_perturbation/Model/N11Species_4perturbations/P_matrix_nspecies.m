%alpha=0.65;
%clear all
global n alpha beta beta1 beta2 beta3;

%beta1=0.05; beta2=0.05; beta3=0.05; alpha =0.7; n=7;
% 
% H1=[ 0.5 alpha+beta1 1-alpha alpha 1-alpha alpha 1-alpha;
%     1-alpha-beta1 0.5 alpha 1-alpha alpha 1-alpha alpha;
%     alpha 1-alpha 0.5 alpha+beta2 1-alpha alpha 1-alpha;
%     1-alpha alpha 1-alpha-beta2 0.5 alpha 1-alpha alpha;
%     alpha 1-alpha alpha 1-alpha 0.5  alpha+beta3 1-alpha;
%     1-alpha alpha 1-alpha alpha  1-alpha-beta3 0.5 alpha;
%     alpha 1-alpha alpha 1-alpha alpha  1-alpha 0.5;
%     ];
%%%%%%%%%%%%%%%%%%%%%%%%
HH=zeros(n,n);

for i=1:n
    for j=i+1:n
          if(mod(i+j,2)==1)
              HH(i,j)=alpha;
          else if(mod(i+j,2)==0)
                HH(i,j)=1-alpha;
              end
        end
   end
end

for k=1:2:n-1
    HH(k,k+1)=HH(k,k+1)+beta(k);
end
HH=HH+(triu(1-HH))';
HH(1:n+1:n*n)=0.5;
H=HH;
%%
%sum(H-H1)
P(n,n,n)=0;
%n=5;
for i=1:n
  for j=1:n
    for k=1:n
     P(i,j,k)  =2*H(i,j)*H(i,k)-H(j,i)*H(j,k)-H(k,i)*H(k,j); 
    end
  end
end 
save P_matrix_n.mat P;