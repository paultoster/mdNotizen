% 1.2b
% Berechnen Sie f�r eine Betonwand mit dem W�rmedurchgangswiderstand  von
% R__betaon = 2.11 m^2*K/W einen W�rmedurchgangswiderstand R_ges. Die
% W�rme�bergangswiderst�nde aufgrund des inneren und �u�eren W�rme�bergangs
% zur Wand betragen R_i=0.13 m^2*K/W und R_a=0.04 m^2*K/W. Runden Sie ben�tige
% Zwischenergebnisse sowie das Endergebnis auf zwei Nachkommastellen.

R_beton = 2.11;  % [m*m*K/W]
R_a = 0.04;      % [m*m*K/W]
R_i = 0.13;      % [m*m*K/W]

R_ges = R_i + R_beton + R_a;

fprintf('------------------------------------------\n');
fprintf('| Formel:                                |\n');
fprintf('|                                        |\n');
fprintf('| R_ges = R_i + R_beton + R_a            |\n');
fprintf('|                                        |\n');
fprintf('------------------------------------------\n');
fprintf('R_beton                  = %15.3f m*m*K/W \n',R_beton);
fprintf('R_i                      = %15.3f m*m*K/W \n',R_i);
fprintf('R_a                      = %15.3f m*m*K/W \n',R_a);
fprintf('==========================================\n');
fprintf('R_ges                    = %15.3f m*m*K/W \n',R_ges);
fprintf('==========================================\n');


