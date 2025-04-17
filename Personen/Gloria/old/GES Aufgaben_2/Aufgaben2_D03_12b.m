% 1.2b
% Berechnen Sie für eine Betonwand mit dem Wärmedurchgangswiderstand  von
% R__betaon = 2.11 m^2*K/W einen Wärmedurchgangswiderstand R_ges. Die
% Wärmeübergangswiderstände aufgrund des inneren und äußeren Wärmeübergangs
% zur Wand betragen R_i=0.13 m^2*K/W und R_a=0.04 m^2*K/W. Runden Sie benötige
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


