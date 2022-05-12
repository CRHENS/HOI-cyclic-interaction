 hold on;
% ax = findobj(f,'Type','Axes');
% h = get(0,'children');
% % for i=1:length(ax)
%     xlabel({'y_{59}'},'FontSize',30,'FontWeight','bold')
%     ylabel({'y_{68}'},'FontSize',30,'FontWeight','bold')
        %   title(ax(i,1),{'MM'})
%    str1 = '\Theta=0';
%  annotation('textbox','String',str1,'FitBoxToText','on','Edgecolor','white');
   

%end
%  set(findall(gcf,'-property','FontSize'),'FontSize',18,'linewidth',2.0)
% axis tight;
  

 %   xlim([0 100])
%    ylim([0 1])
   




   % set(gca,'YScale','log');
 %   set(gca,'XScale','log');
%   set(gca,'XMinorTick','on');
%   set(gca,'YMinorTick','on');
  %set(gca,'YTick',0:1:3);
%    set(gca,'YTick',[0.01 0.1 1]);
%    set(gca,'XTick',[ 1 10 100]);

 set(gca,'ticklength',2*get(gca,'ticklength'))
    
%    set(gca,'XTick',[1 10 100]);
   set(gca,'YTick',[0.1  0.3  0.5  0.7 0.9]);
 %axis tight;
    


set(findall(gcf,'-property','FontSize'),'FontName','Helvetica','FontSize',35,'linewidth',3.0,'fontweight','b')   
%  xlabel('${\textbf{\textit S}}_{\textbf{\textit{i}}}$','Interpreter','LaTeX','FontSize',54)
%  ylabel('\boldmath$ x_{\textbf{\textit i}}$','Interpreter','LaTeX','FontSize',64) 

 
 xlabel('$t$','Interpreter','LaTeX','FontSize',35)
%  ylabel('$\rho_R,\rho_P,\rho_S$','Interpreter','LaTeX','FontSize',35) 
 ylabel('$x_i$','Interpreter','LaTeX','FontSize',35) 
 %clear all
set(gcf, 'PaperPositionMode', 'auto','position', [0, 0, 650, 650]);
set(legend,'color','none');
set(legend, 'Box', 'off');
hold on;  

