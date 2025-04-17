% 31
% Aussenwand angaben in Tabelle
% Bestimme den U-Wert
%

R_i = 0.13; % [m^2*K/W]
R_a = 0.04; % [m^2*K/W]

s_A = 0.02; % [m]
s_B = 0.08; % [m]
s_C = 0.2;  % [m]

lambda_A = 0.35; % [W/m/K]
lambda_B = 0.043; % [W/m/K]
lambda_C = 0.80; % [W/m/K]

U = 1/(R_i + (s_A/lambda_A)+ (s_B/lambda_B)+ (s_C/lambda_C) + R_a);



fprintf('----------------------------------------------------------\n');
fprintf('| Formel:                                                |\n');
fprintf('|                                                        |\n');
fprintf('|                             1.                         |\n');
fprintf('|  U =  ----------------------------------------------   |\n');                              
fprintf('|       R_i+s_A/lambda_A+s_B/lambda_B+s_C/lambda_C+R_a   |\n');
fprintf('|                                                        |\n');
fprintf('----------------------------------------------------------\n');
fprintf('R_i                        = %15.4f m^2*K/W \n',R_i);
fprintf('R_a                        = %15.4f m^2*K/W \n',R_a);
fprintf('s_A                        = %15.4f m \n',s_A);
fprintf('s_B                        = %15.4f m \n',s_B);
fprintf('s_C                        = %15.4f m \n',s_C);
fprintf('lambda_A                   = %15.4f W/m/K \n',lambda_A);
fprintf('lambda_B                   = %15.4f W/m/K \n',lambda_B);
fprintf('lambda_B                   = %15.4f W/m/K \n',lambda_C);
fprintf('==========================================\n');
fprintf('U                         = %15.4f W/m^2/K    \n',U);
fprintf('U                         = %15.4f W/m^2/K    \n',round(U*100)/100);
fprintf('==========================================\n');

