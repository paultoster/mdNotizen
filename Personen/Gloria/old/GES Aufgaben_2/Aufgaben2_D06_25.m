% Für ein Bestandsgebäude soll im Zuge von Modernisierungsmaßnahmen 
% die Heizungsanlage erneuert werden. Hierbei handelt es sich um eine 
% Hütte in Straubing,
%
% Der Grundriss der Hütte und die Südansicht sind der Abbildung 8 zu 
% entnehmen. Die Normaußentemperatur beträgt -14 °C. Die Hütte soll auf 
% eine Innentamperstur von 20 °Cgebracht werden. Der mittlere U-Wert 
% der Hütte betragt 0.32 W/m^2/K. Die Luft in der Hütte wird einmal 
% alle zwei Stunden ausgetauscht.
%
% Welchen prozentualen Anteil an der Heizlast stellen die 
% Transmissionswärmeverluste dar? Nutzen Sie zur Berechnung die Formel 
% zur Abschätzung der Norm-Heiziast für ein Gebäude. Geben Sie den Wert 
% in Prozent auf eine Nachkommastelle gerundet an. Runden Sie benötigte 
% Zwischenergebnisse auf drei Nachkommastellen.

T_aus_N = -14; % [°C]
T_raum  = 20;  % [°C]
U_mit   = 0.32; %  [W/m^2/K]
n_LW    = 1/2; % [1/h]

B       = 7; % [m]
H       = 2.8; % [m]
H_dach  = 1.6; % [m]
L_dach  = sqrt((B/2)^2+H_dach^2); 

A_Um =  4*B*H + 2*2*(0.5*(B/2)*H_dach) + 2*L_dach*B;
V    = (B*H+2*(0.5*(B/2)*H_dach))*B;

Theta_HL = ( U_mit*A_Um/V + 0.34 * n_LW)* V * (T_raum - T_aus_N); 
   % (W/m^2/K* m^2 / m^3 + W*h/m^3/K * 1/h) * m^3 * K => W
Trans_HL = (U_mit*A_Um)*(T_raum-T_aus_N); % W/m^2/K* m^2 * K => W

Anteil_trans = Trans_HL/Theta_HL;

fprintf('-------------------------------------------\n');
fprintf('| Formel:                                 |\n');
fprintf('|                                         |\n');
fprintf('|  A_Um =  4*B*H + 2*(0.5*(B/2)*H_dach)   |\n');                              
fprintf('|      +  2*(0.5*(B/2)*H_dach) + 2*L*B    |\n');
fprintf('|                                         |\n');
fprintf('| V = (B*H+2*(0.5*(B/2)*H_dach))*B        |\n');
fprintf('|                                         |\n');
fprintf('|                                         |\n');
fprintf('| Theta_HL = ( U_mit*A_Um/V               |\n');
fprintf('|            + 0.34 W*h/m^3/K * n_LW      |\n');
fprintf('|            )                            |\n');
fprintf('|            * V * (T_raum - T_aus_N)     |\n');
fprintf('|                                              |\n');
fprintf('| Trans_HL = (U_mit*A_Um/V)*V*(T_raum-T_aus_N) |\n');
fprintf('|                                              |\n');
fprintf('| Antteil_THL = Trans_HL/Theta_HL              |\n');
fprintf('|                                              |\n');
fprintf('------------------------------------------------\n');
fprintf('T_aus_N                   = %15.4f °C \n',T_aus_N);
fprintf('T_raum                    = %15.4f °C \n',T_raum);
fprintf('U_mit                     = %15.4f W/m^2/K \n',U_mit);
fprintf('n_LW                      = %15.4f 1/h \n',n_LW);
fprintf('B                         = %15.4f m \n',B);
fprintf('H                         = %15.4f m \n',H);
fprintf('H_dach                    = %15.4f m \n',H_dach);
fprintf('L_dach                    = %15.4f m \n',L_dach);
fprintf('==========================================\n');
fprintf('A_Um                      = %15.4f m^2    \n',A_Um);
fprintf('V                         = %15.4f m^3    \n',V);
fprintf('Theta_HL                  = %15.4f W      \n',Theta_HL);
fprintf('Trans_HL                  = %15.4f W      \n',Trans_HL);
fprintf('Anteil_trans              = %15.4f %%     \n',Anteil_trans*100);
fprintf('==========================================\n');
