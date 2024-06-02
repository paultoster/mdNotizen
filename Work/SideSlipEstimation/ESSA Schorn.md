# Estimation Side Slip Angle

(estimation side slip angle)

## Approach from Matthias Schorn

From Matthias Schorn "Quer- und Längsregelung eines Personenkraftwagens für ein Fahrerassistenzsystem zur Unfallvermeidung, IAT, 2007"

### Extended Kalman-Filter (EKF)

nonlinear processmodel

equation 4.23 and 4.24

$$
\begin{aligned}
x_k &= f(x_{k-1},u_{k-1},w_{k-1}) \\
z_k &= h(x_k,v_k)
\end{aligned}
$$

Getting systemmatrix and measurementmatrix by Jacobianmatrix

equation 4.25, 4.26

$$
\begin{aligned}
A_{[i,j]} &= \frac {\partial f_{[i]} (\hat x_{k-1},u_{k-1},())}
                   {\partial x_{[j]}} 
\\
B_{[i,l]} &= \frac {\partial f_{[i]} (\hat x_{k-1},u_{k-1},())}
                   {\partial u_{[l]}}
\\
H_{[i,j]} &= \frac {\partial h_{[i]}(\tilde x_k,())}
                   {\partial x_{[j]}}
\end{aligned}


$$

with $\tilde x_k = f(\hat x_{k-1},u_{k-1},())$ and Jacobimatrix for $w_k,v_k$

equation 4.26

$$
\begin{aligned}
W_{[i,j]} &= \frac {\partial f_{[i]} (\hat x_{k-1},u_{k-1},())}
                   {\partial w_{[j]}} 
\\
V_{[i,j]} &= \frac {\partial h_{[i]}(\tilde x_k,())}
                   {\partial v_{[j]}}
\end{aligned}
$$

the procedure fro EKF is:

A) time update

1) prediction states

$$
\hat x^-_k = f(\hat x_{k-1},u_{k-1},())

$$

2. prediction covariance

$$
P^-_k = A_k P_{k-1} A^T_k + W_k Q_{k-1} W^T_k
$$

B) measurement update

3. kalman gain
   
   $$
   K_k = P^-_{k} H^T_k \big(H_k P^-_{k} H^T_k + V_k R_{k} V^T_k \big)^{-1} 
   $$

