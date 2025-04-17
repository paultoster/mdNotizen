% Ein Raum mit einer Heizlast von 290 W soll mit einem Heizkörper ausgestattet werden.
% Ermöglicht die folgende Konfiguration eine optimale Deckung dieser Heizlast? Geben Sie an, wieviel Prozent der st mi
% angegebenen Konfiguration abgedeckt werden. Tragen Sie den Wert in Prozent auf eine Nachkommastelle gerundet ein. Ru
% benötigte Zwischenergebnisse auf drei Nachkommastellen.
% Konfiguration:
% WW-Pumpenheizung mit Anschluss Hochdruck-Dampf-Fernheizung, Zweisäuler mit insgesamt 17 Elementen
% mit 38 W Nenn-Wärmeleistung je Element

Heizlast = 290.;

z           = 17; % [-] Anzahl Elemente
Q_N_Element = 38; % [W] Nennwärmeleistung je Element
f           = 1.26;  % [-] Leistungsfaktor
Q_N_Res = z * Q_N_Element; % [W] reslutierende Nennleistung
Q_B     = f * Q_N_Res;     % [W] Betriebsleistung

A       = Q_B/Heizlast * 100.; % [%] Abdeckung der Heizlast 
fprintf('\n')
fprintf('Heizlast                   = %15.3f W\n',Heizlast);
fprintf('Nennwaermeleistung Element = %15.3f W\n',Q_N_Element);
fprintf('Anzahl Elemente            = %15.0f \n',z);
fprintf('reslutierende Nennleistung = %15.3f W\n',Q_N_Res);
fprintf('Leistungsfaktor            = %15.3f -\n',f);
fprintf('Betriebsleistung           = %15.3f W\n',Q_B);
fprintf('Abdeckung der Heizlast     = %15.3f %%\n',A);
fprintf('Abdeckung der Heizlast     = %15.2f %%\n',A);


  