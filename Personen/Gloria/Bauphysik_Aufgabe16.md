# Augabe 1.6

![image-20220126200532567](/image-20220126200532567.png)

nach $s_C$ auflösen:

$$
\begin{aligned}
U &= \frac{1}{(R_i + \frac{s_A}{\lambda_A}+ \frac{s_B}{\lambda_B}
                  + \frac{s_C}{\lambda_C}+ \frac{s_D}{\lambda_D}
                  +R_a)}
\\
1\over U &= R_i + \frac{s_A}{\lambda_A}+ \frac{s_B}{\lambda_B}
                  + \frac{s_C}{\lambda_C}+ \frac{s_D}{\lambda_D}
                  +R_a
\\
\frac{s_C}{\lambda_C} &= \frac{1}{U} - R_i - \frac{s_A}{\lambda_A}
                      - \frac{s_B}{\lambda_B} - \frac{s_D}{\lambda_D}
                      -R_a
\\
s_C &= \lambda_C \cdot \left( \frac{1}{U} - R_i - \frac{s_A}{\lambda_A}
                      - \frac{s_B}{\lambda_B} - \frac{s_D}{\lambda_D}
                      -R_a\right)
\end{aligned}
$$

 -------------------------------------------------------------------------

```
Wärmeübergangswiderstand innen   =           0.130 m^2*K/W
Wärmeübergangswiderstand aussen  =           0.040 m^2*K/W
Dicke Innenputz                  =           0.015 m
Wärmeleitfähigkeit Innenputz    =               1
Dicke MAuerwerk                 =           0.250 m
Wärmeleitfähigkeit Mauerwerk    =               2
Wärmeleitfähigkeit Dämmung      =               0
Dicke Dämmung                   =           0.015 m
Wärmeleitfähigkeit Dämmung      =               1
Wärmedurchgangskoeffizient      =           0.410 W
Dicke Dämmung                   =           0.075 m
Dicke Dämmung                   =           0.070 m
```