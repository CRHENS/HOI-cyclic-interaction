% Copyright to Chittaranjan Hens, Sourin Chterjee, Sayantan Nag
% Chowdhury@HensLab
%% add paths
clear all;
% delete P.mat;
% delete Degree_Dist_T.mat;
%addpath('.\Networks');
if exist('HOI_ROS_nSPecies.m', 'file')==2
  delete('HOI_ROS_nSPecies.m');
end
addpath('.\Model');
addpath('.\Model\N4Species_1perturbation');
addpath('.\Model\N5Species_1perturbation');
addpath('.\Model\N5Species_2perturbation');
addpath('.\Model\N8Species_3perturbations');
addpath('.\Model\N11Species_1perturbation');
addpath('.\Model\N11Species_3perturbations');
addpath('.\Model\N11Species_4perturbations');

mystring2 = ['Cycle size and Number of perturbation \n'...
            '1-   4Species, 1 Petrubation;\n','2 -   5Species, 1 Petrubation;\n','3 - 5Species, 2 Petrubations;\n','4 - 8Species, 3 Petrubations;\n'...
            '5 -   11Species, 1 Petrubation;\n','6- 11Species, 3 Petrubations;\n','7- 11Species, 4 Petrubations;\n'];   
model_type=input(mystring2);
Switch_integration(model_type);

%Switch_plot(model_type);
