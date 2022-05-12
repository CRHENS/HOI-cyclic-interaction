% Copyright to Chittaranjan Hens, Sourin Chterjee, Sayantan Nag
% Chowdhury@HensLab
function Switch_integration(modeltype)
switch modeltype
case 1  
     N4P1_dynamics;
     case 2
       N5P1_dynamics;
        case 3
       N5P2_dynamics;
           case 4
       N8P3_dynamics;
         case 5
        N11P1_dynamics;
           case 6
        N11P3_dynamics;
			case 7
		 N11P4_dynamics
        
end