4. correction
   
   $$
   \hat x_k = \hat x^-_k + K_k \cdot \big(z_k -  h(\hat x^-_{k},() \big)
   $$

5. correction covariance
   
   $$
   P_k = \big(I-K_k\cdot H_k)\cdot P^-_{k}
   $$

Remark: by not using stochastic input, as described $W_k$ and $V_k$ are Identitymatrices

$Q_k$ and $R_k$ could be derived by the linearized equation

$$
\begin{aligned}
\Delta x_{k} &=  A_k \cdot \Delta x_{k-1} + B_k \cdot \Delta u_{k-1} \\
\Delta x_{k} &= x_{k}-x_{k-1} \\
\Delta x_{k-1} &= x_{k-1}-x_{k-2} \\
\Delta u_{k-1} &= u_{k-1}-u_{k-2} \\

\end{aligned}
$$

to calculate $Q_k$ as

$$
Q_k = 
\begin{bmatrix}
q^2_{1,k} & 0 &... & 0 \\
0 & q^2_{2,k} & ... & 0 \\
.\\
.\\
.\\
0 & 0 & 0 ... & q^2_{n,k}
\end{bmatrix}
$$

and getting from system equation

$$
\begin{aligned}
q_{k} &=  A_k \cdot x_{std} + B_k \cdot u_{std}\\
or \\
q_{k} &=  B_k \cdot u_{std}
\end{aligned}
$$

where $x_{std}$ and $u_{std}$ are standard deviations from state and input

$R_k$ could directly set diagianal with

$$
R_k = 
\begin{bmatrix}
z^2_{1,std,meas} & 0 &... & 0 \\
0 & z^2_{2,std,meas} & ... & 0 \\
.\\
.\\
.\\
0 & 0 & 0 ... & z^2_{n,std,meas}
\end{bmatrix}
$$

### Side slip angle estimation

Use of Extended Kalman Filter (EKF) which was best rated (Variante 3, page 55) 

process model:

equation 4.27,4.28,4.29

$$
\begin{aligned}
\begin{bmatrix}
v_{X,k} \\ v_{Y,k} \\ \dot \Psi_{k}
\end{bmatrix} 
&=
\begin{bmatrix}
v_{X,k-1} \\ v_{Y,k-1} \\ \dot \Psi_{k-1}
\end{bmatrix} \\
&+ T_0 \cdot 
\begin{bmatrix}
\frac{F_{X,V_{VL},k-1}+F_{X,V_{VR},k-1}+F_{X,V_{HL},k-1}+F_{X,V_{HR},k-1}}
{m} + \dot\Psi_{k-1}\cdot v_{Y,k-1} 
\\
\frac{F_{Y,V_{VL},k-1}+F_{Y,V_{VR},k-1}+F_{Y,V_{HL},k-1}+F_{Y,V_{HR},k-1}}
{m} - \dot\Psi_{k-1}\cdot v_{X,k-1} 
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

State $x=\begin{bmatrix} v_{X} & v_{Y} & \dot \Psi\end{bmatrix}^T$

Input vector is $u=\begin{bmatrix} F_{X,W_{VL}} & F_{X,W_{VR}} & F_{X,W_{HL}} & F_{X,W_{HR}} & \delta_H\end{bmatrix}^T$

Index $W$ is wheel and $V$ for vehicle, only necessary for front (front steering)

equation 3.2

$$
T^{W->V}=
\begin{bmatrix} 
\cos \delta_H & -\sin \delta_H & 0 \\
\sin \delta_H & \cos \delta_H & 0 \\
0 & 0 & 1
\end{bmatrix}
$$

The wheel based longitudinal forces are transformed as

$$
\begin{aligned}

F_{X,V_{VL}} &= F_{X,W_{VL}} \cdot \cos \delta_H 
             - F_{Y,W_{VL}} \cdot \sin \delta_H
\\
F_{Y,V_{VL}} &= F_{X,W_{VL}} \cdot \sin \delta_H 
             + F_{Y,W_{VL}} \cdot \cos \delta_H
\\
F_{X,V_{VR}} &= F_{X,W_{VR}} \cdot \cos \delta_H 
             - F_{Y,W_{VR}} \cdot \sin \delta_H
\\
F_{Y,V_{VR}} &= F_{X,W_{VR}} \cdot \sin \delta_H 
             + F_{Y,W_{VR}} \cdot \cos \delta_H
\\
F_{X,V_{HL}} &= F_{X,W_{HL}}
\\
F_{Y,V_{HL}} &= F_{Y,W_{HL}}
\\
F_{X,V_{HR}} &= F_{X,W_{HR}}
\\
F_{Y,V_{HR}} &= F_{Y,W_{HR}}

\end{aligned}
$$

Th longitudinal forces are from input (described later), lateral forces as (getting $\hat{k}_{\alpha}$ from least square algo (RLS)):

equation 4.30

$$
\begin{aligned}
F_{Y,W_{VL}} &= \hat{k}_{\alpha,VL} \cdot 
\Bigg( \delta_H - \arctan \bigg( 
\frac{v_Y + \dot\Psi \cdot l_V}
     {v_X - \dot\Psi \cdot 0.5 \cdot b_V}
\bigg) \Bigg) 
\\
F_{Y,W_{VR}} &= \hat{k}_{\alpha,VR} \cdot 
\Bigg( \delta_H - \arctan \bigg( 
\frac{v_Y + \dot\Psi \cdot l_V}
     {v_X + \dot\Psi \cdot 0.5 \cdot b_V}
\bigg) \Bigg) 
\\
F_{Y,W_{HL}} &= \hat{k}_{\alpha,HL} \cdot 
\Bigg( - \arctan \bigg( 
\frac{v_Y - \dot\Psi \cdot l_H}
     {v_X - \dot\Psi \cdot 0.5 \cdot b_H}
\bigg) \Bigg) 
\\
F_{Y,W_{HR}} &= \hat{k}_{\alpha,HR} \cdot 
\Bigg( - \arctan \bigg( 
\frac{v_Y - \dot\Psi \cdot l_H}
     {v_X + \dot\Psi \cdot 0.5 \cdot b_H}
\bigg) \Bigg) 
\\
\end{aligned}
$$

measurement equation

equation  4.31

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

to get the wheel velocities in vehicle coordinates:

$$
\begin{aligned}
v_{X,V_{VL}} &= v_X - \dot\Psi \cdot 0.5 \cdot b_V \\
v_{X,V_{VR}} &= v_X + \dot\Psi \cdot 0.5 \cdot b_V \\
v_{X,V_{HL}} &= v_X - \dot\Psi \cdot 0.5 \cdot b_H \\
v_{X,V_{HR}} &= v_X + \dot\Psi \cdot 0.5 \cdot b_H \\
\\
v_{Y,V_{VL}} &= v_Y + \dot\Psi \cdot l_V \\
v_{Y,V_{VR}} &= v_Y + \dot\Psi \cdot l_V \\
v_{Y,V_{HL}} &= v_Y - \dot\Psi \cdot l_H \\
v_{Y,V_{HR}} &= v_Y - \dot\Psi \cdot l_H \\



\end{aligned}
$$

with transformation matrix

$$
T^{V->W}=
\begin{bmatrix} 
\cos \delta_H & \sin \delta_H & 0 \\
-\sin \delta_H & \cos \delta_H & 0 \\
0 & 0 & 1
\end{bmatrix}
$$

and the transformation in wheel coordinates

$$
\begin{aligned}

v_{X,W_{VL}} &= v_{X,V_{VL}} \cdot \cos \delta_H 
             + v_{Y,V_{VL}} \cdot \sin \delta_H
\\
v_{Y,W_{VL}} &= -v_{X,V_{VL}} \cdot \sin \delta_H 
             + v_{Y,V_{VL}} \cdot \cos \delta_H
\\
v_{X,W_{VR}} &= v_{X,V_{VR}} \cdot \cos \delta_H 
             + v_{Y,V_{VR}} \cdot \sin \delta_H
\\
v_{Y,W_{VR}} &= -v_{X,V_{VR}} \cdot \sin \delta_H 
             + v_{Y,V_{VR}} \cdot \cos \delta_H
\\
v_{X,W_{HL}} &= v_{X,V_{HL}}
\\
v_{Y,W_{HL}} &= v_{Y,V_{HL}}
\\
v_{X,W_{HR}} &= v_{X,V_{HR}}
\\
v_{Y,W_{HR}} &= v_{Y,V_{HR}}

\end{aligned}
$$

### Build linearised matrix $A_k, B_k, H_k$

Build $A_{k,[i,j]} = \frac {\partial f_{[i]} (\hat x_{k-1},u_{k-1},())}{\partial x_{[j]}}$ with $x=\begin{bmatrix} v_{X} & v_{Y} & \dot \Psi\end{bmatrix}^T$:

$$
\begin{aligned}

A_{k} &= T_0 \cdot
\begin{bmatrix} 
0 & 
\dot\Psi_{k} & 
v_{Y,k} 
\\
\\
\frac{1}{m}\cdot \frac {\partial fysum_k }{\partial v_{X,k}} - \dot\Psi_{k} 
& 
\frac{1}{m}\cdot \frac {\partial fysum_k }{\partial v_{Y,k}}  
& 
\frac{1}{m}\cdot \frac {\partial fysum_k }{\partial \dot\Psi_{k}} - v_{X,k} 
\\
\\
\frac {\partial f_{3,k} }{\partial v_{X,k}} & 
\frac {\partial f_{3,k} }{\partial v_{Y,k}} & 
\frac {\partial f_{3,k} }{\partial \dot\Psi_{k}}
\end{bmatrix}
\end{aligned}
$$

With the derivation

$$
\begin{aligned}

\frac {\partial fysum_k }{\partial v_{X,k}} &=
\frac {\partial F_{Y,V_{VL}} }{\partial v_{X,k}}+
\frac {\partial F_{Y,V_{VR}} }{\partial v_{X,k}}+
\frac {\partial F_{Y,V_{HL}} }{\partial v_{X,k}}+
\frac {\partial F_{Y,V_{HR}} }{\partial v_{X,k}}
\\
\\
\frac {\partial fysum_k }{\partial v_{X,k}} &=
\frac {\partial F_{Y,V_{VL}} }{\partial v_{Y,k}}+
\frac {\partial F_{Y,V_{VR}} }{\partial v_{Y,k}}+
\frac {\partial F_{Y,V_{HL}} }{\partial v_{Y,k}}+
\frac {\partial F_{Y,V_{HR}} }{\partial v_{Y,k}}
\\
\\
\frac {\partial fysum_k }{\partial v_{X,k}} &=
\frac {\partial F_{Y,V_{VL}} }{\partial \dot\Psi_{k}}+
\frac {\partial F_{Y,V_{VR}} }{\partial \dot\Psi_{k}}+
\frac {\partial F_{Y,V_{HL}} }{\partial \dot\Psi_{k}}+
\frac {\partial F_{Y,V_{HR}} }{\partial \dot\Psi_{k}}
\\
\\
\frac {\partial f_{3,k} }{\partial v_{X,k}} &= 
\frac{l_V-\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VL}} }
                                         {\partial v_{X,k}} 
