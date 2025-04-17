% 3.3
% Ein Badezimmer wird mit Flachheizkörper ausgestattet
% Heizlast ist 559 W. Heizkörper mit Vorlauftemperatur 60°C
% Rücklauftemperatur 40°C. Raumtemepratur bei 22°C
% Katalogheizleistung bei 75°C Vorlauf und 65°C Rücklauftemp. und
% Raumtemp 20°C. Bereche benötigte Betriebsleistung Qp_B des
% Heizkörpers bei Betriebsbedingungen die benötigte Nennleistung
% des Heizkörpers Qp_N (In ganzen Watt)
% Heizkörperleistung mit n = 1.3 Zwischenergebis in 4 Kommastellen
%

Qp_B = 455; % [W]

T_vor_B = 60.; % [°C]
T_rue_B = 40; % [°C]
T_raum_B = 22; % [°C]


T_vor_N = 75; % [°C]
T_rue_N = 65; % [°C]
T_raum_N = 20; % [°C]

n = 1.3; % [-]


Z = (T_vor_B-T_rue_B)/log((T_vor_B-T_raum_B)/(T_rue_B-T_raum_B));
N = (T_vor_N-T_rue_N)/log((T_vor_N-T_raum_N)/(T_rue_N-T_raum_N));
f = (Z/N)^n;
Qp_N  = Qp_B / f;

fprintf('-------------------------------------------\n');
fprintf('| Formel:                                 |\n');
fprintf('|                                         |\n');
fprintf('|               (T_vor_B  - T_rue_B)      |\n');
fprintf('| Z         = ------------------------    |\n');
fprintf('|                 (T_vor_B  - T_raum_B)   |\n');
fprintf('|             ln(-----------------------) |\n');
fprintf('|                (T_rue_B  - T_raum_B)    |\n');
fprintf('|                                         |\n');
fprintf('|               (T_vor_N  - T_rue_N)      |\n');
fprintf('|  N        = ------------------------    |\n');
fprintf('|                 (T_vor_N  - T_raum_N)   |\n');
fprintf('|             ln(-----------------------) |\n');
fprintf('|                (T_rue_N  - T_raum_N)    |\n');
fprintf('|                                         |\n');
fprintf('| Qp_B/Qp_N = (Z/N)^n                     |\n');
fprintf('|                                         |\n');
fprintf('| Qp_N      = Qp_B / (Z/N)^n              |\n');
fprintf('|                                         |\n');
fprintf('-------------------------------------------\n');
fprintf('Qp_B                      = %15.4f W  \n',Qp_B);
fprintf('T_vor_B                   = %15.4f °C \n',T_vor_B);
fprintf('T_rue_B                   = %15.4f °C \n',T_rue_B);
fprintf('T_raum_B                  = %15.4f °C \n',T_raum_B);
fprintf('T_vor_N                   = %15.4f °C \n',T_vor_N);
fprintf('T_rue_N                   = %15.4f °C \n',T_rue_N);
fprintf('T_raum_N                  = %15.4f °C \n',T_raum_N);
fprintf('n                         = %15.4f -  \n',n);
fprintf('==========================================\n');
fprintf('Z                         = %15.4f m      \n',Z);
fprintf('N                         = %15.4f m      \n',N);
fprintf('(Z/N)^n                   = %15.4f m      \n',f);
fprintf('Qp_N                      = %15.4f m      \n',Qp_N);
fprintf('Qp_N                      = %15.1f m      \n',round(Qp_N));
fprintf('==========================================\n');
