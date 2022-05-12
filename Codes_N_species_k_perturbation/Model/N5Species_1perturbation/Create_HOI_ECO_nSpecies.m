

function Create_HOI_ECO_nSpecies(P,n);
       
       %  A1=erdrey(m1*n1);
    %   A=pref(m1*n1,1)
%         A=twod_smallw(m1,n1,p);
    %    end
    fileID = fopen('HOI_ROS_nSPecies.m','w+');
%     fprintf(fileID,'%0s\n','%%%%%%%%%%%%%%%%');
%     fprintf(fileID,'%0s\n','%  Model: SIS');
%     fprintf(fileID,'%0s','%  N=');
%     fprintf(fileID,'%0d\n',n);
%     if (mode==0)
%         fprintf(fileID,'%0s\n','%  scale_free');
%     elseif (mode==1)
%         fprintf(fileID,'%0s\n','%  erdos');
%     end
%     fprintf(fileID,'%0s\n','%%%%%%%%%%%%%%%%');
%     fprintf(fileID,'%0s\n',' ');


% x_dot=zeros(2025,1);
fprintf(fileID,'%0s\n','function dy=HOI_ROS_nSPecies(t,x)');
% fprintf(fileID,'%0s',' dy=zeros(');
% fprintf(fileID,'%0d',m1*n1);
% fprintf(fileID,'%0s\n',')');
fprintf(fileID,'%0s\n','global eps P ');
 fprintf(fileID,'%0s','dy=zeros(');
 fprintf(fileID,'%0d',n);
  fprintf(fileID,'%0s\n',',1);');

    for i=1:n
         fprintf(fileID,'%0s','dy(');
        fprintf(fileID,'%0d',i);
         fprintf(fileID,'%0s',')=');
         fprintf(fileID,'%0s','x(');
         fprintf(fileID,'%0d',i);
         fprintf(fileID,'%0s',')*(');
        % fprintf(fileID,'%0d',B);
         fprintf(fileID,'%0s','eps(');
       %  fprintf(fileID,'%0s','-B*x(');
         fprintf(fileID,'%0d',i);
         % fprintf(fileID,'%0s',')^alpha');
         fprintf(fileID,'%0s',')');
         for j=1:n
             for k=1:n
            % if (a(i,j)==1 & i~=j)
                 fprintf(fileID,'%0s','+');
                 fprintf(fileID,'%0s','P(');
                  fprintf(fileID,'%0d',i);
                   fprintf(fileID,'%0s',',');
                   fprintf(fileID,'%0d',j);
                   fprintf(fileID,'%0s',',');
                   fprintf(fileID,'%0d',k);
                   fprintf(fileID,'%0s',')*x(');
                    fprintf(fileID,'%0d',j);
                     fprintf(fileID,'%0s',')*x(');
                      fprintf(fileID,'%0d',k);
                    fprintf(fileID,'%0s',')');   
                % fprintf(fileID,'%0d',R);
%                  fprintf(fileID,'%0s','(x(');
%                  fprintf(fileID,'%0d',j);
%                  fprintf(fileID,'%0s',')-x(');
%                  fprintf(fileID,'%0d',i);
%                  fprintf(fileID,'%0s',')-');
%                  fprintf(fileID,'%0s','alpha))');
           %  end
             end
         end
         fprintf(fileID,'%0s\n',');');
  %  end
  end
   % fprintf(fileID,'%0s','];');
    fclose(fileID);
end