+
\frac{l_V+\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VR}} }
                                         {\partial v_{X,k}} 
+
\frac{-l_H-\frac{b_H}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{HL}} }
                                          {\partial v_{X,k}} 
\\&+
\frac{-l_H+\frac{b_H}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{HR}} }
                                          {\partial v_{X,k}} 
\\
\\
\frac {\partial f_{3,k} }{\partial v_{Y,k}} &= 
\frac{l_V-\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VL}} }
                                         {\partial v_{Y,k}} 
+
\frac{l_V+\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VR}} }
                                         {\partial v_{Y,k}} 
+
\frac{-l_H-\frac{b_H}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{HL}} }
                                          {\partial v_{Y,k}} 
\\&+
\frac{-l_H+\frac{b_H}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{HR}} }
                                          {\partial v_{Y,k}} 
\\
\\
\frac {\partial f_{3,k} }{\partial \dot\Psi_{k}} &= 
\frac{l_V-\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VL}} }
                                         {\partial \dot\Psi_{k}} 
+
\frac{l_V+\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VR}} }
                                         {\partial \dot\Psi_{k}} 
+
\frac{-l_H-\frac{b_H}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{HL}} }
                                          {\partial \dot\Psi_{k}} 
\\&+
\frac{-l_H+\frac{b_H}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{HR}} }
                                          {\partial \dot\Psi_{k}} 
