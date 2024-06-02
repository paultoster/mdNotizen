# Etimation Side Slip Angle (ESSA) model

### Side slip angle estimation model

From Anne von Vietinghoff "Nichtlineare Regelung von Kraftfahrzeugen in querdynamisch kritischen Fahrsituationen, Universitätsverlag Karlsruhe, 2008"

The equations are similiar Matthias Schorn's approach (Matthias Schorn "Quer- und Längsregelung eines Personenkraftwagens für ein Fahrerassistenzsystem zur Unfallvermeidung, IAT, 2007"), but based on absolute velocity and side slip angle $v, \beta$

In Vietinghoffs Approach the non linear side force calculation from a simplified DeftTyre is used. But first I try the last square estimation from Matthias  Schorn

## Input

$u_l=\begin{bmatrix} F_{X,W_{VL}} & F_{X,W_{VR}} & F_{X,W_{HL}} & F_{X,W_{HR}} & \delta_H\end{bmatrix}^T$

### State

$x=\begin{bmatrix} v & \beta & \dot \Psi\end{bmatrix}^T$

### Measurement

$z_k=\begin{bmatrix}\dot \Psi_k & a_{X,k} & a_{Y,k} & \omega_{VL,k} & \omega_{VR,k} & \omega_{HL,k} & \omega_{HR,k} \end{bmatrix}^T$

### Model Equation

Based on the velocity vector

(equation 2.3,2.4,2.5)

$$
\begin{aligned}
\vec{v}&=v_X\cdot \vec{e}_X + v_Y\cdot \vec{e}_Y \\
\vec{v}&=v\cdot \cos \beta \cdot \vec{e}_X 
         + v\cdot \sin \beta \cdot \vec{e}_Y \\
\\
\vec{a} &= a_X \cdot \vec{e}_X+a_Y \cdot \vec{e}_Y\\
\vec{a} &= \vec{\dot v} = \dot{v}_X\cdot \vec{e}_X 
                        + v_X\cdot \vec{\dot e}_X 
                        +\dot{v}_Y\cdot \vec{e}_Y
                        +v_Y\cdot \vec{\dot e}_Y \\
\\
with \\
\vec{\dot e}_X &= \dot \Psi^\cdot \vec{e}_Y,
\vec{\dot e}_Y = -\dot \Psi^\cdot \vec{e}_X\\
\\
\vec{\dot v} &= (\dot{v}_X-\dot \Psi\cdot v_Y) \cdot \vec{e}_X 
             +(\dot{v}_Y+\dot \Psi\cdot v_X) \cdot  \vec{e}_Y
\\
\vec{\dot v} &= (\dot{v}\cdot \cos \beta
                -v\cdot \dot \beta \cdot \sin \beta
                -\dot \Psi \cdot v \cdot \sin \beta
                ) \cdot \vec{e}_X \\
             &+  (\dot{v}\cdot\sin \beta 
                + v \cdot \dot \beta\cdot\cos\beta 
                +\dot \Psi\cdot v\cdot \cos \beta
                ) \cdot  \vec{e}_Y
\\
\vec{\dot v} &= (\dot{v}\cdot \cos \beta
                -v\cdot (\dot \beta+\dot \Psi) \cdot \sin \beta
                ) \cdot \vec{e}_X \\
             &+  (\dot{v}\cdot\sin \beta 
                + v \cdot (\dot \beta+\dot \Psi)\cdot\cos\beta 
                ) \cdot  \vec{e}_Y


\end{aligned}
$$

With the forces 

(equation 2.6)

$$
\begin{aligned}
m\cdot a_X &= \sum{F_X}\\
m\cdot a_Y &= \sum{F_Y}\\
\\
m\cdot(\dot{v}\cdot \cos \beta
                -v\cdot (\dot \beta+\dot \Psi) \cdot \sin \beta)
                 &= \sum{F_X}\\
m\cdot (\dot{v}\cdot\sin \beta 
                + v \cdot (\dot \beta+\dot \Psi)\cdot\cos\beta 
                ) &= \sum{F_Y}\\
\end{aligned}
$$

with forces:

(equation 2.8-2.10)

$$
\begin{aligned}
\sum{F_X} &= F_{X,V_{VL}}+F_{X,V_{VR}}+F_{X,V_{RL}}+F_{X,V_{RR}}-F_{X,W}\\
\sum{F_Y} &= F_{Y,V_{VL}}+F_{Y,V_{VR}}+F_{Y,V_{RL}}+F_{Y,V_{RR}}\\
F_{X,W} &= c^*_W \cdot v^2, c^*_W={1\over2}\cdot c_W \cdot A_L \cdot \rho_0

\end{aligned}
$$

Modify (2.6) by multiply with $\cos \beta$ and $\sin \beta$ and add:

(equation 2.11)

$$
m\cdot \dot v\cdot(\cos ^2 \beta + \sin^2 \beta)
=\cos \beta \cdot \sum F_X + \sin \beta \cdot \sum F_Y
$$

With $(\cos ^2 \beta + \sin^2 \beta)=1$ we get

