% 1.1a
%
% Berechne die schichtdicke des Baustsoffs Ergebnis in Metern Runden auf
% zwei Kommastellen. Gegeben lambda = 0.78 W/m/K; R=1.28 m*m*K/W
%
% Formel R = s/lambda => s = R*lambda
%
%
lambda = 0.73;  %  W/m/K
R      = 2.59;  % m*m*K/W

s = R*lambda;

fprintf('------------------------------------------\n');
fprintf('| Formel:                                |\n');
fprintf('|                                        |\n');
fprintf('| R = s/lambda => s = R*lambda           |\n');
fprintf('|                                        |\n');
fprintf('------------------------------------------\n');
fprintf('lamba                    = %15.3f W/m/K \n',lambda);
fprintf('R                        = %15.3f m*m*K/W \n',R);
fprintf('==========================================\n');
fprintf('s                        = %15.3f m       \n',s);
fprintf('==========================================\n');

