clear all
global n eps P k alpha beta 
%%%Species R-P-S-D-F-L-G
zz1=[]; n=11; k=4;
beta=zeros(1,n);
if exist('HOI_ROS_nSPecies.m', 'file')==2
  delete('HOI_ROS_nSPecies.m');
end
for beta11=0.1; %05
% beta(1)=beta11;
% beta(3)=0.0;
% beta(5)=0.0;

beta(1)=-2*beta11;
beta(3)=-beta11;
beta(5)=beta11;%0.0;
beta(7)=2*beta11;
alpha=0.75;
%beta=0.05;
P_matrix_nspecies;
eps=zeros(n,1);
%  ystartt=0.1+0.1*rand(1,n-1);
%  pp=sum(ystartt);
%  ystartt(n)=1-pp;
 
ystartt=0.1+0.5*rand(1,n);
ystartt=ystartt/sum(ystartt);
ystart1=ystartt;

 %ystart1=ystartt;
 %ystart1=[0.1; 0.4; 0.5];
 load P_matrix_n.mat;
 sum(sum(sum(P)))
Create_HOI_ECO_nSpecies(P,n);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 op=odeset('Abstol',1e-6,'Reltol',1e-6);
  tt=0.0; data=[];
 for yy=1
     yy
 [yt_unperb, wy_unperb] = ode45(@HOI_ROS_nSPecies,[tt tt+250000],ystart1,op);
 unperb_dat=wy_unperb;
    ystart1=unperb_dat(end,1:end); 
      tt=yt_unperb(end);
      % k=k+1;
 end
 yend=unperb_dat(end,1:end);
%  R_1=((alpha-0.5)*(alpha-0.5+beta2))/((alpha-0.5)*(n*(alpha-0.5)+(n-2)*beta1+(n-2)*beta2)...
%  +(n-2)*beta1*beta2);
%  P_2=((alpha-0.5)*(alpha-0.5+beta2))/((alpha-0.5)*(n*(alpha-0.5)+(n-2)*beta1+(n-2)*beta2)...
%  +(n-2)*beta1*beta2);
%  S_3=((alpha-0.5)*(alpha-0.5+beta1))/((alpha-0.5)*(n*(alpha-0.5)+(n-2)*beta1+(n-2)*beta2)...
%  +(n-2)*beta1*beta2);
%  F_5=((alpha-0.5)*(alpha-0.5+beta1+beta2) +beta1*beta2)/((alpha-0.5)*(n*(alpha-0.5)+(n-2)*beta1+(n-2)*beta2)...
%  +(n-2)*beta1*beta2);
%  G_7=((alpha-0.5)*(alpha-0.5+beta1+beta2) +beta1*beta2)/((alpha-0.5)*(n*(alpha-0.5)+(n-2)*beta1+(n-2)*beta2)...
%  +(n-2)*beta1*beta2);
%zz=[zz; yend, R_1, P_2, S_3, F_5, G_7, sum(yend)];

zz1=[zz1; yend, sum(yend)];
N_species_k_diif_pertirbations;

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%
time=yt_unperb;
 X=wy_unperb;
 plot(time, X(:,1),'linewidth',3);
 hold on;
  plot(time, X(:,2),'linewidth',3);
  hold on;
   plot(time, X(:,3),'linewidth',3);
    hold on;
   plot(time, X(:,4),'linewidth',3);
     hold on;
   plot(time, X(:,5),'linewidth',3);
     hold on;
   plot(time, X(:,6),'linewidth',3);
   legend('$x_1$','$x_2$','$x_3$','$x_4$','$x_5$','$x_6$','Interpreter','LaTeX','FontSize',24)
% save data_alpha_p3_N100_K1_sf.mat data;
% end
axis_setting
%  toc
%sum(yend)

%%%%%%%%%%%%%%%%
%%
time1=yt_unperb(1:152000);
 X1=wy_unperb(1:152000,:);
%  X = [1 2 3; 1 2 3; 1 2 3];
% Y = X';
% mymap = [1 0 0; 0 1 0; 0 0 1; 1 1 0; 0 0 0];
%pcolor(1:11,time1,X1)
figure; imagesc(X1(90000:-10:1,1:1:end)); 
%axis tight; 
hold on;
% XX=mean(X1(1:end,1:1:end));
set(findall(gcf,'-property','FontSize'),'FontName','Helvetica','FontSize',35,'linewidth',3.0,'fontweight','b')   
% ylim([0 0.3]);
 xlabel('Node Index','Interpreter','LaTeX','FontSize',44)
 ylabel('$t$','Interpreter','LaTeX','FontSize',44) 
 set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 700, 700]);
set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10 11]);
% set(gca,'YTick',[0 3000 6000 9000 12000 15000 18000 21000]);
% 
colorbar
 set(gca,'YTicklabel',[ 4000  3000  2000  1000  0]);
set(gca,'ticklength',2*get(gca,'ticklength'))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
% figure;plot(1:1:n,yend(1:1:end),'.','markersize',46,'color',[0 0 1]);
 figure;plot(1:2,yend(1:2),'.','markersize',46,'color',[0 0 1]);
hold on; plot(3:4,yend(3:4),'.','markersize',46,'color',[1 0 0]);
hold on; plot(5:6,yend(5:6),'.','markersize',46,'color',[0 1 1]);
 hold on; plot(7:8,yend(7:8),'.','markersize',46,'color',[1 0 0.5]);
 hold on; plot(9:11,yend(9:11),'.','markersize',46,'color',[0.5 0.5 0.5]);

set(findall(gcf,'-property','FontSize'),'FontName','Helvetica','FontSize',35,'linewidth',3.0,'fontweight','b')   
 ylim([-0.0 0.4]);
 xlim([0.75 11.75]);
 xlabel('Node Index','Interpreter','LaTeX','FontSize',44)
 ylabel('$x_i$','Interpreter','LaTeX','FontSize',44) 
 set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 700, 700]);
%set(gca,'XTick',[1 3 5 7 9 11 n-1]);
set(gca,'YTick',[0.05 0.1 0.15 0.2 0.25 0.3 0.35 0.4]);
set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10 11]);
set(gca,'ticklength',2*get(gca,'ticklength'))

%%%
%%
figure;
plot(zz,yend(1:8),'-*','markersize',36,'linewidth',4)
hold on
set(findall(gcf,'-property','FontSize'),'FontName','Helvetica','FontSize',35,'linewidth',3.0,'fontweight','b')   
%  ylim([-0.0 0.6]);
%  xlim([0.75 11.75]);
 xlabel('Theoretical','Interpreter','LaTeX','FontSize',44)
 ylabel('Numerical','Interpreter','LaTeX','FontSize',44) 
 set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 700, 700]);
%set(gca,'XTick',[1 3 5 7 9 11 n-1]);
% set(gca,'YTick',[0.05 0.1 0.15 0.2 0.25 0.3]);
% set(gca,'XTick',[1 2 3 4 5 6 7 8 9 10 11]);
set(gca,'ticklength',2*get(gca,'ticklength'))
