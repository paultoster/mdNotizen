# Aufgabe 1.4b

![](../../_bilder/2022-01-26-21-51-03-image.png)

Aufgabe:

1.4b) Die EnEV schreibt bei Renovierungsarbeiten von einzelnen Bauteilen für Außenwände an Außenluft einen zulässigen U-Wert von U_zul = O.28 W/m^2/K vor. Ermitteln Sie für die dargestellte Außenwand die erforderliche Wärmeleitfähigkeit der Dämmung in W/(mK) zur Einhaltung dieser Vorgabe. 

Runden Sie benötigte Zwischenergebnisse sowie das Endergebnis auf zwei Nachkommastellen 

```
Wärmeübergangswiderstand innen R_i = 0.13 m^2*K/W 
A) Gipsputz s_A = 0.02 m lambda_A = 0.35 W/m/K 
B) Kalksandstein s_B = 0.30 m lambda_B = 0.7 W/m/K 
C) Mineralwolle s_C = 0.15 m lambda_C = ? 
D) Kunstharzputz s_D = 0.01 m lambda_D = 0.7 W/K/m 
Wärmeübergangswiderstand aussen R_a = 0.04 m^2*K/W
```

Formel:

```
U = 1/(R_i + s_A/lambda_A+ s_B/lambda_B+ s_C/lambda_C+ s_D/lambda_D+R_a) 

 nach lambda_C auflösen:

 (R_i + s_A/lambda_A+ s_B/lambda_B+ s_C/lambda_C+ s_D/lambda_D+R_a) = 1/U
 s_C/lambda_C = 1/U - R_i - s_A/lambda_A - s_B/lambda_B - s_D/lambda_D - R_a
 lambda_C = s_C / (1/U - R_i - s_A/lambda_A - s_B/lambda_B - s_D/lambda_D - R_a)
```

```
--------------------------------------------------------------------------
R_i        = 0.13 m^2*K/W
R_a        = 0.04 m^2*K/W
s_A        = 0.02 m
lambda_A   = 0.35 W/K/m
s_B        = 0.3 m
lambda_B   = 0.7 W/K/m
s_C        = 0.15 m
s_D        = 0.01 m
lambda_D   = 0.7 W/K/m
U_zul      = 0.28 m^2*K/W
--------------------------------------------------------------------------
lambda_C   = 0.051698670605613 W/K/m
lambda_C   = 0.05 W/K/m
--------------------------------------------------------------------------
```