\\
\end{aligned}
$$

Build $B_{k,[i,l]} = \frac {\partial f_{[i]} (\hat x_{k-1},u_{k-1},())}{\partial u_{[l]}}$  with

 $u_l=\begin{bmatrix} F_{X,W_{VL}} & F_{X,W_{VR}} & F_{X,W_{HL}} & F_{X,W_{HR}} & \delta_H\end{bmatrix}^T$:

$$
\begin{aligned}

B_{k} &= 
T_0 \cdot 
\begin{bmatrix}
\frac{\cos \delta_H}{m} & 
\frac{\cos \delta_H}{m} & 
\frac{1}{m} &
\frac{1}{m} & 
\frac{1}{m} \cdot 
            \big( \frac {\partial F_{X,V_{VL},k}}{\partial \delta_H} +
                  \frac {\partial F_{X,V_{VR},k}}{\partial \delta_H}
            \big) \\ \\
\frac{\sin \delta_H}{m} & 
\frac{\sin \delta_H}{m} & 
0 &
0 & 
\frac{1}{m} \cdot 
            \big( \frac {\partial F_{Y,V_{VL},k}}{\partial \delta_H} +
                  \frac {\partial F_{Y,V_{VR},k}}{\partial \delta_H}
            \big) \\ \\
\frac{l_V-\frac{b_V}{2}}{J_Z}\cdot \sin \delta_H &
\frac{l_V+\frac{b_V}{2}}{J_Z}\cdot \sin \delta_H&
0 &
0 &
\frac{l_V-\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VL}} }
                                         {\partial \delta_{H}} 
+
\frac{l_V+\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VR}} }
                                         {\partial \delta_{H}} 

\end{bmatrix} 
\end{aligned}
$$

$$
\begin{aligned}

\frac {\partial F_{Y,V_{VL}} }{\partial \delta_{H}} &=
F_{X,W_{VL}} \cdot \cos \delta_H + 
k_{\alpha,VL} \cdot \cos \delta_H -
F_{Y,W_{VL}} \cdot \sin \delta_H
\\
\\
\frac {\partial F_{Y,V_{VR}} }{\partial \delta_{H}} &=
F_{X,W_{VR}} \cdot \cos \delta_H + 
k_{\alpha,VR} \cdot \cos \delta_H -
F_{Y,W_{VR}} \cdot \sin \delta_H

\end{aligned}
$$