$$
\begin{aligned}
\dot v &= {1\over m}\cdot \left(\cos \beta \cdot \sum F_X 
                               + \sin \beta \cdot \sum F_Y\right) 
\\
\dot \beta &= {1\over v\cdot m}\cdot \left(\cos \beta \cdot \sum F_Y 
                                    - \sin \beta \cdot \sum F_X\right) 
                                    - \dot \Psi
\end{aligned}
$$

The equation for  $\ddot \Psi$ is the same as in Schorns equation (eq 4.29), 

$$
\ddot \Psi = \frac{(F_{Y,V_{VL}}+F_{Y,V_{VR}})\cdot l_V
- (F_{Y,V_{HL}}+F_{Y,V_{HR}})\cdot l_H}
{J_Z}\\
+ \frac{(F_{Y,V_{VR}}-F_{Y,V_{VL}})\cdot \frac{b_V}{2}
+ (F_{Y,V_{HR}}-F_{Y,V_{HL}})\cdot \frac{b_H}{2}}
{J_Z}
$$

so discretized:

$$
\begin{aligned}
\begin{bmatrix}
v_{k} \\ \beta_{k} \\ \dot \Psi_{k}
\end{bmatrix} 
&=
\begin{bmatrix}
v_{k-1} \\ \beta_{k-1} \\ \dot \Psi_{k-1}
\end{bmatrix} \\
&+ T_0 \cdot 
\begin{bmatrix}
{1\over m}\cdot \left(\cos \beta_{k-1} \cdot \sum F_{X,k-1} 
                    + \sin \beta_{k-1} \cdot \sum F_{Y,k-1}\right) 
\\
{1\over v\cdot m}\cdot \left(\cos \beta_{k-1} \cdot \sum F_{Y,k-1} 
                           - \sin \beta_{k-1} \cdot \sum F_{X,k-1}\right) 
                           - \dot \Psi_{k-1}
\\
f_3
\end{bmatrix} 
\\
\\
f_3 &= \frac{(F_{Y,V_{VL},k-1}+F_{Y,V_{VR},k-1})\cdot l_V
- (F_{Y,V_{HL},k-1}+F_{Y,V_{HR},k-1})\cdot l_H}
{J_Z} \\
&+ \frac{(F_{Y,V_{VR},k-1}-F_{Y,V_{VL},k-1})\cdot \frac{b_V}{2}
+ (F_{Y,V_{HR},k-1}-F_{Y,V_{HL},k-1})\cdot \frac{b_H}{2}}
{J_Z}

\end{aligned}
$$

### Measurement Equation

$$
\begin{bmatrix}
\dot \Psi_k \\
a_{X,k} \\
a_{Y,k} \\
\omega_{VL,k} \\
\omega_{VR,k} \\
\omega_{HL,k} \\
\omega_{HR,k} \\
\end{bmatrix}
=
\begin{bmatrix}
\dot \Psi_k \\
\frac{F_{X,V_{VL},k}+F_{X,V_{VR},k}+F_{X,V_{HL},k}+F_{X,V_{HR},k}}
{m} \\
\frac{F_{Y,V_{VL},k-}+F_{Y,V_{VR},k}+F_{Y,V_{HL},k}+F_{Y,V_{HR},k}}
{m} \\
\frac{v_{X,W_{VL},k}}{r_{dyn}} \\
\frac{v_{X,W_{VR},k}}{r_{dyn}} \\
\frac{v_{X,W_{HL},k}}{r_{dyn}} \\
\frac{v_{X,W_{HR},k}}{r_{dyn}} \\
\end{bmatrix}

$$

### Side Slipe definition

Side slip is now based on $v$ and $\beta$:

$$
\begin{aligned}
F_{Y,W_{VL}} &= \hat{k}_{\alpha,VL} \cdot 
\Bigg( \delta_H - \arctan \bigg( 
\frac{v \cdot \sin\beta + \dot\Psi \cdot l_V}
     {v\cdot \cos\beta - \dot\Psi \cdot 0.5 \cdot b_V}
\bigg) \Bigg) 
\\
F_{Y,W_{VR}} &= \hat{k}_{\alpha,VR} \cdot 
\Bigg( \delta_H - \arctan \bigg( 
\frac{v\cdot \sin\beta + \dot\Psi \cdot l_V}
     {v\cdot \cos\beta + \dot\Psi \cdot 0.5 \cdot b_V}
\bigg) \Bigg) 
\\
F_{Y,W_{HL}} &= \hat{k}_{\alpha,HL} \cdot 
\Bigg( - \arctan \bigg( 
\frac{v\cdot \sin\beta - \dot\Psi \cdot l_H}
     {v\cdot \cos\beta - \dot\Psi \cdot 0.5 \cdot b_H}
\bigg) \Bigg) 
\\
F_{Y,W_{HR}} &= \hat{k}_{\alpha,HR} \cdot 
\Bigg( - \arctan \bigg( 
\frac{v\cdot \sin\beta - \dot\Psi \cdot l_H}
     {v\cdot \cos\beta + \dot\Psi \cdot 0.5 \cdot b_H}
\bigg) \Bigg) 
\\
\end{aligned}
$$

### 
