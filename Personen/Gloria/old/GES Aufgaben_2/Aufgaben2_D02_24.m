% 2.4
% Wie groﬂ ist der mittlere U-Wert der gesmaten Umfassung
% Berechnen sie zun‰chst den U-Wert der Nordfasade

B = 8.0; % [m]
T = 3.8; % [m]
H = 3.0; % [m]

B_Fenster = 1.5; % [m]
H_Fenster = 0.9; % [m]

U_Aussenfenster_Nord = 1.2; % [W/m/m/K]
U_Aussenwand_Nord    = 0.23; % [W/m/m/K]

% Fl‰chen Nordseite
A_Fassade_Nord     = B*H; % [m*m]
A_Fenster_Nord    = 2*B_Fenster*H_Fenster; % [m*m]
A_Aussenwand_Nord = A_Fassade_Nord-A_Fenster_Nord; % [m*m]

A_Fassade_Sued = B*H;

A_Fassade_West = T*H;
A_Fassade_Ost  = T*H;
A_Dach         = T*B;

U_Nord = (U_Aussenwand_Nord*A_Aussenwand_Nord ...
         +U_Aussenfenster_Nord*A_Fenster_Nord) ...
         /A_Fassade_Nord;
         
U_Sued = 0.44; % [W/m/m/K]
U_Ost = U_West = 0.23; % [W/m/m/K]
U_Dach = 0.2; % [W/m/m/K]

A_Gesamt = A_Fassade_Nord+A_Fassade_Sued ...
         + A_Fassade_Ost+A_Fassade_West ...
         + A_Dach;
         
U_Gesamt = (A_Fassade_Nord*U_Aussenwand_Nord ...
           +A_Fassade_Sued*U_Sued ...
           +A_Fassade_Ost*U_Ost ...
           +A_Fassade_West*U_West ...
           +A_Dach*U_Dach)/A_Gesamt;
           

           
##; % [m*m]
##; % [m*m]
##; % [m*m]
##
##;
##
##;
##
##;
##
##
##         
##; % [W/m/m/K]
##; % [W/m/m/K]
##U_Dach = 0.2; % [W/m/m/K]
##
##;
##         
##
##
fprintf('------------------------------------------------------\n');
fprintf('| Formel:                                            |\n');
fprintf('|                                                    |\n');
fprintf('| A_Fassade_Nord     = B*H                           |\n');
fprintf('| A_Fenster_Nord     = 2*B_Fenster*H_Fenster         |\n');
fprintf('| A_Aussenwand_Nord  = A_Fassade_Nord-A_Fenster_Nord |\n');
fprintf('| A_Fassade_Sued     = B*H                           |\n');
fprintf('| A_Fassade_West     = A_Fassade_Ost =T*H            |\n');
fprintf('| A_Dach             = T*B                           |\n');
fprintf('|                                                    |\n');
fprintf('| A_Gesamt = A_Fassade_Nord+A_Fassade_Sued           |\n');
fprintf('|          + A_Fassade_Ost+A_Fassade_West            |\n');
fprintf('|          + A_Dach                                  |\n');
fprintf('|                                                    |\n');
fprintf('| U_Nord = (U_Aussenwand_Nord*A_Aussenwand_Nord      |\n');
fprintf('|          +U_Aussenfenster_Nord*A_Fenster_Nord      |\n');
fprintf('|          )/A_Fassade_Nord;                         |\n')
fprintf('|                                                    |\n');
fprintf('| U_Gesamt = ( A_Fassade_Nord*U_Aussenwand_Nord      |\n');
fprintf('|            + A_Fassade_Sued*U_Sued                 |\n');
fprintf('|            + A_Fassade_Ost*U_Ost                   |\n');
fprintf('|            + A_Fassade_West*U_West                 |\n');
fprintf('|            + A_Dach*U_Dach                         |\n');
fprintf('|            )/A_Gesamt                              |\n');
fprintf('------------------------------------------------------\n');
fprintf('B                        = %15.3f m\n',B);
fprintf('T                        = %15.3f m\n',T);
fprintf('H                        = %15.3f m\n',H);
fprintf('B_Fenster                = %15.3f m\n',B_Fenster);
fprintf('H_Fenster                = %15.3f m\n',H_Fenster);
fprintf('A_Fassade_Nord           = %15.3f m^2\n',A_Fassade_Nord);
fprintf('A_Fenster_Nord           = %15.3f m^2\n',A_Fenster_Nord);
fprintf('A_Aussenwand_Nord        = %15.3f m^2\n',A_Aussenwand_Nord);
fprintf('A_Fassade_Sued           = %15.3f m^2\n',A_Fassade_Sued);
fprintf('A_Fassade_West           = %15.3f m^2\n',A_Fassade_West);
fprintf('A_Fassade_Ost            = %15.3f m^2\n',A_Fassade_Ost);
fprintf('A_Dach                   = %15.3f m^2\n',A_Dach);
fprintf('==========================================\n');
fprintf('A_Gesamt                   = %15.3f m^2\n',A_Gesamt);
fprintf('==========================================\n');
fprintf('U_Aussenfenster_Nord     = %15.3f W/m^2/K\n',U_Aussenfenster_Nord);
fprintf('U_Aussenwand_Nord        = %15.3f m^2\n',U_Aussenwand_Nord);
fprintf('==========================================\n');
fprintf('U_Nord                   = %15.3f m^2\n',U_Nord);
fprintf('==========================================\n');
fprintf('U_Sued                   = %15.3f m^2\n',U_Sued);
fprintf('U_Ost                    = %15.3f m^2\n',U_Ost);
fprintf('U_West                   = %15.3f m^2\n',U_West);
fprintf('U_Dach                   = %15.3f m^2\n',U_Dach);
fprintf('==========================================\n');
fprintf('U_Gesamt                 = %15.3f m^2\n',U_Gesamt);
fprintf('==========================================\n');

