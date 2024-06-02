# Aufgabe 3.1

![](/2022-01-26-20-46-54-image.png)

![](/2022-01-26-20-47-08-image.png)

![](/2022-01-26-20-49-02-image.png)

![](/2022-01-26-20-49-35-image.png)

Andere Zahlen:

```
Heizlast = 290.;

z           = 17; % [-] Anzahl Elemente
Q_N_Element = 38; % [W] NennwÃ¤rmeleistung je Element
f           = 1.26;  % [-] Leistungsfaktor
Q_N_Res     = z * Q_N_Element; % [W] reslutierende Nennleistung
Q_B         = f * Q_N_Res;     % [W] Betriebsleistung

A           = Q_B/Heizlast * 100.; % [%] Abdeckung der Heizlast 
```

```
Heizlast                   =         290.000 W
Nennwaermeleistung Element =          38.000 W
Anzahl Elemente            =              17
reslutierende Nennleistung =         646.000 W
Leistungsfaktor            =           1.260 -
Betriebsleistung           =         813.960 W
Abdeckung der Heizlast     =         280.676 %
Abdeckung der Heizlast     =          280.68 %
```
