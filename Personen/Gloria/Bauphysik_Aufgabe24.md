# Aufgabe 2.4

![](/2022-01-26-21-46-25-image.png)

Formel:

```
------------------------------------------------------
| A_Fassade_Nord     = B*H                           |
| A_Fenster_Nord     = 2*B_Fenster*H_Fenster         |
| A_Aussenwand_Nord  = A_Fassade_Nord-A_Fenster_Nord |
| A_Fassade_Sued     = B*H                           |
| A_Fassade_West     = A_Fassade_Ost =T*H            |
| A_Dach             = T*B                           |
|                                                    |
| A_Gesamt = A_Fassade_Nord+A_Fassade_Sued           |
|          + A_Fassade_Ost+A_Fassade_West            |
|          + A_Dach                                  |
|                                                    |
| U_Nord = (U_Aussenwand_Nord*A_Aussenwand_Nord      |
|          +U_Aussenfenster_Nord*A_Fenster_Nord      |
|          )/A_Fassade_Nord;                         |
|                                                    |
| U_Gesamt = ( A_Fassade_Nord*U_Aussenwand_Nord      |
|            + A_Fassade_Sued*U_Sued                 |
|            + A_Fassade_Ost*U_Ost                   |
|            + A_Fassade_West*U_West                 |
|            + A_Dach*U_Dach                         |
|            )/A_Gesamt                              |
------------------------------------------------------
```

```
------------------------------------------------------
B                        =           8.000 m
T                        =           3.800 m
H                        =           3.000 m
B_Fenster                =           1.500 m
H_Fenster                =           0.900 m
A_Fassade_Nord           =          24.000 m^2
A_Fenster_Nord           =           2.700 m^2
A_Aussenwand_Nord        =          21.300 m^2
A_Fassade_Sued           =          24.000 m^2
A_Fassade_West           =          11.400 m^2
A_Fassade_Ost            =          11.400 m^2
A_Dach                   =          30.400 m^2
==========================================
A_Gesamt                   =         101.200 m^2
==========================================
U_Aussenfenster_Nord     =           1.200 W/m^2/K
U_Aussenwand_Nord        =           0.230 m^2
==========================================
U_Nord                   =           0.339 m^2
==========================================
U_Sued                   =           0.440 m^2
U_Ost                    =           0.230 m^2
U_West                   =           0.230 m^2
U_Dach                   =           0.200 m^2
==========================================
U_Gesamt                 =           0.271 m^2
==========================================
```