To build $H_{[i,j]} = \frac {\partial h_{[i]}(\tilde x_k,())}{\partial x_{[j]}}$ with $x=\begin{bmatrix} v_{X} & v_{Y} & \dot \Psi\end{bmatrix}^T $:

$$
\begin{aligned}
H_k &=
\begin{bmatrix}
0 & 0 & 1 \\
\\
h_{21} &
h_{22} &
h_{23} \\
\\
h_{31} &
h_{32} &
h_{33} \\
\\
\\
\frac{\cos \delta_H}{r_{dyn}} &
\frac{\sin \delta_H}{r_{dyn}} &
\frac{l_V \cdot \sin \delta_H - \frac{b_V\cdot \cos \delta_H}{2} }{r_{dyn}}
\\
\\
\frac{\cos \delta_H}{r_{dyn}} &
\frac{\sin \delta_H}{r_{dyn}} &
\frac{l_V \cdot \sin \delta_H + \frac{b_V\cdot \cos \delta_H}{2} }{r_{dyn}}
\\
\\
\frac{1}{r_{dyn}} &
0 &
 -\frac{b_H}{2\cdot r_{dyn} }
\\
\\
\frac{1}{r_{dyn}} &
0 &
 -\frac{b_H}{2\cdot r_{dyn} }
\\
\end{bmatrix}
\\
\\
h_{21} &= \frac{1}{m} \cdot 
            \big( \frac {\partial F_{X,V_{VL},k}}{\partial v_X} +
                  \frac {\partial F_{X,V_{VR},k}}{\partial v_X} 
            \big)
\\
h_{22} &= \frac{1}{m} \cdot 
            \big( \frac {\partial F_{X,V_{VL},k}}{\partial v_Y} +
                  \frac {\partial F_{X,V_{VR},k}}{\partial v_Y}  
            \big)
\\
h_{23} &= \frac{1}{m} \cdot 
            \big( \frac {\partial F_{X,V_{VL},k}}{\partial \dot \Psi} +
                  \frac {\partial F_{X,V_{VR},k}}{\partial \dot \Psi}  
            \big)
\\
h_{31} &= \frac{1}{m} \cdot 
            \big( \frac {\partial F_{Y,V_{VL},k}}{\partial v_X} +
                  \frac {\partial F_{Y,V_{VR},k}}{\partial v_X} +
                  \frac {\partial F_{Y,V_{HL},k}}{\partial v_X} +
                  \frac {\partial F_{Y,V_{HR},k}}{\partial v_X} 
            \big)
\\
h_{32} &= \frac{1}{m} \cdot 
            \big( \frac {\partial F_{Y,V_{VL},k}}{\partial v_Y} +
                  \frac {\partial F_{Y,V_{VR},k}}{\partial v_Y} +
                  \frac {\partial F_{Y,V_{HL},k}}{\partial v_Y} +
                  \frac {\partial F_{Y,V_{HR},k}}{\partial v_Y} 
            \big)

\\
h_{33} &= \frac{1}{m} \cdot 
            \big( \frac {\partial F_{Y,V_{VL},k}}{\partial \dot \Psi} +
                  \frac {\partial F_{Y,V_{VR},k}}{\partial \dot \Psi} +
                  \frac {\partial F_{Y,V_{HL},k}}{\partial \dot \Psi} +
                  \frac {\partial F_{Y,V_{HR},k}}{\partial \dot \Psi} 
            \big)
\end{aligned}
$$

Derivation $\partial v_X$

$$
\begin{aligned}
\frac {\partial F_{X,V_{VL},k}}{\partial v_X} &= 
{-{\sin \delta_H \cdot k_{\alpha,VL} \cdot \left(
{v_Y} + { l_V} \cdot { \dot \Psi}\right)}
\over
{ \left({ v_X}  -{{{ b_V}\cdot{\dot \Psi}}\over{2}}\right)^2 \cdot
  \left({{\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)^2}
  \over{\left({ v_X}-{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2}}+1\right)}}
\\
\\
\frac {\partial F_{X,V_{VR},k}}{\partial v_X} &= 
{-{\sin \delta_H \cdot k_{\alpha,VR} \cdot \left(
{v_Y} + { l_V} \cdot { \dot \Psi}\right)}
\over
{ \left({ v_X}  +{{{ b_V}\cdot{\dot \Psi}}\over{2}}\right)^2 \cdot
  \left({{\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)^2}
  \over{\left({ v_X}+{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2}}+1\right)}}
\\
\\
\frac {\partial F_{Y,V_{VL},k}}{\partial v_X} &= 
{{\cos \delta_H \cdot k_{\alpha,VL} \cdot 
\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)}
\over{
\left({v_X}-{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2\cdot
\left({{\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)^2}
     \over{\left({v_X}-{{{b_V}\cdot{\dot\Psi}}\over{2}}\right)^2}}
 +1\right)}}
\\
\\
\frac {\partial F_{Y,V_{VR},k}}{\partial v_X} &= 
{{\cos \delta_H \cdot k_{\alpha,VR} \cdot 
\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)}
\over{
\left({v_X}+{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2\cdot
\left({{\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)^2}
     \over{\left({v_X}+{{{b_V}\cdot{\dot\Psi}}\over{2}}\right)^2}}
 +1\right)}}
\\
\\
\frac {\partial F_{Y,V_{HL},k}}{\partial v_X} &= 
{{k_{\alpha,HL} \cdot \left(
{v_Y} - { l_H} \cdot { \dot \Psi}\right)}
\over
{ \left({ v_X}  -{{{ b_H}\cdot{\dot \Psi}}\over{2}}\right)^2 \cdot
  \left({{\left({v_Y}-{l_H}\cdot{\dot \Psi}\right)^2}
  \over{\left({ v_X}-{{{b_H}\cdot{\dot \Psi}}\over{2}}\right)^2}}+1\right)}}
\\
\\
\frac {\partial F_{Y,V_{HR},k}}{\partial v_X} &= 
{{k_{\alpha,HR} \cdot \left(
{v_Y} - { l_H} \cdot { \dot \Psi}\right)}
\over
{ \left({ v_X}  +{{{ b_H}\cdot{\dot \Psi}}\over{2}}\right)^2 \cdot
  \left({{\left({v_Y}-{l_H}\cdot{\dot \Psi}\right)^2}
  \over{\left({ v_X}+{{{b_H}\cdot{\dot \Psi}}\over{2}}\right)^2}}+1\right)}}

\end{aligned}
$$

 Derivation $\partial v_Y$

$$
\begin{aligned}
\frac {\partial F_{X,V_{VL},k}}{\partial v_Y} &= 
{{\sin \delta_H \cdot k_{\alpha,VL} }
\over
{ \left({ v_X}  -{{{ b_V}\cdot{\dot \Psi}}\over{2}}\right) \cdot
  \left({{\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)^2}
  \over{\left({ v_X}-{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2}}+1\right)}}
\\
\\
\frac {\partial F_{X,V_{VR},k}}{\partial v_Y} &= 
{{\sin \delta_H \cdot k_{\alpha,VR} }
\over
{ \left({ v_X}  +{{{ b_V}\cdot{\dot \Psi}}\over{2}}\right) \cdot
  \left({{\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)^2}
  \over{\left({ v_X}+{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2}}+1\right)}}
\\
\\
\frac {\partial F_{Y,V_{VL},k}}{\partial v_Y} &= 
{-{\cos \delta_H \cdot k_{\alpha,VL}}
\over{
\left({v_X}-{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2\cdot
\left({{\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)^2}
     \over{\left({v_X}-{{{b_V}\cdot{\dot\Psi}}\over{2}}\right)^2}}
 +1\right)}}
\\
\\
\frac {\partial F_{Y,V_{VR},k}}{\partial v_Y} &= 
{-{\cos \delta_H \cdot k_{\alpha,VR} }
\over{
\left({v_X}+{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2\cdot
\left({{\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)^2}
     \over{\left({v_X}+{{{b_V}\cdot{\dot\Psi}}\over{2}}\right)^2}}
 +1\right)}}
\\
\\
\frac {\partial F_{Y,V_{HL},k}}{\partial v_Y} &= 
{-{k_{\alpha,HL} }
\over
{ \left({ v_X}  -{{{ b_H}\cdot{\dot \Psi}}\over{2}}\right) \cdot
  \left({{\left({v_Y}-{l_H}\cdot{\dot \Psi}\right)^2}
  \over{\left({ v_X}-{{{b_H}\cdot{\dot \Psi}}\over{2}}\right)^2}}+1\right)}}
\\
\\
\frac {\partial F_{Y,V_{HR},k}}{\partial v_Y} &= 
{-{k_{\alpha,HR} }
\over
{ \left({ v_X}  +{{{ b_H}\cdot{\dot \Psi}}\over{2}}\right) \cdot
  \left({{\left({v_Y}-{l_H}\cdot{\dot \Psi}\right)^2}
  \over{\left({ v_X}+{{{b_H}\cdot{\dot \Psi}}\over{2}}\right)^2}}+1\right)}}
\end{aligned}
$$

Derivation $\partial \dot \Psi$

$$
\begin{aligned}
\frac {\partial F_{X,V_{VL},k}}{\partial \dot \Psi} &= 
{{\sin \delta_H \cdot k_{\alpha,VL} \cdot 
\left({{{b_V}\cdot\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)}
      \over{2\cdot\left({v_X}-{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2}}
     +{{{l_V}} \over {{v_X}-{{{b_V}\cdot{\dot \Psi}}\over{2}}}}
\right)}
\over
{{{\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)^2}
 \over
 {\left({v_X}-{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2}}
 +1}
}
\\
\\
\frac {\partial F_{X,V_{VR},k}}{\partial \dot \Psi} &= 
{{\sin \delta_H \cdot k_{\alpha,VR} \cdot 
\left(-{{{b_V}\cdot\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)}
      \over{2\cdot\left({v_X}+{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2}}
     +{{{l_V}} \over {{v_X}+{{{b_V}\cdot{\dot \Psi}}\over{2}}}}
\right)}
\over
{{{\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)^2}
 \over
 {\left({v_X}+{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2}}
 +1}
}
\\
\\
\frac {\partial F_{Y,V_{VL},k}}{\partial \dot \Psi} &= 
{{-\cos \delta_H \cdot k_{\alpha,VL} \cdot 
\left({{{b_V}\cdot\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)}
      \over{2\cdot\left({v_X}-{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2}}
     +{{{l_V}} \over {{v_X}-{{{b_V}\cdot{\dot \Psi}}\over{2}}}}
\right)}
\over
{{{\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)^2}
 \over
 {\left({v_X}-{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2}}
 +1}
}
\\
\\
\frac {\partial F_{Y,V_{VR},k}}{\partial \dot \Psi} &= 
{{\cos \delta_H \cdot k_{\alpha,VR} \cdot 
\left({{{b_V}\cdot\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)}
      \over{2\cdot\left({v_X}+{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2}}
     -{{{l_V}} \over {{v_X}+{{{b_V}\cdot{\dot \Psi}}\over{2}}}}
\right)}
\over
{{{\left({v_Y}+{l_V}\cdot{\dot \Psi}\right)^2}
 \over
 {\left({v_X}+{{{b_V}\cdot{\dot \Psi}}\over{2}}\right)^2}}
 +1}
}
\\
\\
\frac {\partial F_{Y,V_{HL},k}}{\partial \dot \Psi} &= 
{{k_{\alpha,HL} \cdot 
\left(-{{{b_H}\cdot\left({v_Y}-{l_H}\cdot{\dot \Psi}\right)}
      \over{2\cdot\left({v_X}-{{{b_H}\cdot{\dot \Psi}}\over{2}}\right)^2}}
     +{{{l_H}} \over {{v_X}-{{{b_H}\cdot{\dot \Psi}}\over{2}}}}
\right)}
\over
{{{\left({v_Y}-{l_H}\cdot{\dot \Psi}\right)^2}
 \over
 {\left({v_X}-{{{b_H}\cdot{\dot \Psi}}\over{2}}\right)^2}}
 +1}
}
\\
\\
\frac {\partial F_{Y,V_{HR},k}}{\partial \dot \Psi} &= 
{{k_{\alpha,HR} \cdot 
\left({{{b_H}\cdot\left({v_Y}-{l_H}\cdot{\dot \Psi}\right)}
      \over{2\cdot\left({v_X}+{{{b_H}\cdot{\dot \Psi}}\over{2}}\right)^2}}
     +{{{l_H}} \over {{v_X}+{{{b_H}\cdot{\dot \Psi}}\over{2}}}}
\right)}
\over
{{{\left({v_Y}-{l_H}\cdot{\dot \Psi}\right)^2}
 \over
 {\left({v_X}+{{{b_H}\cdot{\dot \Psi}}\over{2}}\right)^2}}
 +1}
}
\end{aligned}
$$

Stochastic input, as described $W_k = I_{3x3}$ and $V_k = I_{7x7}$

------------------------------------------------------
