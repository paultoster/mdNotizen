# Nonlienar Two Track Model Dynamic Horizontal Model

## Dynamic Body Equations Horizontal Two Track Model

### acceleration description in general

In inertia system we have translational and rotational acceleration
equation 15

$$
\begin{split}
    a_{0K,0} &= \frac{d}{dt} v_{0K,0}\\
    \alpha_{0K,0} &= \frac{d}{dt} \omega_{0K,0}
\end{split}

$$

$$
\begin{split}
    a_{0K,B} &= A^T_{0B}\cdot a_{0K,0} = A^T_{0B}\cdot [\frac{d}{dt}(A_{0B}\cdot v_{0K,B})] \\
    &= A^T_{0B}\cdot[\dot{A}_{0B}\cdot v_{0K,B} + A_{0B}\cdot \dot{v}_{0K,B}]
\end{split}
$$

$$
\begin{split}
    A^T_{0B}\cdot A_{0B} &= E\\
    \dot{A}_{0B}\cdot v_{0K,B} &= \dot{A}_{0B}\cdot A^T_{0B}\cdot A_{0B}\cdot v_{0K,B}= \omega_{0B,0} \times v_{0K,0}\\
    A^T_{0B}\cdot (\omega_{0B,0} \times v_{BK,0}) &= \omega_{0B,B} \times v_{0K,B}
\end{split}
$$

$$
a_{0K,B} = 
    \omega_{0B,B} \times v_{0K,B} + \dot{v}_{0K,B}
$$

From Equation equ07 we can derive
equation18

$$
\dot{v}_{0K,B} = \dot{v}_{0B,B}+\dot{\omega}_{0B,B} \times r_{BK,B} + \omega_{0B,B}\times \dot{r}_{BK,B} + \ddot{r}_{BK,B}
$$

For the framework (body) we get for translational a

$$
\begin{split}
 a_{0K,B} &= \dot{v}_{0B,B} +
 \dot{\omega}_{0B,B} \times r_{BK,B} + 
\omega_{0B,B}\times \dot{r}_{BK,B} + 
\ddot{r}_{BK,B} +
 \omega_{0B,B} \times v_{0K,B}\\
 a_{0B,B} &= \dot{v}_{0B,B} +\omega_{0B,B} \times v_{0B,B}
\end{split}
$$

Accordingly we get for rotaional acceleration from equa15
equation20

$$
\begin{split}
    \alpha_{0K,B} &= \omega_{0B,B} \times \omega_{0K,B} +  \dot{\omega}_{0K,B}\\
    \dot{\omega}_{0K,B} &= \dot{\omega}_{0B,B} + \dot{\omega}_{BK,B}\\
    \alpha_{0K,B} &= \omega_{0B,B} \times \omega_{0K,B} + \dot{\omega}_{0B,B} + \dot{\omega}_{BK,B}
\end{split}
$$

And for B 
equation21

$$
\alpha_{0B,B} = \dot{\omega}_{0B,B}
$$

### dynamic equations in general

The Approach of Jourdain and D'Alembert is in inertia coordinates for
translational velocity and body coordinates for rotaional velocity
(better constant description of moment of inertia)
equation22

$$
M(y)\cdot \dot{z} = q(y,z)
$$

equation23

$$
\begin{split}
 M(y) &= \sum_{k=1}^{n} \Biggl\{\frac{\partial v_{0k,0}}{\partial z}^T\cdot m_k \cdot \frac{\partial v_{0k,0}}{\partial z}+\frac{\partial \omega_{0k,k}}{\partial z}^T\cdot T_{Sk,k} \cdot \frac{\partial \omega_{0k,k}}{\partial z}\Biggr\}\\
 q(y,z) &= \sum_{k=1}^{n} \Biggl\{ \frac{\partial v_{0k,0}}{\partial z}^T\cdot [F^e_{k,0}-m_k \cdot a^R_{0k,0} ] + \frac{\partial \omega_{0k,k}}{\partial z}^T \cdot [T^e_{Sk,k}-T_{Sk,k}\cdot \alpha^R_{0k,k}-\omega_{0k,k}\times T_{Sk,k}\cdot \omega_{0k,k}]\Biggr\}
\end{split}
$$

with additional transformation of translational velocity with
$E=A^T_{B0}\cdot A_{B0}$

equation24:

$$
\begin{split}
M(y) &= \sum_{k=1}^{n} \Biggl\{\frac{\partial v_{0k,k}}{\partial z}^T\cdot m_k \cdot \frac{\partial v_{0k,k}}{\partial z}+\frac{\partial \omega_{0k,k}}{\partial z}^T\cdot T_{Sk,k} \cdot \frac{\partial \omega_{0k,k}}{\partial z}\Biggr\}\\
q(y,z) &= \sum_{k=1}^{n} \Biggl\{ \frac{\partial v_{0k,k}}{\partial z}^T\cdot [F^e_{k,k}-m_k \cdot a^R_{0k,k} ] + \frac{\partial \omega_{0k,k}}{\partial z}^T \cdot [T^e_{Sk,k}-T_{Sk,k}\cdot \alpha^R_{0k,k}-\omega_{0k,k}\times T_{Sk,k}\cdot \omega_{0k,k}]\Biggr\}
\end{split}
$$

equation25:

The partial derivation of velocty is 

$$
\begin{split}
    \dot{v}_{0k,k} &= \frac{\partial v_{0k,k}(y,z)}{\partial z} \cdot \dot{z}+ \frac{\partial v_{0k,k}(y,z)}{\partial y} \cdot \dot{y}\\
    a^R_{0k,k} &= \frac{\partial v_{0k,k}(y,z)}{\partial y} \cdot \dot{y} = \frac{\partial v_{0k,k}(y,z)}{\partial y} \cdot K(y)\cdot z\\
    \dot{\omega}_{0k,k} &= \frac{\partial \omega_{0k,k}(y,z)}{\partial z} \cdot \dot{z}+ \frac{\partial \omega_{0k,k}(y,z)}{\partial y} \cdot \dot{y}\\
    \alpha^R_{0k,k} &= \frac{\partial \omega_{0k,k}(y,z)}{\partial y} \cdot \dot{y} = \frac{\partial \omega_{0k,k}(y,z)}{\partial y} \cdot K(y)\cdot z
\end{split}
$$

$a^R_{0k,k}$ and $\alpha^R_{0k,k}$ are so called rest acceleration.

### dynamic equation horizontal model

Because of one mass (total mass m) the coordinate system of the body can
be set into the center of gravity (no movement of COG on the body) see
 [\[fig:2\]](#fig:2){reference-type="ref" reference="fig:2"}

[\[fig:2\]]{#fig:2 label="fig:2"}
![image](HorizontalModell2.eps){width="1.0\\linewidth"}

Based on equation [\[eq:22\]](#eq:22){reference-type="ref"
reference="eq:22"} and [\[eq:24\]](#eq:24){reference-type="ref"
reference="eq:24"} we can write for the horizontal model:\
equation26:

$$
z_F = 
\begin{bmatrix}   
v^x_{0B,B} \\ v^y_{0B,B} \\ \omega^z_{0B,B}
\end{bmatrix}
=
\begin{bmatrix}   
z_{F1} \\ z_{F2} \\ z_{F3}
\end{bmatrix}$$ $$\label{eq:27}
\begin{split}
    v_{0B,B} &= 
    \begin{bmatrix}   
    v^x_{0B,B} \\ v^y_{0B,B} \\ 0
    \end{bmatrix}\\
    \omega_{0B,B} &= 
    \begin{bmatrix}   
    0 \\ 0 \\ \omega^z_{0B,B}
    \end{bmatrix}
\end{split}$$ $$\label{eq:28}
\begin{split}
\frac{\partial v_{0B,B}}{\partial z_{F1}} &=  \begin{bmatrix}1 \\ 0 \\ 0 \end{bmatrix}, \frac{\partial v_{0B,B}}{\partial z_{F2}} =  \begin{bmatrix}0 \\ 1 \\ 0 \end{bmatrix},
\frac{\partial v_{0B,B}}{\partial z_{F3}} =  \begin{bmatrix}0 \\ 0 \\ 0 \end{bmatrix}\\
\frac{\partial \omega_{0B,B}}{\partial z_{F1}} &= \begin{bmatrix}0 \\ 0 \\ 0 \end{bmatrix},
\frac{\partial \omega_{0B,B}}{\partial z_{F2}} = \begin{bmatrix}0 \\ 0 \\ 0 \end{bmatrix},
\frac{\partial \omega_{0B,B}}{\partial z_{F3}} = \begin{bmatrix}0 \\ 0 \\ 1 \end{bmatrix}
\end{split}
$$

\\
From [\[eq:24\]](#eq:24){reference-type="ref" reference="eq:24"} with
[\[eq:28\]](#eq:28){reference-type="ref" reference="eq:28"} the mass
matrix $M(y)$ is:
equation29:

$$
M(y) = 
\begin{bmatrix}
m & 0 & 0 \\
0 & m & 0 \\
0 & 0 & \Theta_z
\end{bmatrix}$$\
\
The forces $F^e_{k,k}$ can be written with
[\[fig:2\]](#fig:2){reference-type="ref" reference="fig:2"} (wh =>
wheel) $$\label{eq:30}
F^e = 
\begin{bmatrix}
F_{Fx}-F^x_{AirRes,B} \\
F_{Fy} \\
0
\end{bmatrix}$$\

equation31:

$$

\begin{split}
F_{Fx} &= F^x_{whfl,B}+F^x_{whfr,B}+F^x_{whrl,B}+F^x_{whrr,B} \\
F_{Fy} &= F^y_{whfl,B}+F^y_{whfr,B}+F^y_{whrl,B}+F^y_{whrr,B}
\end{split}$$\
The air resistance is described by $$\label{eq:31a}
\begin{split}
F^x_{AirRes,B} &= C^{x}_w \cdot (v^x_{0B,B})^2 \\
C^{x}_w &= \frac{1}{2}\cdot c^x_w \cdot A^x \cdot \rho_{air}
\end{split}
$$

To get the rest acceleration we can compare
[\[eq:19\]](#eq:19){reference-type="ref" reference="eq:19"} with
[\[eq:25\]](#eq:25){reference-type="ref" reference="eq:25"}
equation32:

$$
\begin{split}
\frac{\partial v_{0B,B}(y,z)}{\partial z} \cdot \dot{z} &= \dot{v}_{0B,B}\\
a^R_{0B,B}  = \frac{\partial v_{0B,B}(y,z)}{\partial y} \cdot \dot{y} &= \omega_{0B,B} \times v_{0B,B} = \begin{bmatrix} -\omega^z_{0B}\cdot v^y_{0B}\\\omega^z_{0B}\cdot v^x_{0B} \\0 \end{bmatrix}
\end{split}
$$

The torques $T^e_{Sk,k}$ operate on COG can be written with
[\[fig:2\]](#fig:2){reference-type="ref" reference="fig:2"} (wh =>
wheel) 
equation33:
$$
    T^e = \begin{bmatrix}
          0 \\
          0 \\
          T_{Tz} + T_{Fx} + T_{Fy}
    \end{bmatrix}\\
$$

equation34:

$$
\begin{split}
T_{Tz} &= T^z_{whfl,B}+T^z_{whfr,B}+T^z_{whrl,B}+T^z_{whrr,B}\\
T_{Fx} &= -F^x_{whfl,B}\cdot b_{fl} +F^x_{whfr,B}\cdot b_{fr}-F^x_{whrl,B}\cdot b_{rl}+F^x_{whrr,B}\cdot b_{rr}\\
T_{Fy} &= (F^y_{whfl,B}+F^y_{whfr,B})\cdot l_{f}-(F^y_{whrl,B}+F^y_{whrr,B})\cdot l_{r}
\end{split}
$$

To get the rest rotational acceleration we can compare
[\[eq:21\]](#eq:21){reference-type="ref" reference="eq:21"} with
[\[eq:25\]](#eq:25){reference-type="ref" reference="eq:25"}
$$\label{eq:35}
\begin{split}
\alpha^R_{0k,k} &= \begin{bmatrix}0\\0\\0 \end{bmatrix}
\end{split}$$\
\
The gyroscopic movement
$\omega_{0k,k}\times T_{Sk,k}\cdot \omega_{0k,k}$ is

$$\label{eq:36}
\omega_{0B}\times T_{SB}\cdot \omega_{0B} = 
\begin{bmatrix}
0\\0\\\omega^z_{0B} 
\end{bmatrix} \times
\begin{bmatrix}
0\\0\\ \Theta_z \cdot \omega^z_{0B} 
\end{bmatrix} = 
\begin{bmatrix}0\\0\\0\end{bmatrix}$$\
\
$q(y,z)$ can be written as $$\label{eq:37}
q(y,z) = 
\begin{bmatrix}
Q_1\\Q_2\\Q_3
\end{bmatrix} =
\begin{bmatrix}
F_{Fx}-F^x_{AirRes,B}+m\cdot\omega^z_{0B}\cdot v^y_{0B}\\F_{Fy}-m\cdot \omega^z_{0B}\cdot v^x_{0B}\\T_{Tz} + T_{Fx} + T_{Fy}
\end{bmatrix}$$\
\
Equation [\[eq:26\]](#eq:26){reference-type="ref" reference="eq:26"},
[\[eq:29\]](#eq:29){reference-type="ref" reference="eq:29"} and
[\[eq:37\]](#eq:37){reference-type="ref" reference="eq:37"} can be
written as

$$\label{eq:38}
\begin{split}
\dot{v}^x_{0B,B} 
&=\frac{1}{m} \cdot \{F_{Fx}-F^x_{AirRes,B}+m\cdot\omega^z_{0B}\cdot v^y_{0B}\}\\
\dot{v}^y_{0B,B} 
&=\frac{1}{m} \cdot \{F_{Fy}-m\cdot\omega^z_{0B}\cdot v^x_{0B}\}\\
\dot{\omega}^z_{0B,B} 
&=\frac{1}{\Theta_z} \cdot \{T_{Tz} + T_{Fx} + T_{Fy}\}
\end{split}$$ velocity and slip angle are: $$\label{eq:39}
\begin{split}
v_B &=\sqrt{(v^x_{0B,B})^2 + (v^y_{0B,B})^2 }\\
tan(\beta) &=\frac{v^y_{0B,B}}{v^x_{0B,B}}
\end{split}$$\
\
Description of variables:\
\

  states              c code name       unit       comment

  ------------------- ----------------- ---------- ----------------------------------------------------------

  $v^x_{0B,B}$        vx_0BB            m/s        horizontal velocity in x-direction body
  $v^y_{0B,B}$        vy_0BB            m/s        horizontal velocity in y-direction body
  $\omega^z_{0B,B}$   omegaz_0BB        rad/s      yaw rate body
  $\beta$             beta_veh          rad        side slip angle in center of gravity
  $v_{0B}$            v_0B              m/s        velocity
  input                                            
                      $i=fl,fr,rl,rr$              
  $F^x_{whi,B}$       Fx_whi_B          N          longitudinal force wheel in body coordinates
  $F^y_{whi,B}$       Fy_whi_B          N          lateral Force wheel in body coordinates
  $T^z_{whi,B}$       Tz_whi_B          Nm         torque around vertical axis of wheel in body coordinates
  $F^x_{AirRes,B}$    Fx_airres_B       N          air resistance
  parameter                                        
  m                   m_veh             kg         vehicle mass
  $\Theta_z$          thetaz_veh        kg m\*m    moment of inertia around vertical axis
  $c^x_w$             cx_w\_veh         \-         resistance factor
  $A^x$               Ax_veh            m\*m       projected area in x-Direction vehicle
  $\rho_{air}$        rho_air           kg/m/m/m   density air

### connection body to wheel

[\[fig:3\]]{#fig:3 label="fig:3"}
![image](WheelModell.eps){width="1.0\\linewidth"}

#### velocity transformation body to wheel in wheel coordinates

velocties in body coordinates at the wheels are: $i=f,r; j=l,r$
$$\label{eq:50}
\begin{split}
v_{whij,B} &=v_{0B} + \omega_{0B} \times r_{COGwhij,B}\\
\begin{bmatrix}v^x_{whij,B}\\v^y_{whij,B}\\0\end{bmatrix} &= 
\begin{bmatrix}v^x_{0B}-\omega^z_{0B}\cdot r^y_{COGwhij,B}\\v^y_{0B}+\omega^z_{0B}\cdot r^x_{COGwhij,B}\\0\end{bmatrix}\\
A^B_{whij} &= 
\begin{bmatrix} 1&0&-r^y_{COGwhij,B}\\
                 0&1&r^x_{COGwhij,B}
\end{bmatrix}\\
\begin{bmatrix}v^x_{whij,B}\\v^y_{whij,B}\end{bmatrix} &= 
A^B_{whij} \cdot \begin{bmatrix}v^x_{0B,B}\\v^y_{0B,B}\\\omega^z_{0b,B}\end{bmatrix}
\\
\\
r_{COGwhfl,B} &= \begin{bmatrix}l_{f}\\b_{fl}\\0\end{bmatrix}\\
r_{COGwhfr,B} &= \begin{bmatrix}l_{f}\\-b_{fr}\\0\end{bmatrix}\\
r_{COGwhrl,B} &= \begin{bmatrix}-l_{r}\\b_{rl}\\0\end{bmatrix}\\
r_{COGwhrr,B} &= \begin{bmatrix}-l_{r}\\-b_{rr}\\0\end{bmatrix}
\end{split}$$\
\
velocties in wheel coordinates are: $i=f,r; j=l,r$

$$\label{eq:51}
\begin{split}
\begin{bmatrix}v^L_{whij}\\v^S_{whij}\end{bmatrix} &= 
\begin{bmatrix}\cos(\delta_{i}) & \sin(\delta_{i}) \\-\sin(\delta_{i}) & \cos(\delta_{i})\end{bmatrix}
\cdot \begin{bmatrix}v^x_{whij,B}\\v^y_{whij,B}\end{bmatrix}\\
A^\delta_{whij} &= \begin{bmatrix}\cos(\delta_{i}) & \sin(\delta_{i}) \\-\sin(\delta_{i}) & \cos(\delta_{i})\end{bmatrix}\\
\begin{bmatrix}v^L_{whij}\\v^S_{whij}\end{bmatrix} &= 
A^\delta_{whij} \cdot \begin{bmatrix}v^x_{whij,B}\\v^y_{whij,B}\end{bmatrix}\\
\end{split}$$\
With merging [\[eq:50\]](#eq:50){reference-type="ref" reference="eq:50"}
and [\[eq:51\]](#eq:51){reference-type="ref" reference="eq:51"}:\
$$\label{eq:51a}
\begin{split}
A_{whij} &= A^\delta_{whij} \cdot A^B_{whij}\\
A_{whij} &= \begin{bmatrix}
\cos(\delta_{i}) & \sin(\delta_{i}) &  \left(-\cos(\delta_{i})\cdot r^y_{COGwhij,B}+sin(\delta_{i})\cdot r^x_{COGwhij,B}\right)\\
-\sin(\delta_{i}) & \cos(\delta_{i}) & \left(sin(\delta_{i})\cdot r^y_{COGwhij,B}+\cos(\delta_{i})\cdot r^x_{COGwhij,B}\right)
\end{bmatrix}\\
\begin{bmatrix}v^L_{whij}\\v^S_{whij}\end{bmatrix} &= 
A_{whij} \cdot \begin{bmatrix}v^x_{0B,B}\\v^y_{0B,B}\\\omega^z_{0b,B}\end{bmatrix}
\end{split}$$\
The partial derivations are:\
$$\label{eq:51b}
\begin{split}
\frac{ \partial v^L_{whij} }{ \partial v^x_{0B,B} } &= \cos(\delta_{i})\\
\frac{ \partial v^S_{whij} }{ \partial v^x_{0B,B} } &= -\sin(\delta_{i})\\
\frac{ \partial v^L_{whij} }{ \partial v^y_{0B,B} } &= \sin(\delta_{i})\\
\frac{ \partial v^S_{whij} }{ \partial v^y_{0B,B} } &= \cos(\delta_{i})\\
\frac{ \partial v^L_{whij} }{ \partial \omega^z_{0b,B} } &= -\cos(\delta_{i})\cdot r^y_{COGwhij,B}+sin(\delta_{i})\cdot r^x_{COGwhij,B}\\
\frac{ \partial v^S_{whij} }{ \partial \omega^z_{0b,B} } &= sin(\delta_{i})\cdot r^y_{COGwhij,B}+\cos(\delta_{i})\cdot r^x_{COGwhij,B}
\end{split}$$

Description of variables:\
\

  output            c code name        unit   comment

  ----------------- ------------------ ------ --------------------------------------------------

                    $ij=fl,fr,rl,rr$          

  $v^x_{whij,B}$    vx_whijB           m/s    velocity at wheel in body coordinates x-dir
  $v^y_{whij,B}$    vy_whijB           m/s    velocity at wheel in body coordinates y-dir
  $v^L_{whij}$      vL_whij            m/s    wheel velocity longitudinal in rolling direction
  $v^S_{whij}$      vS_whij            m/s    wheel velocity lateral in side slip direction
  input                                       
  $r_{COGwhij,B}$   r_COGwhij          m      position vector from COG to ij-wheel
  $\delta_{i}$      delta_whi          rad    steer angle at wheel front or rear

#### force transformation from wheel coordinates into body coordinates

forces in body coordinates are: $i=f,r; j=l,r$

$$\label{eq:52}
\begin{bmatrix}F^x_{whij,B}\\F^y_{whij,B}\\T^z_{whij,B}\end{bmatrix} = 
\begin{bmatrix}\cos(\delta_{i}) & -\sin(\delta_{i}) & 0 \\ \sin(\delta_{i}) & \cos(\delta_{i}) & 0 \\ 0 & 0 & 1\end{bmatrix}
\cdot \begin{bmatrix}F^x_{whij,wh}\\F^y_{whij,wh}\\T^z_{whij,wh}\end{bmatrix}$$\
$$\label{eq:52a}
\begin{split}
A_{whij} &= 
\begin{bmatrix}\cos(\delta_{i}) & -\sin(\delta_{i}) & 0 \\ \sin(\delta_{i}) & \cos(\delta_{i}) & 0 \\ 0 & 0 & 1\end{bmatrix}\\
\begin{bmatrix}F^x_{whij,B}\\F^y_{whij,B}\\T^z_{whij,B}\end{bmatrix} &= 
A_{whij} \cdot \begin{bmatrix}F^x_{whij,wh}\\F^y_{whij,wh}\\T^z_{whij,wh}\end{bmatrix}
\end{split}$$\
\
Description of variables:\
\

  output            c code name        unit   comment

  ----------------- ------------------ ------ ----------------------------------------------

                    $ij=fl,fr,rl,rr$          

  $F^x_{whij,B}$    Fx_whij_B          N      wheel force x-dir in body coordinates
  $F^y_{whij,B}$    Fy_whij_B          N      wheel force y-dir in body coordinates
  $T^z_{whij,B}$    Mz_whij_B          Nm     wheel torque z-dir
  input                                       
  $F^x_{whij,wh}$   Fy_whij_wh         N      tyre forces longitudinal on wheel
  $F^y_{whij,wh}$   Fx_whij_wh         N      tyre forces from Slide slip lateral on wheel
  $T^z_{whij,wh}$   Tz_whij_wh         Nm     tyre self aligning torque

#### wheel vertical force

For calculating the tyre forces the vertical forces on the tyre are
needed. They are not based on deflection and spring calculation, but
calculated from gravity, longitudibnal and lateral acceleration

[\[fig:4\]]{#fig:4 label="fig:4"}
![image](VerticalForces.eps){width="1.0\\linewidth"}

Only with gravity we can calculate by torque around rear axle / front
axle $$\begin{split}
F^z_{whvl}+F^z_{whvr} &= m \cdot g^z \cdot \frac{l_r}{(l_f+l_r)}\\
F^z_{whrl}+F^z_{whrr} &= m \cdot g^z \cdot \frac{l_f}{(l_f+l_r)}
\end{split}$$ $$\label{eq:54}
\begin{split}
F^z_{whfl} &= m \cdot g^z \cdot \frac{l_r}{(l_f+l_r)} \cdot \frac{b_{fr}}{(b_{fl}+b_{fr})}\\
F^z_{whfr} &= m \cdot g^z \cdot \frac{l_r}{(l_f+l_r)} \cdot \frac{b_{fl}}{(b_{fl}+b_{fr})}\\
F^z_{whrl} &= m \cdot g^z \cdot \frac{l_f}{(l_f+l_r)} \cdot \frac{b_{rr}}{(b_{rl}+b_{rr})}\\
F^z_{whrr} &= m \cdot g^z \cdot \frac{l_f}{(l_f+l_r)} \cdot \frac{b_{rl}}{(b_{rl}+b_{rr})}\\
\sum_{ij=fl,fr,rl,rr} F^z_{whij} &= m \cdot g^z
\end{split}$$

Together with acceleration we reduce load on front axle and increase on
rear axle $$\begin{split}
F^z_{whvl}+F^z_{whvr} &= m\cdot \frac{g^z \cdot l_r - a^x_{0B,B} \cdot h_{COG}}{(l_f+l_r)} \\
F^z_{whrl}+F^z_{whrr} &= m\cdot \frac{g^z \cdot l_f + a^x_{0B,B} \cdot h_{COG}}{(l_f+l_r)} 
\end{split}$$ $$\label{eq:55}
\begin{split}
F^z_{whfl} &= m\cdot \frac{g^z \cdot l_r - a^x_{0B,B} \cdot h_{COG}}{(l_f+l_r)} \cdot \frac{b_{fr}}{(b_{fl}+b_{fr})}\\
F^z_{whfr} &= m\cdot \frac{g^z \cdot l_r - a^x_{0B,B} \cdot h_{COG}}{(l_f+l_r)} \cdot \frac{b_{fl}}{(b_{fl}+b_{fr})}\\
F^z_{whrl} &=  m\cdot \frac{g^z \cdot l_f + a^x_{0B,B} \cdot h_{COG}}{(l_f+l_r)} \cdot \frac{b_{rr}}{(b_{rl}+b_{rr})}\\
F^z_{whrr} &=  m\cdot \frac{g^z \cdot l_f + a^x_{0B,B} \cdot h_{COG}}{(l_f+l_r)} \cdot \frac{b_{rl}}{(b_{rl}+b_{rr})}
\end{split}$$

When only lateral acceleration is acting the assumpion can be done:
$$\begin{split}
F^z_{ay,whfl}\cdot (b_{fl}+b_{fr})+F^z_{ay,whrl} \cdot (b_{rl}+b_{rr}) &= -m\cdot a^y_{0B,B}\cdot h_{COG}\\
F^z_{ay,whfr}\cdot (b_{fl}+b_{fr})+F^z_{ay,whrr} \cdot (b_{rl}+b_{rr}) &= +m\cdot a^y_{0B,B}\cdot h_{COG} \\
F^z_{ay,whfl}\cdot l_f &= F^z_{ay,whrl}\cdot l_r \\
F^z_{ay,whfr}\cdot l_f &= F^z_{ay,whrr}\cdot l_r 
\end{split}$$ This leads to $$\label{eq:56}
\begin{split}
F^z_{ay,whfl} &= -m\cdot a^y_{0B,B} \cdot h_{COG} \cdot \frac{l_{r}}{(b_{fl}+b_{fr})\cdot l_r+(b_{rl}+b_{rr})\cdot l_f}\\
F^z_{ay,whfr} &= +m\cdot a^y_{0B,B} \cdot h_{COG} \cdot \frac{l_{r}}{(b_{fl}+b_{fr})\cdot l_r+(b_{rl}+b_{rr})\cdot l_f}\\
F^z_{ay,whrl} &= -m\cdot a^y_{0B,B} \cdot h_{COG} \cdot \frac{l_{f}}{(b_{fl}+b_{fr})\cdot l_r+(b_{rl}+b_{rr})\cdot l_f}\\
F^z_{ay,whrr} &= +m\cdot a^y_{0B,B} \cdot h_{COG} \cdot \frac{l_{f}}{(b_{fl}+b_{fr})\cdot l_r+(b_{rl}+b_{rr})\cdot l_f}\\
\sum_{ij=fl,fr,rl,rr} F^z_{ay,whij} &= 0
\end{split}$$

The portion of lateral acceleration can be added to the first (gravity
and longitudinal) $$\label{eq:57}
\begin{split}
F^z_{whfl} &= m\cdot \Biggl\{ \frac{g^z \cdot l_r - a^x_{0B,B} \cdot h_{COG}}{(l_f+l_r)} \cdot \frac{b_{fr}}{(b_{fl}+b_{fr})} -\frac{ a^y_{0B,B} \cdot h_{COG} \cdot l_{r}}{(b_{fl}+b_{fr})\cdot l_r+(b_{rl}+b_{rr})\cdot l_f} \Biggr\}\\
F^z_{whfr} &= m\cdot  \Biggl\{\frac{g^z \cdot l_r - a^x_{0B,B} \cdot h_{COG}}{(l_f+l_r)} \cdot \frac{b_{fl}}{(b_{fl}+b_{fr})} +\frac{ a^y_{0B,B} \cdot h_{COG} \cdot l_{r}}{(b_{fl}+b_{fr})\cdot l_r+(b_{rl}+b_{rr})\cdot l_f} \Biggr\}\\
F^z_{whrl} &=  m\cdot  \Biggl\{\frac{g^z \cdot l_f + a^x_{0B,B} \cdot h_{COG}}{(l_f+l_r)} \cdot \frac{b_{rr}}{(b_{rl}+b_{rr})} -\frac{ a^y_{0B,B} \cdot h_{COG} \cdot l_{f}}{(b_{fl}+b_{fr})\cdot l_r+(b_{rl}+b_{rr})\cdot l_f} \Biggr\}\\
F^z_{whrr} &=  m\cdot  \Biggl\{\frac{g^z \cdot l_f + a^x_{0B,B} \cdot h_{COG}}{(l_f+l_r)} \cdot \frac{b_{rl}}{(b_{rl}+b_{rr})} +\frac{ a^y_{0B,B} \cdot h_{COG} \cdot l_{f}}{(b_{fl}+b_{fr})\cdot l_r+(b_{rl}+b_{rr})\cdot l_f} \Biggr\}
\end{split}$$

Description of variables:\
\

  input            c code name        unit    comment

  ---------------- ------------------ ------- ----------------------------------------------

  $a^{x}_{0B,B}$   ax_0BB             m/s/s   long acceleration in Body coordinates
  $a^{y}_{0B,B}$   ay_0BB             m/s/s   lat acceleration in Body coordinates
  output                                      
                   $ij=fl,fr,rl,rr$           
  $F^{z}_{whij}$   Fz_whij            rad/s   spinning velocity wheel
  parameter                                   
  $g{^z}$          gravity            m/s/s   gravity (9.81)
  $l_{f}$          lf_veh             m       long distance vehicle from COG to front axle
  $l_{r}$          lr_veh             m       long distance vehicle from COG to rear axle
  $b_{fl}$         bfl_veh            m       lat distance from COG to front left wheel
  $b_{fr}$         bfr_veh            m       lat distance from COG to front right wheel
  $b_{rl}$         brl_veh            m       lat distance from COG to rear left wheel
  $b_{rr}$         brr_veh            m       lat distance from COG to rear right wheel
  $h_{COG}$        hcog_veh           m       height of COG from bottom

## dynamic equations wheel dynamics

### dynamic equations wheel spinning

[\[fig:3a\]]{#fig:3a label="fig:3a"}
![image](WheelPlaneModel.eps){width="1.0\\linewidth"}

$ij=fl,fr,rl,rr$ $$\label{eq:53}
\dot{\Omega}_{ij}^{wh} = \frac{1}{\Theta_{ij}^{wh}} \cdot ( T^{trans}_{ij} + T^y_{wh,ij} - T^{brake}_{ij}  )$$\
\
Description of variables:\
\

  states               c code name        unit      comment

  -------------------- ------------------ --------- -------------------------------------------

                       $ij=fl,fr,rl,rr$             

  $\Omega^{wh}_{ij}$   omega_wh_ij        rad/s     spinning velocity wheel
  input                                             
  $T^{trans}_{ij}$     Ttrans_ij          Nm        transmission torque
  $T^{brake}_{ij}$     Tbrake_ij          Nm        transmission torque
  $T^y_{whij,wh}$      Ty_whij_wh         Nm        torque acting on spinning wheel including
                                                    longitudinal force and rolling resistance
  parameter                                         
  $\Theta_{ij}^{wh}$   theta_wh_ij        kg m\*m   moment of inertia spinning wheel

\
\

### tyre forces and torques

[\[fig:5\]]{#fig:5 label="fig:5"}
![image](TyreForces.eps){width="1.0\\linewidth"}

Based on an approach from Prof Rill (see R.T. Uil, master thesis \"Tyre
models for steady-state vehicle handling analysis\"). The description is
for one wheel/tyre and is not notified by index $ij=fl,fr,rl,rr$\
\
The tyre forces acting on wheel axle can be written in wheel coordinates
as: $$\label{eq:57a}
\begin{split}
F_{whij,wh} &= F^L_{tyre,ij}\cdot e^x_{whij} + F^S_{tyre,ij}\cdot e^y_{whij}+F^z_{wh,ij}\cdot e^z_{whij}\\
F_{whij,wh} &= \begin{bmatrix}
               F^x_{whij,wh}\\F^y_{whij,wh}\\F^z_{whij,wh}  
               \end{bmatrix}
             = \begin{bmatrix}
               F^L_{tyre.ij}\\F^S_{tyre.ij}\\F^z_{wh.ij}    
\end{bmatrix}
\end{split}$$ Where $F^L_{tyre.ij}$ the longitudinal tyre force and
$F^S_{tyre.ij}$ the lateral tyre force is. The vertical force is just
used for tyre force calculation. It has no direct influence on the
horizontal model

The torque could be written as: $$\label{eq:57b}
\begin{split}
T_{whij,wh} &= T^R_{tyre,ij} \cdot e^y_{whij} + (T^A_{tyre,ij}+T^T_{tyre,ij})\cdot e^z_{whij} + r_{MP,ij} \times 
\begin{bmatrix}
F^L_{tyre,ij} \\
F^S_{tyre.ij} \\
0
\end{bmatrix}\\
r_{MPij,wh} &= \begin{bmatrix}
               0\\0\\-R^{dyn}_{ij}  
               \end{bmatrix}\\
T_{whij,wh} &= \begin{bmatrix}
             T^x_{whij,wh}\\T^y_{whij,wh}\\T^z_{whij,wh}    
             \end{bmatrix} =
             \begin{bmatrix}
             R^{dyn}_{ij}\cdot F^S_{tyre,ij} \\
             T^R_{tyre,ij}-R^{dyn}_{ij}\cdot F^L_{tyre,ij} \\
             T^A_{tyre,ij}+T^T_{tyre,ij}
             \end{bmatrix}
\end{split}$$\
\
$T^R_{tyre.ij}$ is the rolling resistance acting in positive spinning
direction, $T^A_{tyre.ij}$ is the align torque based on a pneumatic
trail, $T^T_{tyre.ij}$ is the turn torque (bore torque) which gives an
restistance torque according to the vertical turning ($\dot{\delta}_i$)
and $r_{MP,ij}$ is the position vector from middle wheel to contact
patch. $T^x_{wh,ij}$ has no influnce on the horizontal model,
$T^y_{wh,ij}$ is the tyre torque acting on the spinning wheel and
$T^z_{wh,ij}$ is the vertical torque acting on the horizontal model

  output                                    

  ----------------- ------------------ ---- ----------------------------------------------------------

                    $ij=fl,fr,rl,rr$        

  $F^x_{whij,wh}$   Fx_whij_wh         N    Wheel force in x-direction in wheel coordinates
  $F^y_{whij,wh}$   Fy_whij_wh         N    Wheel force in y-direction in wheel coordinates
  $F^z_{whij,wh}$   Fz_whij_wh         N    Wheel force in z-direction in wheel coordinates
  $F^L_{tyreij}$    FL_tyreij_wh       N    Tyre long force
  $F^S_{tyreij}$    FS_tyreij          N    Tyre side force
  $T^x_{whij,wh}$   Tx_whij_wh         Nm   Wheel torque around x-axis in wheel coordinates
  $T^y_{whij,wh}$   Ty_whij_wh         Nm   Wheel torque around y-axis in wheel coordinates
  $T^z_{whij,wh}$   Tz_whij_wh         Nm   Wheel torque around z-axis in wheel coordinates
  $T^R_{tyre,ij}$   TR_tyre_ij         Nm   rolling resistance acting in positive spinning direction
  $T^A_{tyre,ij}$   TA_tyre_ij         Nm   the align torque based on a pneumatic trail
  $T^T_{tyre,ij}$   TT_tyre_ij         Nm   turn torque (bore torque) which gives an
                                            restistance torque according to the vertical turning
  parameter                                 
  $R^{dyn}_{ij}$    Rdyn_ij            m    dynamic wheel radius

#### slip

The slip is defined with diff velocity between longitudinal velocity of
the wheel and its spinning velocity in contact point:
$$\Delta v^L = v^L_{wh} - R_{dyn}\cdot \Omega$$\
longitudinal and lateral slip is defined $$\label{eq:58}
\begin{split}
s^L &= \frac{-\Delta v^L}{v^L_{wh} + \vert \Delta v^L \vert}\\
s^S &= \frac{-v^S_{wh}}{v^L_{wh} + \vert \Delta v^L \vert}
\end{split}$$\
normalisied slip with a small addional velocity $v_N$ in denominator for
avoiding singularity $$\label{eq:59}
\begin{split}
s^L_{N} &= \frac{s^L}{\hat{s}^L} = \frac{-\Delta v^L}{(v^L_{wh} + \vert \Delta v^L \vert)\cdot \hat{s}^L + v_N}\\
s^S_{N} &= \frac{s^S}{\hat{s}^S} = \frac{-v^S_{wh}}{(v^L_{wh} + \vert \Delta v^L \vert)\cdot \hat{s}^S + v_N}\\
\hat{s}^L &= \frac{F^L_{Max}}{dF^L_0}\\
\hat{s}^S &= \frac{F^S_{Max}}{dF^S_0}\\
s^N &= \sqrt{(s^L_{N})^2+(s^S_{N})^2}
\end{split}$$ Where $s^N$ is the generalised slip coefficient. The
normalisation factors $\hat{s}^L$ and $\hat{s}^S$ are calculated from
the location of the maxima $s^L_{Max}$,$s^S_{Max}$, the maximum values
$F^L_{Max}$, $F^S_{Max}$ and the initial inclinations $dF^L_0$,
$dF^S_0$.

  output                                       

  ------------------- ------------------ ----- --------------------------------------------------------------------

                      $ij=fl,fr,rl,rr$         

  $\Delta v^L_{ij}$   deltavL_ij         m/s   velocity difference of spinning and long velocity in contact point
  $s^L_{ij}$          slipL_ij                 longitudinal slip tyre
  $s^S_{ij}$          slipL_ij                 side (lateral) slip tyre
  $s^L_{N,ij}$        slipLN_ij                normlized longitudinal slip tyre
  $s^S_{N,ij}$        slipSN_ij                normalized side (lateral) slip tyre
  $\hat{s}^L_{ij}$    slipLMax_ij              normalization value longitudinal
  $\hat{s}^S_{ij}$    slipSMax_ij              normalization value lateral
  $s^N_{ij}$          slipN_ij                 normalized side from lat and long

#### derivation slip

for longitudianl slip from equation
[\[eq:59\]](#eq:59){reference-type="ref" reference="eq:59"} we get:\
$$\label{eq:60}
\begin{split}
s^L &= \frac{-\Delta v^L}{v^L_{wh}+\vert \Delta v^L \vert + \frac{v_N} {\hat{s^L}}}\\
\Delta v^L &= v^L_{wh} - R_{dyn}\cdot \Omega\\
\\
v^L_{wh} \geq R_{dyn}\cdot \Omega:\\
\\
s^L &= \frac{- v^L_{wh} + R_{dyn}\cdot \Omega}{2\cdot v^L_{wh} - R_{dyn}\cdot \Omega + \frac{v_N} {\hat{s^L}}}\\
\\
\\
\frac {\partial s^L} {\partial v^L_{wh}} &= \frac{ -1.\cdot (2\cdot v^L_{wh} - R_{dyn}\cdot \Omega + \frac{v_N} {\hat{s^L}})  - 2 \cdot   
    (-v^L_{wh} + R_{dyn}\cdot \Omega) }{(2 \cdot v^L_{wh} - R_{Dyn}\cdot \Omega+\frac{v_N}{\hat{s}^L})^2}\\
\\
\frac {\partial s^L} {\partial v^L_{wh}} &= \frac{ - \frac{v_N} {\hat{s^L} } - R_{Dyn}\cdot \Omega} {(2 \cdot v^L_{wh} - R_{Dyn}\cdot \Omega+\frac{v_N}{\hat{s}^L})^2} = \frac{ - \frac{v_N} {\hat{s^L} } - R_{Dyn}\cdot \Omega} {(v^L_{wh} +\vert \Delta v^L \vert + \frac{v_N} {\hat{s^L}})^2} \\
\\
\frac {\partial s^L} {\partial \Omega} &= \frac{ R_{dyn}\cdot(2 \cdot v^L_{wh} - R_{Dyn}\cdot \Omega+\frac{v_N}{\hat{s}^L}) - (- R_{Dyn})\cdot(- v^L_{wh} + R_{dyn}\cdot \Omega) }{(2 \cdot v^L_{wh} - R_{Dyn}\cdot \Omega+\frac{v_N}{\hat{s}^L})^2}\\
\\
\frac {\partial s^L} {\partial \Omega} &= \frac{ R_{dyn}\cdot(v^L_{wh} +\frac{v_N}{\hat{s}^L})  }{(2 \cdot v^L_{wh} - R_{Dyn}\cdot \Omega+\frac{v_N}{\hat{s}^L})^2} = \frac{ R_{dyn}\cdot(v^L_{wh} +\frac{v_N}{\hat{s}^L})  }{(v^L_{wh} +\vert \Delta v^L \vert + \frac{v_N} {\hat{s^L}})^2}\\
\\
v^L_{wh} < R_{dyn}\cdot \Omega:\\
\\
s^L &= \frac{- v^L_{wh} + R_{dyn}\cdot \Omega}{R_{dyn}\cdot \Omega + \frac{v_N} {\hat{s^L}}}\\
\\
\frac {\partial s^L}{\partial v^L_{wh}} &= \frac{-1}{R_{dyn}\cdot \Omega+\frac{v_N}{\hat{s}^L}}= \frac{-1}{v^L_{wh} +\vert \Delta v^L \vert + \frac{v_N} {\hat{s^L}}}\\
\\
\frac {\partial s^L} {\partial \Omega} &= \frac{ R_{dyn}\cdot(R_{Dyn}\cdot \Omega+\frac{v_N}{\hat{s}^L}) - R_{Dyn}\cdot(- v^L_{wh} + R_{dyn}\cdot \Omega) }{(R_{Dyn}\cdot \Omega+\frac{v_N}{\hat{s}^L})^2}\\
\\
\frac {\partial s^L} {\partial \Omega} &= \frac{ R_{dyn}\cdot(v^L_{wh} +\frac{v_N}{\hat{s}^L})  }{(R_{Dyn}\cdot \Omega+\frac{v_N}{\hat{s}^L})^2} = \frac{ R_{dyn}\cdot(v^L_{wh} +\frac{v_N}{\hat{s}^L})  }{(v^L_{wh} +\vert \Delta v^L \vert + \frac{v_N} {\hat{s^L}})^2}
\end{split}$$\
for lateral slip from equation [\[eq:59\]](#eq:59){reference-type="ref"
reference="eq:59"} we get:\
$$\label{eq:61}
\begin{split}
s^S &= \frac{-v^S_{wh}} {v^L_{wh} + \vert \Delta v^L \vert + \frac{v_N}{\hat{s}^S}}\\
\\
\frac {\partial s^S} {\partial v^S_{wh}} &= \frac{ -1.}{v^L_{wh} + \vert \Delta v^L \vert + \frac{v_N}{\hat{s}^S}}\\
\\
v^L_{wh} \geq R_{dyn}\cdot \Omega:\\
\\
\Delta v^L &= v^L_{wh} - R_{dyn}\cdot \Omega\\
\\
s^S &= \frac{- v^S_{wh} }{2\cdot v^L_{wh} - R_{dyn}\cdot \Omega + \frac{v_N} {\hat{s^L}}}\\
\\
\frac {\partial s^S} {\partial \Omega} &= \frac{ -(-R_{dyn})\cdot(-v^S_{wh})} {(2 \cdot v^L_{wh} - R_{Dyn}\cdot \Omega+\frac{v_N}{\hat{s}^L})^2} = \frac{ -R_{dyn}\cdot v^S_{wh} }{(v^L_{wh} +\vert \Delta v^L \vert + \frac{v_N} {\hat{s^L}})^2}\\
\\
v^L_{wh} < R_{dyn}\cdot \Omega:\\
\\
s^S &= \frac{- v^S_{wh} }{R_{dyn}\cdot \Omega + \frac{v_N} {\hat{s^L}}}\\
\\
\frac {\partial s^S} {\partial \Omega} &= \frac{ -R_{dyn}\cdot(-v^S_{wh})} {(R_{dyn}\cdot \Omega + \frac{v_N} {\hat{s^L}})^2} = \frac{ R_{dyn}\cdot v^S_{wh} }{(v^L_{wh} +\vert \Delta v^L \vert + \frac{v_N} {\hat{s^L}})^2}\\
\end{split}$$

#### tyre forces

The longitudinal and lateral tyre force is in Prof. Rills approach based
on a generalised force curve shape

$$\label{eq:80}
F^N(s^N)=\begin{cases}
s^N_{Max}\cdot dF^N_0\cdot \frac{\sigma}{1+\sigma\cdot(\sigma+dF^N_0\cdot \frac{s^N_{Max}}{F^N_{Max}}-2.)} & \sigma=\frac{s^N}{s^N_{Max}} \mspace{60mu} 0 \leq s^N < s^N_{Max}\\
F^N_{Max}-(F^N_{Max}-F^N_{Slide})\cdot \sigma^2\cdot(3-2\cdot\sigma) & \sigma=\frac{s^N-s^N_{Max}}{s^N_{Slide}-s^N_{Max}} \mspace{18mu} s^N_{Max} \leq s^N < s^N_{Slide}  \\
F^N_{Slide} & \mspace{130mu} s^N_{Slide} \leq s^N  
\end{cases}$$

For the ditribution on longtitudinal and lateral: $$\label{eq:81}
\begin{split}
\cos(\varphi) &= \frac{s^L/\hat{s}^L}{s^N}\\
\sin(\varphi) &= \frac{s^S/\hat{s}^S}{s^N}
\end{split}$$\
\
tyre forces longitudinal and lateral $$\label{eq:82}
\begin{split}
F^L_{Tyre}&=F^N\cdot\cos(\varphi) = F^N\cdot\frac{s^L/\hat{s}^L}{s^N}\\
F^S_{Tyre}&=F^N\cdot\sin(\varphi) = F^N\cdot\frac{s^S/\hat{s}^S}{s^N}
\end{split}$$\
\
normalised Parameters $$\label{eq:83}
\begin{matrix}
dF^N_0 &= \sqrt{\left(dF^L_0\cdot\hat{s}^L\cdot\cos(\varphi)\right)^2+\left(dF^S_0\cdot\hat{s}^S\cdot\sin(\varphi)\right)^2} & \text{normalized combined force inclination}\\
s^N_{Max} &= \sqrt{\left(\frac{s^L_{Max}}{\hat{s}^L}\cdot\cos(\varphi)\right)^2+\left(\frac{s^S_{Max}}{\hat{s}^S}\cdot\sin(\varphi)\right)^2} & \text{normalized combined slip at Maximum Force}\\
F^N_{Max} &= 
\sqrt{\left(F^L_{Max}\cdot\cos(\varphi)\right)^2+\left(F^S_{Max}\cdot\sin(\varphi)\right)^2} & \text{normalized combined maximum force }\\
s^N_{Slide} &= \sqrt{\left(\frac{s^L_{Slide}}{\hat{s}^L}\cdot\cos(\varphi)\right)^2+\left(\frac{s^S_{Slide}}{\hat{s}^S}\cdot\sin(\varphi)\right)^2} & \text{normalized combined slip at full sliding}\\
F^N_{Slide} &= 
\sqrt{\left(F^L_{Slide}\cdot\cos(\varphi)\right)^2+\left(F^S_{Slide}\cdot\sin(\varphi)\right)^2} & \text{normalized combined maximum force }
\end{matrix}$$

##### wheel load dependend influence

Assuming a quadratic dependncy of wheel load ($F^z$) for the forces
($dF^L_0$,$F^L_{Max}$,$F^L_{Slide}$,$dF^S_0$,$F^S_{Max}$,$F^S_{Slide}$)
and linear dependency of slip values
($s^L_{Max}$,$s^L_{Slide}$,$s^S_{Max}$,$s^S_{Slide}$):

$$\label{eq:90}
\begin{split}
F^i_j &= a \cdot (F^z)^2 + b \cdot F^z + c\\
s^i_j &= d \cdot F^z + e
\end{split}$$\
\
With two parameters sets (I,II) for two loads and assuming
$F^i_j(F^z=0) = 0$ we get: $$\label{eq:91}
\begin{split}
a &= \frac{(F^z)_I\cdot (F^i_j)_I - (F^z)_{II}\cdot (F^i_j)_{II}}          {(F^z)_I\cdot(F^z)_{II}\cdot((F^z)_{II}-(F^z)_I)}\\
b &= \frac{((F^z)_{II})^2\cdot (F^i_j)_I - ((F^z)_{I})^2\cdot (F^i_j)_{II}}
{(F^z)_I\cdot(F^z)_{II}\cdot((F^z)_{II}-(F^z)_I)}\\
c &= 0\\
d &= \frac{(s^i_j)_{II} - (s^i_j)_{I} }{(F^z)_{II}-(F^z)_I}\\
e &= \frac{(F^z)_{II}\cdot (s^i_j)_{I} - (F^z)_{I}\cdot (s^i_j)_{II} }
          {(F^z)_{II}-(F^z)_I}
\end{split}$$

##### derivation tyre force about $s^L$ and $s^S$

derivation of $F^L_{Tyre}$ and $F^S_{Tyre}$

$$\label{eq:91b}
\begin{split}
\frac {\partial F^L_{Tyre}} {\partial s^i} &= \frac {\partial } {\partial s^i} (F^N \cdot \cos(\varphi)) = \frac {\partial } {\partial s^i} (F^N ) \cdot \cos(\varphi) + F^N  \cdot \frac {\partial } {\partial s^i} (\cos(\varphi)), i=L,S\\
\frac {\partial F^S_{Tyre}} {\partial s^i} &= \frac {\partial } {\partial s^i} (F^N \cdot \sin(\varphi)) = \frac {\partial } {\partial s^i} (F^N ) \cdot \sin(\varphi) + F^N  \cdot \frac {\partial } {\partial s^i} (\sin(\varphi)), i=L,S
\end{split}$$\
Derivation $\frac {\partial } {\partial s^i} (F^N), i=L,S$

$$\label{eq:91c}
\begin{split}
\frac {\partial } {\partial s^i} (F^N(s^N)) &= \frac {\partial } {\partial s^N} (F^N(s^N)) \cdot \frac {\partial } {\partial s^i} (s^N) = \frac {\partial } {\partial \sigma} (F^N(\sigma)) \cdot \frac {\partial } {\partial s^N} (\sigma) \cdot \frac {\partial } {\partial s^i} (s^N), i=L,S\\
\\
\frac{\partial}{\partial \sigma}F^N &=
\begin{cases}
s^N_{Max}\cdot dF^N_0\cdot \lbrack \frac{1}{1+\sigma\cdot(\sigma+dF^N_0\cdot \frac{s^N_{Max}}{F^N_{Max}}-2.)} - \frac{\sigma \cdot (2. \cdot \sigma+dF^N_0 \cdot \frac{s^N_{Max}}{F^N_{Max}}-2. )}{(1+\sigma\cdot(\sigma+dF^N_0\cdot \frac{s^N_{Max}}{F^N_{Max}}-2.)^2}\rbrack 
& \mspace{60mu} 0 \leq s^N < s^N_{Max}\\
\\
(F^N_{Max}-F^N_{Slide}) \cdot 6 \cdot \sigma \cdot (\sigma - 1) 
& \mspace{18mu} s^N_{Max} \leq s^N < s^N_{Slide}  \\
\\
0 
& \mspace{130mu} s^N_{Slide} \leq s^N  
\end{cases}
\\
\frac{\partial}{\partial s^N}\sigma &=
\begin{cases}
\frac{1}{s^N_{Max}} 
& \mspace{130mu} 0 \leq s^N < s^N_{Max}\\
\\
\frac{1}{s^N_{Slide} - s^N_{Max}} 
& \mspace{130mu} s^N_{Max} \leq s^N < s^N_{Slide}  \\
\\
0 
& \mspace{130mu} s^N_{Slide} \leq s^N  
\end{cases}
\\
\frac {\partial } {\partial s^i} s^N &= 
\frac{s^i}{(\hat{s}^i)^2 \cdot s^N}\\
\\
\frac {\partial } {\partial s^L} \cos(\varphi) &= 
\frac{1}{\hat{s}^L \cdot s^N} - \frac{(s^L)^2 }{(\hat{s}^L)^3 \cdot (s^N)^3}
= \frac{(s^N)^2 - 1 }{\hat{s}^L \cdot (s^N)^3}\\
\\
\frac {\partial } {\partial s^S} \cos(\varphi) &=
0\\
\\
\\
\frac {\partial } {\partial s^L} \sin(\varphi) &=
0\\
\\
\frac {\partial } {\partial s^S} \sin(\varphi) &= 
\frac{1}{\hat{s}^S \cdot s^N} - \frac{(s^S)^2 }{(\hat{s}^S)^3 \cdot (s^N)^3}
= \frac{(s^N)^2 - 1 }{\hat{s}^S \cdot (s^N)^3}
\end{split}$$

#### tyre torques

##### Self aligning torque

The selfaligning torque is calculated with a pneumatic trail $n$. The
pneumatic trail has been normalised by the length L of the contact area
of the tyre.

$$\label{eq:91a}
\begin{split}
T^A &= -n\cdot F^S = -n^N\cdot L \cdot F^S\\
n^N &= \frac{n}{L}
\end{split}$$

[\[fig:6\]]{#fig:6 label="fig:6"}
![image](PneumaticTrail1.png){width="1.0\\linewidth"}

$$\label{eq:92}
n^N=(\frac{n}{L})_0\cdot
\begin{cases}
(1-\frac{s^S_{A0}}{s^S_{A1}})\cdot (1-s)+ \frac{s^S_{A0}}{s^S_{A1}} \cdot \left( 1-(3-2\cdot s)\cdot s^2\right) 
& s=\frac{\vert s^S\vert}{s^S_{A0}} \mspace{55mu} \vert s^S\vert \leq s^S_{A0}\\
\\
-(1-\frac{s^S_{A0}}{s^S_{A1}})\cdot \frac{\vert s^S\vert - s^S_{A0}}{s^S_{A0}}\cdot s^2 
& s=\frac{s^S_{A1} - \vert s^S\vert}{s^S_{A1} - s^S_{A0}} \mspace{18mu} s^S_{A0} \leq \vert s^S\vert < s^S_{A1}  \\
\\
0 & \mspace{110mu} \vert s^S \vert \geq s^S_{A1}
\end{cases}$$

##### Turn torque

In particular during steering motions the angular velocity of the wheel
has a component in direction of the track normal which will cause a turn
motion. At large turn motions all particles in the contact patch are
sliding. Then, the maximum turn torque is given by $$\label{eq:93}
T^T_{Max}=R_T\cdot F^N_{Slide}$$\
\
The turn radius $R_T$ approximate 2/3 of outer radius of contact area
$R_P$. $R_P$ is approxiated by: $$\label{eq:94}
\begin{split}
R_P &= \frac{1}{2}\sqrt{B\cdot L}\\
R_T &= \frac{2}{3}\cdot R_P
\end{split}$$\
\
$L$ is estimated length of contact area and B the width

The turn slip can written as: $$\label{eq:95}
s^T=\frac{-R_T\cdot \omega^T}{R_{dyn}\cdot \vert \Omega \vert + v_N}$$\
$\omega^T$ is the steering velocity $\dot{\delta}_F$ bzw.
$\dot{\delta}_R$\
The turn torque: $$\label{eq:96}
T^T=R_T \cdot dF^N_0 \cdot s^T$$

##### rolling resistance torque

The rolling resistance torque $T^{R}$ is defined by the rolling
resistance factor $f_{roll}$ and act against the turning direction of
$\Omega$ $$\label{eq:97}
T^{R}=F^z \cdot f_{roll} \cdot R_{dyn} \cdot f_{\Omega}$$ $f_{\Omega}$
is a signum-function with linearization at zero rotational velocity
($\Omega_0$ should be small) $$\label{eq:97a}
f_{\Omega}=\begin{cases}
+1 & \Omega \leq -\Omega_0\\
-\frac{\Omega}{\Omega_0} & -\Omega_0 < \Omega < \Omega_0\\
-1 & \Omega \geq \Omega_0
\end{cases}$$

##### derivation tyre torque about $s^L$ and $s^S$

We have to build derivation for self alinging torque $T^A_{tyre,ij}$ and
turn torque $T^T_{tyre,ij}$ with $ij=fl,fr,rl,rr$ but $ij$ will now be
neglected\
$$\label{eq:97b}
\begin{split}
i=L,S\\
\\
\frac{\partial T^A_{tyre}}{\partial s^i} 
&= \frac{\partial }{\partial s^i} \cdot (-n^N \cdot L \cdot F^S_{tyre})
= -L \cdot \frac{\partial }{\partial s^i} \cdot (n^N \cdot F^S_{tyre}) 
= -L \cdot (      \frac{\partial }{\partial s^i} n^N  \cdot  F^S_{tyre} 

+ n^N                    \cdot          \frac{\partial }{\partial s^i} F^S_{tyre}
  );\\
  \\
  \frac{\partial T^T_{tyre}}{\partial s^i} 
  &= 0
  \end{split}$$

For $\frac{\partial }{\partial s^i} F^S_{tyre}$ see
[\[eq:91c\]](#eq:91c){reference-type="ref" reference="eq:91c"}. With
equation [\[eq:92\]](#eq:92){reference-type="ref" reference="eq:92"}
pneumatic trail derivation is\
$$\label{eq:97c}
\begin{split}
\frac{\partial }{\partial s^L}n^N 
&= 0\\
\frac{\partial }{\partial s^S}n^N &=
(\frac{n}{L})_0 \cdot 
\begin{cases}
\frac{\partial }{\partial s} [ (1-\frac{s^S_{A0}}{s^S_{A1}})\cdot (1-s)+ \frac{s^S_{A0}}{s^S_{A1}} \cdot \left( 1-(3-2\cdot s)\cdot s^2\right)]\cdot \frac{\partial s}{\partial s^S}  
& s=\frac{\vert s^S\vert}{s^S_{A0}} \mspace{55mu} \vert s^S\vert \leq s^S_{A0}\\
\\
\frac{\partial }{\partial s} [-(1-\frac{s^S_{A0}}{s^S_{A1}})\cdot \frac{\vert s^S\vert - s^S_{A0}}{s^S_{A0}}\cdot s^2 ] \cdot \frac{\partial s}{\partial s^S} 
& s=\frac{s^S_{A1} - \vert s^S\vert}{s^S_{A1} - s^S_{A0}} \mspace{18mu} s^S_{A0} \leq \vert s^S\vert < s^S_{A1}  \\
\\
0 & \mspace{110mu} \vert s^S \vert \geq s^S_{A1}
\end{cases}\\
\\
\frac{\partial }{\partial s^S}n^N &=
(\frac{n}{L})_0 \cdot 
\begin{cases}
[ \frac{s^S_{A0}}{s^S_{A1}} \cdot (6 s^2 - 6 s + 1) -1] \cdot \frac{sign(s^S)}{s^S_{A0}}  
& s=\frac{\vert s^S\vert}{s^S_{A0}} \mspace{55mu} \vert s^S\vert \leq s^S_{A0}\\
\\
[(-2s+3s^2) \cdot \frac{(s^S_{A1}-s^S_{A0})^2}{s^S_{A0} \cdot s^S_{A1}} ] \cdot \frac{-sign(s^S)}{s^S_{A1}-s^S_{A0}} 
& s=\frac{s^S_{A1} - \vert s^S\vert}{s^S_{A1} - s^S_{A0}} \mspace{18mu} s^S_{A0} \leq \vert s^S\vert < s^S_{A1}  \\
\\
0 & \mspace{110mu} \vert s^S \vert \geq s^S_{A1}
\end{cases}\\
\\
\frac{\partial }{\partial s^S}n^N &=
(\frac{n}{L})_0 \cdot 
\begin{cases}
[ \frac{1}{s^S_{A1}} \cdot (6 s^2 - 6 s + 1) - \frac{1}{s^S_{A0}}] \cdot sign(s^S)  
& s=\frac{\vert s^S\vert}{s^S_{A0}} \mspace{55mu} \vert s^S\vert \leq s^S_{A0}\\
\\
[(-2s+3s^2) \cdot \frac{(s^S_{A1}-s^S_{A0})}{s^S_{A0} \cdot s^S_{A1}} ] \cdot -sign(s^S) 
& s=\frac{s^S_{A1} - \vert s^S\vert}{s^S_{A1} - s^S_{A0}} \mspace{18mu} s^S_{A0} \leq \vert s^S\vert < s^S_{A1}  \\
\\
0 & \mspace{110mu} \vert s^S \vert \geq s^S_{A1}
\end{cases}
\end{split}$$

##### derivation tyre torque about $s^T$

Equation [\[eq:96\]](#eq:96){reference-type="ref" reference="eq:96"}
describes turn torque for each wheel $ij=fl,fr,rl,rr$\
$$\label{eq:97e}
\begin{split}
\frac{\partial T^A_{tyre}}{\partial s^T} 
&= 0\\
\\
\frac{\partial T^T_{tyre}}{\partial s^T} 
&= R_T \cdot dF^N_0
\end{split}$$

##### derivation about $\Omega$

With [\[eq:95\]](#eq:95){reference-type="ref" reference="eq:95"} the
turn slip for each wheel $ij=fl,fr,rl,rr$ the derivations are:
$$\label{eq:97f}
\frac{\partial s^T}{\partial \Omega} =\frac{R_T\cdot \omega^T}{R_{dyn}\cdot \vert \Omega \vert^2}\cdot sign(\Omega)$$\
For the rolling resistance torque
[\[eq:97\]](#eq:97){reference-type="ref" reference="eq:97"}
$\frac{\partial T^R}{\partial \Omega}$ it is defined by:\
$$\label{eq:97g}
    \frac{\partial T^R}{\partial \Omega}=\begin{cases}
        0 & \Omega \leq -\Omega_0\\
        -F^z \cdot f_{roll} \cdot R_{dyn} \cdot \frac{1}{\Omega_0} & -\Omega_0 < \Omega < \Omega_0\\
        0 & \Omega \geq \Omega_0
    \end{cases}$$

### transmission

#### Transmission at one axle

[\[fig:7\]]{#fig:7 label="fig:7"}
![image](Transmission.eps){width="1.0\\linewidth"}

This transmission could be doubled for having a transmission at front
and/or rear.

The rotational speed is

$$\label{eq:201}
\begin{split}
\Omega^{diff}_i &=\frac{1}{2}\cdot(\Omega_{il}^{wh}+\Omega_{ir}^{wh}) \\
\Omega^{gear}_i &=\Omega^{diff}_i\cdot i_i^{diff} \\
\Omega^{clutch}_i &=\Omega_i^{gear}\cdot i_i^{gear}\\
\Omega^{engine}_i &= 
\begin{cases}
\Omega_i^{clutch} & \alpha_i^{clutch} = 0 \\
\Omega_i^{clutch} \cdot (1-\alpha_i^{clutch}) + \Omega_i^{engine,idle} \cdot \alpha_i^{clutch} & 0 < \alpha_i^{clutch} < 1 \\
\Omega_i^{engine,idle} & \alpha_i^{clutch} = 1
\end{cases}\\
i=f,r
\end{split}$$

It is assumed that incase of open clutch ($\alpha_i^{clutch} = 1$) a
idle speed is applied by engine control.\
\
Engine torque could be written as:

$$\label{eq:202}
\begin{split}
T^{comb}_i &=f(\Omega_i^{engine}, \alpha^{gas}) \\
T^{engine}_i &= T^{comb}_i - \Theta_i^{engine}\cdot \dot{\Omega}_i^{engine}\\
T^{clutch}_i &= (T^{engine}_i-\Theta_i^{clutch,In}\cdot\dot{\Omega}_i^{engine}) \cdot (1-\alpha_i^{clutch}) - \Theta_i^{clutch,Out}\cdot\dot{\Omega}_i^{clutch}\\
T^{gear}_i &= (T^{clutch}_i-\Theta_i^{gear,In}\cdot\dot{\Omega}_i^{clutch}) \cdot i^{gear}_i - d^{gear}_0  - d^{gear}_1\cdot\Omega_i^{gear}-\Theta_i^{gear,Out}\cdot\dot{\Omega}_i^{gear}\\
T^{diff}_{i} &= (T^{gear}_i-\Theta_i^{diff,In}\cdot\dot{\Omega}_i^{gear}) \cdot i_i^{diff} - \Theta_i^{diff,Out}\cdot\dot{\Omega}_i^{diff} \\
T^{trans}_{il} &= T^{trans}_{ir} =\frac{1}{2}\cdot T^{diff}_{i} 
\end{split}$$\
The differential output torque $T^{diff}_{i}$ is distributed to the
wheel torques $T^{trans}_{il}$ and $T^{trans}_{ir}$ by half. To bring
inertia to one eqaution we get:\
$$\label{eq:203}
\begin{split}
\Theta_i^{total} &= \Theta_i^{diff,Out} +  (i^{diff}_i)^2\cdot\{ \Theta_i^{diff,In}+\Theta_i^{gear,Out}+(i^{gear}_i)^2\cdot \Theta_i^{sum} \}\\
\Theta_i^{sum} &=\Theta_i^{gear,In}+\Theta_i^{clutch,Out}+(1-\alpha_i^{clutch})\cdot(\Theta_i^{clutch,In}+\Theta_i^{engine})
\end{split}$$\
The rotational speed at the engine shaft could be described as:
$$\label{eq:204}
\begin{split}
\Omega^{diff}_i &=\frac{1}{2}\cdot(\Omega_{il}^{wh}+\Omega_{ir}^{wh}) \\
\\
\Omega^{engine}_i &= 
\begin{cases}
\Omega_i^{diff}\cdot i_i^{diff}\cdot i_i^{gear} & \alpha_i^{clutch} = 0 \\
\Omega_i^{diff}\cdot i_i^{diff}\cdot i_i^{gear}\cdot (1-\alpha_i^{clutch}) + \Omega_i^{engine,idle} \cdot \alpha_i^{clutch} & 0 < \alpha_i^{clutch} < 1 \\
\Omega_i^{engine,idle} & \alpha_i^{clutch} = 1
\end{cases}
\end{split}$$\
With rotational speed $\Omega^{engine}_i$ and gas pedal ratio input
$\alpha^{gas}$ the torque at the wheels left and right could be written
for front and/or rear transmision as:\
$$\label{eq:205}
\begin{split}
T^{T}_i &= T^{comb}_i(\Omega_i^{engine}, \alpha^{gas}) \cdot (1-\alpha_i^{clutch}) \cdot  i^{gear}_i \cdot  i^{diff}_i\\
\\
T^{diff}_i &= T^{T}_i -  d^{gear}_0\cdot  i^{diff}_i  - d^{gear}_1\cdot  (i^{diff}_i)^2\cdot\Omega_i^{diff} - \Theta_i^{total}\cdot \dot{\Omega}_i^{diff}\\
\\
T^{trans}_{il} &= T^{trans}_{ir} =\frac{1}{2}\cdot T^{diff}_{i}\\
\\
i &= f,r
\end{split}$$

Description of variables:\
\

  input                                           c code name           unit        comment

  ----------------------------------------------- --------------------- ----------- -----------------------------------------------

                                                  $i=f,r$                           front, rear

  $\alpha^{gas}$                                  alpha_gas             \-          application of the gas (0\...1)
  $T^{comb}_i(\Omega_i^{engine}, \alpha^{gas})$   T_combustion          Nm          combustion engine torque based on
                                                                                    a function or table
  $\alpha^{clutch}$                               alpha_clutch          \-          application of the switchable clutch (0\...1)
                                                                                    0: clutch open; 1: clutch closed
  $\Omega_{il}^{wh}$                              omega_wh_il           rad/s       wheel speed left
  $\Omega_{ir}^{wh}$                              omega_wh_ir           rad/s       wheel speed right
  $\dot{\Omega}_{il}^{wh}$                        omega_dot_wh_il       rad/s       wheel acceleration left
  $\dot{\Omega}_{ir}^{wh}$                        omega_dot_wh_ir       rad/s       wheel acceleration right
  output                                                                            
  $\Omega_i^{diff}$                               omega_diff_in_i       rad/s       virtual differential input speed
  $\Omega_i^{engine}$                             omega_engine_i        rad/s       engine speed
  $T^{trans}_{ij}$                                T_trans_ij            Nm          j=f,r transmission torque at wheel
  parameter                                                                         
  $i^{diff}_i$                                    i_diff_i              \-          transformation ratio differential
  $i^{gear}_i$                                    i_gear_i              \-          gear ratio of actual gear, for simplification
                                                                                    assuming time linear transformation
                                                                                    from old to new gear
  $\Theta_i^{engine}$                             theta_engine_i        kg m\*\*2   inertia engine
  $\Theta_i^{clutch,In}$                          theta_clutch_in_i     m           inertia clutch input side from engine seen
  $\Theta_i^{clutch,Out}$                         theta_clutch_out_i    m           inertia clutch output side from engine seen
  $\Theta_i^{gear,In}$                            theta_gear_in_i       m           inertia gear box input side from engine seen
  $\Theta_i^{gear,Out}$                           theta_gear_out_i      m           inertia gear box output side from engine seen
  $\Theta_i^{diff,In}$                            theta_diff_in_i       m           inertia differential gear box input side
  $\Theta_i^{diff,Out}$                           theta_diff_out_i      m           inertia differential gear box output side
  $d_0^{gear}$                                    d0_gear_i             Nm          constant friction gear box
  $d_1^{gear}$                                    d1_gear_i             Nm\*s/rad   damping factor gear box
  $\Omega_i^{engine,idle}$                        omega_engine_idle_i   rad/s       idle speed engine, while clutch is open

#### derivation transmission

From equation [\[eq:205\]](#eq:205){reference-type="ref"
reference="eq:205"} it is: $$\label{eq:206}
\begin{split}
\frac{\partial T^{trans}_{il}}{\partial \Omega^{wh}_{il}} &= \frac{1}{2} \cdot \frac{\partial T^{diff}_{i}}{\partial \Omega^{diff}_{i}} \cdot \frac{\partial \Omega^{diff}_{i}}{\partial \Omega^{wh}_{il}}\\
\frac{\partial T^{trans}_{ir}}{\partial \Omega^{wh}_{ir}} &= \frac{1}{2} \cdot \frac{\partial T^{diff}_{i}}{\partial \Omega^{diff}_{i}} \cdot \frac{\partial \Omega^{diff}_{i}}{\partial \Omega^{wh}_{ir}}
\end{split}$$\
From equation [\[eq:201\]](#eq:201){reference-type="ref"
reference="eq:201"} we get: $$\label{eq:207}
\begin{split}
\frac{\partial \Omega^{diff}_{i}}{\partial \Omega^{wh}_{il}} &= \frac{1}{2}\\
\frac{\partial \Omega^{diff}_{i}}{\partial \Omega^{wh}_{ir}} &= \frac{1}{2}
\end{split}$$\
From equation [\[eq:205\]](#eq:205){reference-type="ref"
reference="eq:205"} we get: $$\label{eq:208}
\begin{split}
\frac{\partial T^{diff}_{i}}{\partial \Omega^{diff}_{i}} &=  \frac{\partial T^{T}_i}{\partial \Omega^{diff}_{i}}  - d^{gear}_1\cdot  (i^{diff}_i)^2 - \Theta_i^{total}\cdot \frac{\partial \dot{\Omega}_i^{diff}}{\partial \Omega^{diff}_{i}}\\
\frac{\partial T^{T}_{i}}{\partial \Omega^{diff}_{i}} &= \frac{\partial T^{comb}_i(\Omega_i^{engine}, \alpha^{gas})}{\partial \Omega^{engine}_{i}} \cdot \frac{\partial \Omega_i^{emgine}}{\partial \Omega^{diff}_{i}}\cdot (1-\alpha_i^{clutch}) \cdot  i^{gear}_i \cdot  i^{diff}_i
\end{split}$$\
From equation [\[eq:201\]](#eq:201){reference-type="ref"
reference="eq:201"} we get for
$\frac{\partial \Omega_i^{emgine}}{\partial \Omega^{diff}_{i}}$:
$$\label{eq:209}
\frac{\partial \Omega_i^{emgine}}{\partial \Omega^{diff}_{i}} = i_i^{diff}\cdot i_i^{gear}\cdot (1-\alpha_i^{clutch})$$
If the clutch is open ($\alpha_i^{clutch}=1$) the factor is zero and for
closed clutch ($\alpha_i^{clutch}=0$) it is one.\
\
The part
$\Theta_i^{total}\cdot \frac{\partial \dot{\Omega}_i^{diff}}{\partial \Omega^{diff}_{i}}$
could be written as follows and it is an implicit part which has to be
brought to the left side of the equation\
$$\label{eq:210}
\begin{split}
\Theta_i^{total}\cdot \frac{\partial \dot{\Omega}_i^{diff}}{\partial \Omega^{diff}_{i}} &= \Theta_i^{total}\cdot \frac{\partial \dot{\Omega}_{il}^{wh}}{\partial \Omega^{wh}_{il}}\\
\Theta_i^{total}\cdot \frac{\partial \dot{\Omega}_i^{diff}}{\partial \Omega^{diff}_{i}} &= \Theta_i^{total}\cdot \frac{\partial \dot{\Omega}_{ir}^{wh}}{\partial \Omega^{wh}_{ir}}
\end{split}$$\
For the jacobi matrix if we have to build
$\frac{\partial \dot{\Omega}_{il}^{wh}}{\partial \Omega^{wh}_{il}}$ or
$\frac{\partial \dot{\Omega}_{ir}^{wh}}{\partial \Omega^{wh}_{ir}}$ the
factor $\frac{1}{1+\frac{1}{4}\cdot\Theta_i^{total}}$ must be used on
the right side of the equation. The factor $\frac{1}{4}$ could be seen
in [\[eq:206\]](#eq:206){reference-type="ref" reference="eq:206"}\
\
The value
$\frac{\partial T^{comb}_i(\Omega_i^{engine}, \alpha^{gas})}{\partial \Omega^{engine}_{i}}$
must be calculated or taken from the engine-characteristic table of
engine torque

#### engine combustion torque

Engine combustion torque could be easily parametrized by having a max
torque curve\
$T^{comb}_{max}=f(\Omega^{engine})$ for full gas pedal applied and mimum
characteristic for drag torque $T^{comb}_{min}=f(\Omega^{engine})$ for
released gas pedal. The combustion torque is linear calculated between
$\alpha=0$ and $\alpha=1$:

$$\label{eq:20a}
\begin{split}
T^{comb}_{max} &= f_{max}(\Omega^{engine})  \hspace{1cm} \alpha^{gas}=1.0\\
T^{comb}_{min} &= f_{min}(\Omega^{engine})  \hspace{1cm} \alpha^{gas}=0.0\\
\\
T^{comb}       &=f(\Omega^{engine}, \alpha^{gas}) = T^{comb}_{min} + (T^{comb}_{max}-T^{comb}_{min}) \cdot \alpha_{gas}
\end{split}$$\
The derivation could be written as $$\label{eq:20b}
    \begin{split}
        \frac{\Delta T^{comb}_{max}}{\Delta \Omega^{engine}} &= \frac{ f_{max}(\Omega_1^{engine})-f_{max}(\Omega_0^{engine})}{\Omega_1^{engine}-\Omega_0^{engine}}  \hspace{1cm} \alpha^{gas}=1.0\\
        \\
        \frac{\Delta T^{comb}_{min}}{\Delta \Omega^{engine}} &= \frac{ f_{min}(\Omega_1^{engine})-f_{min}(\Omega_0^{engine})}{\Omega_1^{engine}-\Omega_0^{engine}}  \hspace{1cm} \alpha^{gas}=0.0\\
        \\
        \frac{\partial T^{comb}}{\partial \Omega^{engine}}       &= \frac{\Delta T^{comb}_{min}}{\Delta \Omega^{engine}} + (\frac{\Delta T^{comb}_{max}}{\Delta \Omega^{engine}} - \frac{\Delta T^{comb}_{min}}{\Delta \Omega^{engine}}) \cdot \alpha_{gas}
    \end{split}$$ Description of variables:\
\

  input                     c code name        unit    comment

  ------------------------- ------------------ ------- -------------------------------------

                            $i=f,r$                    front, rear

  $T_{i,max}^{comustion}$   T_max_comb_vec_i   Nm      Vector of maximum combustion torque
  $T_{i,min}^{comustion}$   T_min_comb_vec_i   Nm      Vector of minimum combustion torque
  $\Omega_i^{comustion}$    Omega_comb_vec_i   rad/s   Vector of combustion engine speed

### brakes

The application of brake torque in an abstract way could be defined by a
protion from 0 \... 1 $\alpha^{brake}$ to apply a brake torque between
zero and 1-g deceleration by dry surface.

$$\label{eq:220}
\begin{split}
T^{brake,apply} &= \alpha^{brake} \cdot T^{brake,max}\\
T^{brake,max}   &= (m + \frac{\sum_{ij=fl,fr,rl,rr} \Theta^{wh}_{ij}}{(R_{dyn})^2})\cdot g\cdot R_{dyn}
\end{split}$$

The brake torque is distributed to front and rear with a const portion
from front axle (standard brake design) $f^{brake}_{FA}=const$ or as a
function of application (e.g. brake by wire)
$f^{brake}_{FA}=f(\alpha^{brake})$. To left and right the torque is
usually half devided $p^{brake}_{leftright}=0.5$.

$$\label{eq:221}
\begin{split}
T^{brake,apply}_{fl} &= T^{brake,apply}_{fr} = T^{brake,apply} \cdot f^{brake}_{FA} \cdot 0.5\\
T^{brake,apply}_{fr} &= T^{brake,apply}_{rr} = T^{brake,apply} \cdot (1.-f^{Bbrake}_{FA}) \cdot 0.5
\end{split}$$

In 'Prof. Georg Rill: Simulation von Kraftfahrzeugen, Viehweg & Sohn,
1994' the model for efective brake torque is diveded into a static part
$T^{brake,stat}_{ij}$ and an additional dynamic part
$T^{brake,dyn}_{ij}$. The static part holds the wheel in equivalence
compared to transmission torque and tyre torque and is limited by the
application.\
$ij=fl,fr,rl,rr$ $$\label{eq:222}
T^{brake,stat}_{ij} = min(T^{trans}_{ij} + T^y_{wh,ij},T^{brake,apply}_{ij})$$

The additional dynamic part has a splope with a factor
($d^{brake}_{ij}>>1$) to have a transition from static friction to
dynamic friction for integration reasons according to wheel spinning.
The effective torque is limiteted to application torque.\
$$\label{eq:223}
\begin{split}
T^{brake,dyn}_{ij} &= d^{brake}_{ij}\cdot \Omega^{wh}_{ij}\\
T^{brake}_{ij} &= min(T^{brake,stat}_{ij} + T^{brake,dyn}_{ij},T^{brake,apply}_{ij})
\end{split}$$

Description of variables:\
\

  input                    c code name        unit    comment

  ------------------------ ------------------ ------- ----------------------------------------------

                           $ij=fl,fr,rl,rr$           

  $\alpha^{brake}$         alpha_brake        \-      application of the brake (0\...1)
  output                                              
  $T^{brake,apply}$        Tbrake_apply       Nm      applied total brake torque
  $T^{brake,apply}_{ij}$   Tbrake_apply_ij    Nm      applied brake torque at wheel
  $T^{brake,stat}_{ij}$    Tbrake_stat_ij     Nm      brake torque from static friction
  $T^{brake,dyn}_{ij}$     Tbrake_dyn_ij      Nm      additional brake torque for dynamic friction
  $T^{brake}_{ij}$         Tbrake_ij          Nm      efective brake torque
  parameter                                           
  $T^{brake,max}$          Tbrake_max         Nm      maximum total torque
  $g$                      gravity            m/s/s   gravity => 9.81
  $f^{brake}_{FA}$         fbrake_FA          m       Front Axle portion of torque distribution
  $d^{brake}_{ij}$         dbrake_ij          m       slope for dynamic friction (d>\>1)

#### derivation brakes

As long as $T^{brake,dyn}_{ij}$ from
[\[eq:223\]](#eq:223){reference-type="ref" reference="eq:223"} is acting
the derivation could be written as:\
$$\label{eq:224}
\frac{\partial T^{brake}_{ij}}{\partial \Omega^{wh}_{ij}} = 
\begin{cases}
d_{ij}^{brake} & T_{ij}^{brake,stat} + T_{ij}^{brake,dyn} < T_{ij}^{brake,apply}  \\
0 & T_{ij}^{brake,stat} + T_{ij}^{brake,dyn} \geq T_{ij}^{brake,apply}
\end{cases}$$

## States

kinematic horizontal coordinates (equation
[\[eq:10\]](#eq:10){reference-type="ref" reference="eq:10"}):\
$y_F = 
\begin{bmatrix}   
x_{0B,0} \\ y_{0B,0} \\ \Psi_{0B,0}
\end{bmatrix}$\
dynamic states horizontal model (equation
[\[eq:26\]](#eq:26){reference-type="ref" reference="eq:26"}):\
$z_F = 
\begin{bmatrix}   
v^x_{0B,B} \\ v^y_{0B,B} \\ \omega^z_{0B,B}
\end{bmatrix}$\
dynamics of the spinning wheel (equation
[\[eq:53\]](#eq:53){reference-type="ref" reference="eq:53"}):\
$omega_F =
\begin{bmatrix}
\Omega_{fl}^{wh}\\
\Omega_{fr}^{wh}\\
\Omega_{rl}^{wh}\\
\Omega_{rr}^{wh}
\end{bmatrix}$\
or\
$$\label{eq:225}
s = 
\begin{bmatrix}   
x_{0B,0} \\ 
y_{0B,0} \\ 
\Psi_{0B,0} \\
v^x_{0B,B} \\ 
v^y_{0B,B} \\ 
\omega^z_{0B,B} \\
\Omega_{fl}^{wh}\\
\Omega_{fr}^{wh}\\
\Omega_{rl}^{wh}\\
\Omega_{rr}^{wh}
\end{bmatrix}$$

## State dervation for Jacobi Matrix

the matrix is structured:\
$$\label{eq:226}
J =
\begin{bmatrix}
\frac{\partial \dot{x}_{0B,0}}{\partial x_{0B,0}}         & \frac{\partial \dot{x}_{0B,0}}{\partial y_{0B,0}}         & \frac{\partial \dot{x}_{0B,0}}{\partial \Psi_{0B,0}}         & \frac{\partial \dot{x}_{0B,0}}{\partial v^x_{0B,B}}          & \frac{\partial \dot{x}_{0B,0}}{\partial v^y_{0B,B}}          & \frac{\partial \dot{x}_{0B,0}}{\partial \omega^z_{0B,B}}          & \frac{\partial \dot{x}_{0B,0}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{x}_{0B,0}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{x}_{0B,0}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{x}_{0B,0}}{\partial \Omega_{rr}^{wh}}\\  
\\    
\frac{\partial \dot{y}_{0B,0}}{\partial x_{0B,0}}         & \frac{\partial \dot{y}_{0B,0}}{\partial y_{0B,0}}         & \frac{\partial \dot{y}_{0B,0}}{\partial \Psi_{0B,0}}         & \frac{\partial \dot{y}_{0B,0}}{\partial v^x_{0B,B}}           & \frac{\partial \dot{y}_{0B,0}}{\partial v^y_{0B,B}}           & \frac{\partial \dot{y}_{0B,0}}{\partial \omega^z_{0B,B}}          & \frac{\partial \dot{y}_{0B,0}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{y}_{0B,0}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{y}_{0B,0}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{y}_{0B,0}}{\partial \Omega_{rr}^{wh}}\\ 
\\
\frac{\partial \dot{\Psi}_{0B,0}}{\partial x_{0B,0}}      & \frac{\partial \dot{\Psi}_{0B,0}}{\partial y_{0B,0}}      & \frac{\partial \dot{\Psi}_{0B,0}}{\partial \Psi_{0B,0}}      & \frac{\partial \dot{\Psi}_{0B,0}}{\partial v^x_{0B,B}}       & \frac{\partial \dot{\Psi}_{0B,0}}{\partial v^y_{0B,B}}       & \frac{\partial \dot{\Psi}_{0B,0}}{\partial \omega^z_{0B,B}}       & \frac{\partial \dot{\Psi}_{0B,0}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\Psi}_{0B,0}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\Psi}_{0B,0}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{\Psi}_{0B,0}}{\partial \Omega_{rr}^{wh}}\\
\\
\frac{\partial \dot{v}^x_{0B,B}}{\partial x_{0B,0}}       & \frac{\partial \dot{v}^x_{0B,B}}{\partial y_{0B,0}}       & \frac{\partial \dot{v}^x_{0B,B}}{\partial \Psi_{0B,0}}       & \frac{\partial \dot{v}^x_{0B,B}}{\partial v^x_{0B,B}}        & \frac{\partial \dot{v}^x_{0B,B}}{\partial v^y_{0B,B}}        & \frac{\partial \dot{v}^x_{0B,B}}{\partial \omega^z_{0B,B}}        & \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{rr}^{wh}}\\ 
\\
\frac{\partial \dot{v}^y_{0B,B}}{\partial x_{0B,0}}       & \frac{\partial \dot{v}^y_{0B,B}}{\partial y_{0B,0}}       & \frac{\partial \dot{v}^y_{0B,B}}{\partial \Psi_{0B,0}}       & \frac{\partial \dot{v}^y_{0B,B}}{\partial v^x_{0B,B}}        & \frac{\partial \dot{v}^y_{0B,B}}{\partial v^y_{0B,B}}        & \frac{\partial \dot{v}^y_{0B,B}}{\partial \omega^z_{0B,B}}        & \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{rr}^{wh}}\\ 
\\
\frac{\partial \dot{\omega}^z_{0B,B}}{\partial x_{0B,0}}  & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial y_{0B,0}}  & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Psi_{0B,0}}  & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial v^x_{0B,B}}   & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial v^y_{0B,B}}   & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \omega^z_{0B,B}}   & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{rr}^{wh}}\\
\\
\frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial x_{0B,0}} & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial y_{0B,0}} & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \Psi_{0B,0}}  & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial v^x_{0B,B}}  & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial v^y_{0B,B}}  & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \omega^z_{0B,B}}  & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \Omega_{rr}^{wh}}\\
\\
\frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial x_{0B,0}} & \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial y_{0B,0}} &  \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \Psi_{0B,0}} &  \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial v^x_{0B,B}}  &  \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial v^y_{0B,B}}  &  \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \omega^z_{0B,B}}  & \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \Omega_{rr}^{wh}}\\
\\
\frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial x_{0B,0}} & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial y_{0B,0}} & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Psi_{0B,0}}  & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial v^x_{0B,B}}  & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial v^y_{0B,B}}  & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \omega^z_{0B,B}}  & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Omega_{rr}^{wh}}\\
\\
\frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial x_{0B,0}} & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial y_{0B,0}} & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial \Psi_{0B,0}}  & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial v^x_{0B,B}}  & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial v^y_{0B,B}}  & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial \omega^z_{0B,B}}  & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Omega_{rr}^{wh}}& \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial \Omega_{rr}^{wh}}
\end{bmatrix}$$

values can be calculated for:\
$$\label{eq:226a}
J =
\begin{bmatrix}
0         & 0         & \frac{\partial \dot{x}_{0B,0}}{\partial \Psi_{0B,0}}         & \frac{\partial \dot{x}_{0B,0}}{\partial v^x_{0B,B}}          & \frac{\partial \dot{x}_{0B,0}}{\partial v^y_{0B,B}}          & 0          & 0 & 0 & 0 & 0\\  
\\    
0         & 0         & \frac{\partial \dot{y}_{0B,0}}{\partial \Psi_{0B,0}}         & \frac{\partial \dot{y}_{0B,0}}{\partial v^x_{0B,B}}           & \frac{\partial \dot{y}_{0B,0}}{\partial v^y_{0B,B}}           & 0          & 0 & 0 & 0 & 0\\ 
\\
0 & 0 & 0 & 0 & 0 & \frac{\partial \dot{\Psi}_{0B,0}}{\partial \omega^z_{0B,B}} & 0 & 0 & 0 & 0 \\
\\
0 & 0 & 0 & \frac{\partial \dot{v}^x_{0B,B}}{\partial v^x_{0B,B}}        & \frac{\partial \dot{v}^x_{0B,B}}{\partial v^y_{0B,B}}        & \frac{\partial \dot{v}^x_{0B,B}}{\partial \omega^z_{0B,B}}        & \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{rr}^{wh}}\\ 
\\
0  & 0 & 0 & \frac{\partial \dot{v}^y_{0B,B}}{\partial v^x_{0B,B}}        & \frac{\partial \dot{v}^y_{0B,B}}{\partial v^y_{0B,B}}        & \frac{\partial \dot{v}^y_{0B,B}}{\partial \omega^z_{0B,B}}        & \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{rr}^{wh}}\\ 
\\
0  & 0  & 0  & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial v^x_{0B,B}}   & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial v^y_{0B,B}}   & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \omega^z_{0B,B}}   & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{rr}^{wh}}\\
\\
0 & 0 & 0 & 0  & 0  & 0  & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \Omega_{fl}^{wh}} & 0 & 0 & 0 \\
\\
0 & 0 & 0 & 0  & 0  & 0  & 0 & \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \Omega_{fr}^{wh}} & 0 & 0 \\
\\
0 & 0 & 0 &  0  & 0  & 0  & 0 & 0 & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Omega_{rl}^{wh}} & 0 \\
\\
0 & 0 & 0 &  0  & 0  & 0  & 0 & 0 & 0 & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial \Omega_{rr}^{wh}} 
\end{bmatrix}$$

equations:\
$$\label{eq:226b}
J =
\begin{bmatrix}
0         & 0         & \ref{eq:227}         & \ref{eq:227}          & \ref{eq:227}         & 0          & 0 & 0 & 0 & 0\\  
\\    
0         & 0         &\ref{eq:227}        & \ref{eq:227}          & \ref{eq:227}           & 0          & 0 & 0 & 0 & 0\\ 
\\
0 & 0 & 0 & 0 & 0 & \ref{eq:227} & 0 & 0 & 0 & 0 \\
\\
0 & 0 & 0  & \ref{eq:228} & \ref{eq:228b}  & \ref{eq:228c} & \ref{eq:228d} & \ref{eq:228d} & \ref{eq:228d} & \ref{eq:228d} \\ 
\\
0  & 0 & 0 & \ref{eq:229} & \ref{eq:229a} & \ref{eq:229b}        & \ref{eq:229c} & \ref{eq:229c} & \ref{eq:229c} & \ref{eq:229c} \\ 
\\
0  & 0  &   & \ref{eq:230}   & \ref{eq:230a}   & \ref{eq:234}   & \ref{eq:235} & \ref{eq:235} & \ref{eq:235} & \ref{eq:235} \\
\\
0 & 0 & 0 & 0  & 0  & 0  & \ref{eq:240} & 0 & 0 & 0 \\
\\
0 & 0 & 0 & 0  & 0  & 0  & 0 & \ref{eq:240} & 0 & 0 \\
\\
0 & 0 & 0 &  0  & 0  & 0  & 0 & 0 & \ref{eq:240} & 0 \\
\\
0 & 0 & 0 &  0  & 0  & 0  & 0 & 0 & 0 & \ref{eq:240}
\end{bmatrix}$$

### $\dot{x}_{0B,0}$, $\dot{y}_{0B,0}$, $\dot{\Psi}_{0B,0}$

$$\label{eq:227}
\begin{split}
\frac{\partial \dot{x}_{0B,0}}{\partial \Psi_{0B,0}} &= -v^x_{0B,B} \cdot \sin(\Psi_{0B,0}) - v^y_{0B,B} \cdot \cos(\Psi_{0B,0})\\
\frac{\partial \dot{x}_{0B,0}}{\partial v^x_{0B,B}} &= \cos(\Psi_{0B,0})\\
\frac{\partial \dot{x}_{0B,0}}{\partial v^y_{0B,B}} &= -\sin(\Psi_{0B,0})\\
\\
\frac{\partial \dot{y}_{0B,0}}{\partial \Psi_{0B,0}} &= v^x_{0B,B} \cdot \cos(\Psi_{0B,0}) - v^y_{0B,B} \cdot \sin(\Psi_{0B,0})\\
\frac{\partial \dot{y}_{0B,0}}{\partial v^x_{0B,B}} &= \sin(\Psi_{0B,0})\\
\frac{\partial \dot{y}_{0B,0}}{\partial v^y_{0B,B}} &= \cos(\Psi_{0B,0})\\
\\
\frac{\partial \dot{\Psi}_{0B,0}}{\partial \omega^z_{0B,B}} &= 1
\end{split}$$\

### $\dot{v}^x_{0B,B}$, $\dot{v}^y_{0B,b}$, $\dot{\omega}^z_{0B,B}$

#### $\partial \dot{v}^x_{0B,B}$

##### ========= $\partial \dot{v}^x_{0B,B} / \partial v^x_{0B,B}$ =========

From equation [\[eq:38\]](#eq:38){reference-type="ref"
reference="eq:38"}, [\[eq:31a\]](#eq:31a){reference-type="ref"
reference="eq:31a"}, [\[eq:52\]](#eq:52){reference-type="ref"
reference="eq:52"}\
\
$$\label{eq:228}
\begin{split}
\frac{\partial \dot{v}^x_{0B,B}}{\partial v^x_{0B,B}}  
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fx}}{\partial v^x_{0B,B}} - \frac{\partial F^x_{AirRes,B}}{\partial v^x_{0B,B}} \} \\
\\
\frac{\partial F^x_{AirRes,B}}{\partial v^x_{0B,B}} &= 2 \cdot C^x_w \cdot v^x_{0B,B}\\
\\
\frac{\partial F_{Fx}}{\partial v^x_{0B,B}} 
&= \sum_{ij=fl,fr,rl,rr} \frac{\partial F^x_{whij,B}}{\partial v^x_{0B,B}}\\
\frac{\partial F_{Fx}}{\partial v^x_{0B,B}} 
&= \sum_{ij=fl,fr,rl,rr} 
\{ \cos(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial v^x_{0B,B}} - 
\sin(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial v^x_{0B,B}}    \} \\
\\
\frac{\partial F^x_{whij,wh}}{\partial v^x_{0B,B}} &=
\frac{\partial F^x_{whij,wh}}{\partial v^L_{wh,ij}} \cdot    
\frac{\partial v^L_{wh,ij}}{\partial v^x_{0B,B}} + \frac{\partial F^x_{whij,wh}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^x_{0B,B}}\\
\\
\frac{\partial F^y_{whij,wh}}{\partial v^x_{0B,B}} &=
\frac{\partial F^y_{whij,wh}}{\partial v^L_{wh,ij}} \cdot 
\frac{\partial v^L_{wh,ij}}{\partial v^x_{0B,B}} + \frac{\partial F^y_{whij,wh}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^x_{0B,B}}
\end{split}$$\
$\frac{\partial v^L_{wh,ij}}{\partial v^x_{0B,B}}$ and
$\frac{\partial v^S_{wh,ij}}{\partial v^x_{0B,B}}$ are described in
[\[eq:51b\]](#eq:51b){reference-type="ref" reference="eq:51b"}\
\
From equation [\[eq:57a\]](#eq:57a){reference-type="ref"
reference="eq:57a"}\
$$\label{eq:228a}
\begin{split}
\frac{\partial F^x_{whij,wh}}{\partial v^L_{wh,ij}} &= 
\frac{\partial F^L_{tyre,ij}}{\partial v^L_{wh,ij}} = 
\frac{\partial F^L_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^L_{wh,ij}} + \frac{\partial F^L_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^L_{wh,ij}} \\
\\
\frac{\partial F^y_{whij,wh}}{\partial v^L_{wh,ij}} &= 
\frac{\partial F^S_{tyre,ij}}{\partial v^L_{wh,ij}} = 
\frac{\partial F^S_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^L_{wh,ij}} + \frac{\partial F^S_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^L_{wh,ij}} \\
\\
\frac{\partial F^x_{whij,wh}}{\partial v^S_{wh,ij}} &= 
\frac{\partial F^L_{tyre,ij}}{\partial v^S_{wh,ij}} = 
\frac{\partial F^L_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^S_{wh,ij}} + \frac{\partial F^L_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^S_{wh,ij}} \\
\\
\frac{\partial F^y_{whij,wh}}{\partial v^S_{wh,ij}} &= 
\frac{\partial F^S_{tyre,ij}}{\partial v^S_{wh,ij}} = 
\frac{\partial F^S_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^S_{wh,ij}} + \frac{\partial F^S_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^S_{wh,ij}} \\
\end{split}$$\
The partial derivation of tyre force and slip are described in
[\[eq:91c\]](#eq:91c){reference-type="ref" reference="eq:91c"}

##### ========= $\partial \dot{v}^x_{0B,B} / \partial v^y_{0B,B}$ =========

From equation [\[eq:38\]](#eq:38){reference-type="ref"
reference="eq:38"}, [\[eq:31a\]](#eq:31a){reference-type="ref"
reference="eq:31a"}, [\[eq:52\]](#eq:52){reference-type="ref"
reference="eq:52"}\
$$\label{eq:228b}
\begin{split}
\frac{\partial \dot{v}^x_{0B,B}}{\partial v^y_{0B,B}}  
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fx}}{\partial v^y_{0B,B}} - \frac{\partial F^x_{AirRes,B}}{\partial v^y_{0B,B}} +m\cdot\omega^z_{0B}\} \\
\\
\frac{\partial F^x_{AirRes,B}}{\partial v^y_{0B,B}} &= 0.\\
\\
\frac{\partial F_{Fx}}{\partial v^y_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial F^x_{whij,B}}{\partial v^y_{0B,B}}\\
\frac{\partial F_{Fx}}{\partial v^y_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} 
\{ \cos(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial v^y_{0B,B}} - 
\sin(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial v^y_{0B,B}}    \} \\
\\
\frac{\partial F^x_{whij,wh}}{\partial v^y_{0B,B}} &=
\frac{\partial F^x_{whij,wh}}{\partial v^L_{wh,ij}} \cdot    
\frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}} + \frac{\partial F^x_{whij,wh}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}\\
\\
\frac{\partial F^y_{whij,wh}}{\partial v^y_{0B,B}} &=
\frac{\partial F^y_{whij,wh}}{\partial v^L_{wh,ij}} \cdot 
\frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}} + \frac{\partial F^y_{whij,wh}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}
\end{split}$$\
$\frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}}$ and
$\frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}$ are described in
[\[eq:51b\]](#eq:51b){reference-type="ref" reference="eq:51b"}\
\
Rest from equation [\[eq:228a\]](#eq:228a){reference-type="ref"
reference="eq:228a"}

##### ========= $\partial \dot{v}^x_{0B,B} / \partial \omega^z_{0B,B}$ =========

From equation [\[eq:38\]](#eq:38){reference-type="ref"
reference="eq:38"}, [\[eq:31a\]](#eq:31a){reference-type="ref"
reference="eq:31a"}, [\[eq:52\]](#eq:52){reference-type="ref"
reference="eq:52"}\
$$\label{eq:228c}
\begin{split}
\frac{\partial \dot{v}^x_{0B,B}}{\partial \omega^z_{0B,B}}  
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fx}}{\partial \omega^z_{0B,B}} - \frac{\partial F^x_{AirRes,B}}{\partial \omega^z_{0B,B}} + m\cdot v^y_{0B}\} \\
\\
\frac{\partial F^x_{AirRes,B}}{\partial \omega^z_{0B,B}} &= 0.\\
\\
\frac{\partial F_{Fx}}{\partial \omega^z_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial F^x_{whij,B}}{\partial \omega^z_{0B,B}}\\
\\
\frac{\partial F_{Fx}}{\partial \omega^z_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} 
\{ \cos(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial \omega^z_{0B,B}} - 
\sin(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial \omega^z_{0B,B}}    \} \\
\\
\frac{\partial F^x_{whij,wh}}{\partial \omega^z_{0B,B}} &=
\frac{\partial F^x_{whij,wh}}{\partial v^L_{wh,ij}} \cdot    
\frac{\partial v^L_{wh,ij}}{\partial \omega^z_{0B,B}} + \frac{\partial F^x_{whij,wh}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial \omega^z_{0B,B}}\\
\\
\frac{\partial F^y_{whij,wh}}{\partial \omega^z_{0B,B}} &=
\frac{\partial F^y_{whij,wh}}{\partial v^L_{wh,ij}} \cdot 
\frac{\partial v^L_{wh,ij}}{\partial \omega^z_{0B,B}} + \frac{\partial F^y_{whij,wh}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial \omega^z_{0B,B}}
\end{split}$$\
$\frac{\partial v^L_{wh,ij}}{\partial \omega^z_{0B,B}}$ and
$\frac{\partial v^S_{wh,ij}}{\partial \omega^z_{0B,B}}$ are described in
[\[eq:51b\]](#eq:51b){reference-type="ref" reference="eq:51b"}\

##### ========= $\partial \dot{v}^x_{0B,B} / \partial \Omega^{wh}_{ij}$ =========

From equation [\[eq:38\]](#eq:38){reference-type="ref"
reference="eq:38"}, [\[eq:31a\]](#eq:31a){reference-type="ref"
reference="eq:31a"}, [\[eq:52\]](#eq:52){reference-type="ref"
reference="eq:52"}\
\
$$\label{eq:228d}
\begin{split}
\frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega^{wh}_{ij}}  
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fx}}{\partial \Omega^{wh}_{ij}} - \frac{\partial F^x_{AirRes,B}}{\partial \Omega^{wh}_{ij}} + \frac{\partial (m\cdot  \omega^z_{0B,B}\cdot v^y_{0B})}{\partial \Omega^wh_{ij}} \} \\
\\
\frac{\partial F^x_{AirRes,B}}{\partial \Omega^{wh}_{ij}} &= 0\\
\\
\frac{\partial (m\cdot  \omega^z_{0B,B}\cdot v^y_{0B})}{\partial \Omega^{wh}_{ij}} &= 0 \\
\\
\frac{\partial F_{Fx}}{\partial \Omega^{wh}_{ij}} &= 
\sum_{kl=fl,fr,rl,rr} \frac{\partial F^x_{whkl,B}}{\partial \Omega^{wh}_{ij}}\\
\\
\frac{\partial F^x_{whkl,B}}{\partial \Omega^{wh}_{ij}} &= \begin{cases}
\frac{\partial F^x_{whij,B}}{\partial \Omega^{wh}_{ij}} & ij=kl\\
0                                                     & ij\neq kl
\end{cases}\\
\\
\frac{\partial F^x_{whij,B}}{\partial \Omega^{wh}_{ij}} &=  
\cos(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial \Omega^{wh}_{ij}} - 
\sin(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial \Omega^{wh}_{ij}} \\
\\
\frac{\partial F^x_{whij,wh}}{\partial \Omega^{wh}_{ij}} &=
\frac{\partial F^L_{tyre,ij}}{\partial s^L_{ij}} \cdot    
\frac{\partial s^L_{ij}}{\partial \Omega^{wh}_{ij}} + \frac{\partial F^L_{tyre,ij}}{\partial s^S_{ij}} \cdot \frac{\partial s^S_{ij}}{\partial \Omega^{wh}_{ij}}\\
\\
\frac{\partial F^y_{whij,wh}}{\partial \Omega^{wh}_{ij}} &=
\frac{\partial F^S_{tyre,ij}}{\partial s^L_{ij}} \cdot 
\frac{\partial s^L_{ij}}{\partial \Omega^wh_{ij}} + \frac{\partial F^S_{tyre,ij}}{\partial s^S_{ij}} \cdot \frac{\partial s^S_{ij}}{\partial \Omega^{wh}_{ij}}
\end{split}$$\
$\frac{\partial s^L_{ij}}{\partial \Omega^{wh}_{ij}}$ and
$\frac{\partial s^S_{ij}}{\partial \Omega^{wh}_{ij}}$ are described in
\...\
$\frac{\partial F^L_{tyre,ij}}{\partial s^L_{ij}}$ ,
$\frac{\partial F^L_{tyre,ij}}{\partial s^S_{ij}}$,
$\frac{\partial F^S_{tyre,ij}}{\partial s^L_{ij}}$ and
$\frac{\partial F^S_{tyre,ij}}{\partial s^S_{ij}}$ are described in
\...\

#### $\partial \dot{v}^y_{0B,B}$

##### ========= $\partial \dot{v}^y_{0B,B} / \partial v^x_{0B,B}$ =========

$$\label{eq:229}
\begin{split}
\frac{\partial \dot{v}^y_{0B,B}}{\partial v^x_{0B,B}}
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fy}}{\partial v^x_{0B,B}} - m\cdot\omega^z_{0B}\}\\
\\
\frac{\partial F_{Fy}}{\partial v^x_{0B,B}} 
&= \sum_{ij=fl,fr,rl,rr} \frac{\partial F^y_{whij,B}}{\partial v^x_{0B,B}}\\
\\
\frac{\partial F_{Fy}}{\partial v^x_{0B,B}} 
&= \sum_{ij=fl,fr,rl,rr} 
\{ \sin(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial v^x_{0B,B}} + 
\cos(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial v^x_{0B,B}}    \}
\end{split}$$\
\
$\frac{\partial F^x_{whij,wh}}{\partial v^x_{0B,B}}$ and
$\frac{\partial F^y_{whij,wh}}{\partial v^x_{0B,B}}$ are described in
[\[eq:228\]](#eq:228){reference-type="ref" reference="eq:228"},
[\[eq:228a\]](#eq:228a){reference-type="ref" reference="eq:228a"}

##### ========= $\partial \dot{v}^y_{0B,B} / \partial v^y_{0B,B}$ =========

$$\label{eq:229a}
\begin{split}
\frac{\partial \dot{v}^y_{0B,B}}{\partial v^y_{0B,B}}
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fy}}{\partial v^y_{0B,B}} \}\\
\\
\frac{\partial F_{Fy}}{\partial v^y_{0B,B}} 
&= \sum_{ij=fl,fr,rl,rr} \frac{\partial F^y_{whij,B}}{\partial v^y_{0B,B}}\\
\\
\frac{\partial F_{Fy}}{\partial v^y_{0B,B}} 
&= \sum_{ij=fl,fr,rl,rr} 
\{ \sin(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial v^y_{0B,B}} + 
\cos(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial v^y_{0B,B}}    \}
\end{split}$$\
\
$\frac{\partial F^x_{whij,wh}}{\partial v^y_{0B,B}}$ and
$\frac{\partial F^y_{whij,wh}}{\partial v^y_{0B,B}}$ are described in
[\[eq:228\]](#eq:228){reference-type="ref" reference="eq:228"},
[\[eq:228a\]](#eq:228a){reference-type="ref" reference="eq:228a"}

##### ========= $\partial \dot{v}^y_{0B,B} / \partial \omega^z_{0B,B}$ =========

From equation [\[eq:38\]](#eq:38){reference-type="ref"
reference="eq:38"}, [\[eq:52\]](#eq:52){reference-type="ref"
reference="eq:52"}\
$$\label{eq:229b}
\begin{split}
\frac{\partial \dot{v}^y_{0B,B}}{\partial \omega^z_{0B,B}}  
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fy}}{\partial \omega^z_{0B,B}} - m\cdot v^x_{0B,B}\}\\
\\
\frac{\partial F_{Fy}}{\partial \omega^z_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial F^y_{whij,B}}{\partial \omega^z_{0B,B}}\\
\\
\frac{\partial F_{Fy}}{\partial \omega^z_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} 
\{ \sin(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial \omega^z_{0B,B}} + 
\cos(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial \omega^z_{0B,B}}    \} \\
\end{split}$$\
$\frac{\partial F^x_{whij,wh}}{\partial \omega^z_{0B,B}}$ and
$\frac{\partial F^y_{whij,wh}}{\partial \omega^z_{0B,B}}$ are described
in [\[eq:228c\]](#eq:228c){reference-type="ref" reference="eq:228c"}\

##### ========= $\partial \dot{v}^y_{0B,B} / \partial \Omega^{wh}_{ij}$ =========

From equation [\[eq:38\]](#eq:38){reference-type="ref"
reference="eq:38"}, [\[eq:31a\]](#eq:31a){reference-type="ref"
reference="eq:31a"}, [\[eq:52\]](#eq:52){reference-type="ref"
reference="eq:52"}\
$$\label{eq:229c}
\begin{split}
\frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega^{wh}_{ij}}  
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fy}}{\partial \Omega^{wh}_{ij}} - \frac{\partial (m\cdot  \omega^z_{0B,B}\cdot v^x_{0B})}{\partial \Omega^{wh}_{ij}} \} \\
\\
\frac{\partial (m\cdot  \omega^z_{0B,B}\cdot v^x_{0B})}{\partial \Omega^{wh}_{ij}} &= 0.\\
\\
\frac{\partial F_{Fy}}{\partial \Omega^wh_{ij}} &= 
\sum_{kl=fl,fr,rl,rr} \frac{\partial F^Y_{whkl,B}}{\partial \Omega^{wh}_{ij}}\\
\\
\frac{\partial F^y_{whkl,B}}{\partial \Omega^{wh}_{ij}} &= \begin{cases}
\frac{\partial F^y_{whij,B}}{\partial \Omega^{wh}_{ij}} & ij=kl\\
0                                                     & ij\neq kl
\end{cases}\\
\\
\frac{\partial F^y_{whij,B}}{\partial \Omega^{wh}_{ij}} &=  
\sin(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial \Omega^{wh}_{ij}} + 
\cos(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial \Omega^{wh}_{ij}} \\
\\
\frac{\partial F^x_{whij,wh}}{\partial \Omega^{wh}_{ij}} &=
\frac{\partial F^L_{tyre,ij}}{\partial s^L_{ij}} \cdot    
\frac{\partial s^L_{ij}}{\partial \Omega^{wh}_{ij}} + \frac{\partial F^L_{tyre,ij}}{\partial s^S_{ij}} \cdot \frac{\partial s^S_{ij}}{\partial \Omega^{wh}_{ij}}\\
\\
\frac{\partial F^y_{whij,wh}}{\partial \Omega^{wh}_{ij}} &=
\frac{\partial F^S_{tyre,ij}}{\partial s^L_{ij}} \cdot 
\frac{\partial s^L_{ij}}{\partial \Omega^wh_{ij}} + \frac{\partial F^S_{tyre,ij}}{\partial s^S_{ij}} \cdot \frac{\partial s^S_{ij}}{\partial \Omega^{wh}_{ij}}
\end{split}$$\
$\frac{\partial s^L_{ij}}{\partial \Omega^{wh}_{ij}}$ and
$\frac{\partial s^S_{ij}}{\partial \Omega^{wh}_{ij}}$ are described in
\...\
$\frac{\partial F^L_{tyre,ij}}{\partial s^L_{ij}}$ ,
$\frac{\partial F^L_{tyre,ij}}{\partial s^S_{ij}}$,
$\frac{\partial F^S_{tyre,ij}}{\partial s^L_{ij}}$ and
$\frac{\partial F^S_{tyre,ij}}{\partial s^S_{ij}}$ are described in
\...\

#### $\dot{\omega}^z_{0B,B}$

##### ========= $\partial \dot{\omega}^z_{0B,B} / \partial v^x_{0B,B}$ =========

$$\label{eq:230}
\frac{\partial \dot{\omega}^z_{0B,B}}{\partial v^x_{0B,B}} =
\frac{1}{\Theta_z} \cdot \{\frac{\partial T_{Tz}}{\partial v^x_{0B,B}} + \frac{\partial T_{Fx}}{\partial v^x_{0B,B}} + \frac{\partial T_{Fy}}{\partial v^x_{0B,B}}\}$$\
From equation [\[eq:34\]](#eq:34){reference-type="ref"
reference="eq:34"}:\
$$\label{eq:231}
\begin{split}
\frac{\partial T_{Tz}}{\partial v^x_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial T^z_{whij,B}}{\partial v^x_{0B,B}}\\
\\
\frac{\partial T_{Fx}}{\partial v^x_{0B,B}} &= 
-\frac{\partial F^x_{whfl,B}}{\partial v^x_{0B,B}}\cdot b_{fl} 
+\frac{\partial F^x_{whfr,B}}{\partial v^x_{0B,B}}\cdot b_{fr}
-\frac{\partial F^x_{whrl,B}}{\partial v^x_{0B,B}}\cdot b_{rl}
+\frac{\partial F^x_{whrr,B}}{\partial v^x_{0B,B}}\cdot b_{rr}\\
\\
\frac{\partial T_{Fy}}{\partial v^x_{0B,B}} &= 
 \left( \frac{\partial F^y_{whfl,B}}{\partial v^x_{0B,B}} + \frac{\partial F^y_{whfr,B}}{\partial v^x_{0B,B}} \right) \cdot l_{f}
-\left( \frac{\partial F^y_{whrl,B}}{\partial v^x_{0B,B}} + \frac{\partial F^y_{whrr,B}}{\partial v^x_{0B,B}} \right) \cdot l_{r}\\
\end{split}$$\
$\frac{\partial F^x_{whij,B}}{\partial v^x_{0B,B}}$ and
$\frac{\partial F^y_{whij,B}}{\partial v^x_{0B,B}}$ is known from above\
\
From [\[eq:57b\]](#eq:57b){reference-type="ref" reference="eq:57b"}:
$$\label{eq:232}
\begin{split}
\frac{\partial T^z_{whij,B}}{\partial v^x_{0B,B}} &= 
\frac{\partial T^A_{tyre,ij}}{\partial v^x_{0B,B}}+\frac{\partial T^T_{tyre,ij}}{\partial v^x_{0B,B}}\\
\\
\frac{\partial T^A_{tyre,ij}}{\partial v^x_{0B,B}} &=
\frac{\partial T^A_{tyre,ij}}{\partial v^L_{wh,ij}} \cdot \frac{\partial v^L_{wh,ij}}{\partial v^x_{0B,B}}

+ \frac{\partial T^A_{tyre,ij}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^x_{0B,B}}\\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial v^x_{0B,B}} &=
  \frac{\partial T^T_{tyre,ij}}{\partial v^L_{wh,ij}} \cdot \frac{\partial v^L_{wh,ij}}{\partial v^x_{0B,B}} + 
  \frac{\partial T^T_{tyre,ij}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^x_{0B,B}}\\
  \end{split}$$\
  $\frac{\partial v^L_{wh,ij}}{\partial v^x_{0B,B}}$ and
  $\frac{\partial v^S_{wh,ij}}{\partial v^x_{0B,B}}$ are described in
  [\[eq:51b\]](#eq:51b){reference-type="ref" reference="eq:51b"}\
  \
  From equation [\[eq:57a\]](#eq:57a){reference-type="ref"
  reference="eq:57a"}\
  $$\label{eq:233}
  \begin{split}
  \frac{\partial T^A_{tyre,ij}}{\partial v^L_{wh,ij}} &= 
  \frac{\partial T^A_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^L_{wh,ij}} 
+ \frac{\partial T^A_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^L_{wh,ij}} \\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial v^L_{wh,ij}} &= 
  \frac{\partial T^T_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^L_{wh,ij}} 
+ \frac{\partial T^T_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^L_{wh,ij}} \\
  \\
  \frac{\partial T^A_{tyre,ij}}{\partial v^S_{wh,ij}} &= 
  \frac{\partial T^A_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^S_{wh,ij}} 
+ \frac{\partial T^A_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^S_{wh,ij}} \\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial v^S_{wh,ij}} &= 
  \frac{\partial T^T_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^S_{wh,ij}} 
+ \frac{\partial T^T_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^S_{wh,ij}}
  \end{split}$$\
  The partial derivation of tyre torques and slip are described in
  [\[eq:97b\]](#eq:97b){reference-type="ref" reference="eq:97b"}\

##### ========= $\partial \dot{\omega}^z_{0B,B} / \partial v^y_{0B,B}$ =========

$$\label{eq:230a}
\frac{\partial \dot{\omega}^z_{0B,B}}{\partial v^y_{0B,B}} =
\frac{1}{\Theta_z} \cdot \{\frac{\partial T_{Tz}}{\partial v^y_{0B,B}} + \frac{\partial T_{Fx}}{\partial v^y_{0B,B}} + \frac{\partial T_{Fy}}{\partial v^y_{0B,B}}\}$$\
From equation [\[eq:34\]](#eq:34){reference-type="ref"
reference="eq:34"}:\
$$\label{eq:231a}
\begin{split}
\frac{\partial T_{Tz}}{\partial v^y_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial T^z_{whij,B}}{\partial v^y_{0B,B}}\\
\\
\frac{\partial T_{Fx}}{\partial v^y_{0B,B}} &= 
-\frac{\partial F^x_{whfl,B}}{\partial v^y_{0B,B}}\cdot b_{fl} 
+\frac{\partial F^x_{whfr,B}}{\partial v^y_{0B,B}}\cdot b_{fr}
-\frac{\partial F^x_{whrl,B}}{\partial v^y_{0B,B}}\cdot b_{rl}
+\frac{\partial F^x_{whrr,B}}{\partial v^y_{0B,B}}\cdot b_{rr}\\
\\
\frac{\partial T_{Fy}}{\partial v^y_{0B,B}} &= 
\left( \frac{\partial F^y_{whfl,B}}{\partial v^y_{0B,B}} + \frac{\partial F^y_{whfr,B}}{\partial v^y_{0B,B}} \right) \cdot l_{f}
-\left( \frac{\partial F^y_{whrl,B}}{\partial v^y_{0B,B}} + \frac{\partial F^y_{whrr,B}}{\partial v^y_{0B,B}} \right) \cdot l_{r}\\
\end{split}$$\
$\frac{\partial F^x_{whij,B}}{\partial v^y_{0B,B}}$ and
$\frac{\partial F^y_{whij,B}}{\partial v^y_{0B,B}}$ is known from above\
\
From [\[eq:57b\]](#eq:57b){reference-type="ref" reference="eq:57b"}:
$$\label{eq:232a}
\begin{split}
\frac{\partial T^z_{whij,B}}{\partial v^y_{0B,B}} &= 
\frac{\partial T^A_{tyre,ij}}{\partial v^y_{0B,B}}+\frac{\partial T^T_{tyre,ij}}{\partial v^y_{0B,B}}\\
\\
\frac{\partial T^A_{tyre,ij}}{\partial v^y_{0B,B}} &=
\frac{\partial T^A_{tyre,ij}}{\partial v^L_{wh,ij}} \cdot \frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}}

+ \frac{\partial T^A_{tyre,ij}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}\\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial v^y_{0B,B}} &=
  \frac{\partial T^T_{tyre,ij}}{\partial v^L_{wh,ij}} \cdot \frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}} + 
  \frac{\partial T^T_{tyre,ij}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}\\
  \end{split}$$\
  $\frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}}$ and
  $\frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}$ are described in
  [\[eq:51b\]](#eq:51b){reference-type="ref" reference="eq:51b"}\
  \
  Rest see [\[eq:233\]](#eq:233){reference-type="ref" reference="eq:233"}\

##### ========= $\partial \dot{\omega}^z_{0B,B} / \partial \omega^z_{0B,B}$ =========

$$\label{eq:234}
\frac{\partial \dot{\omega}^z_{0B,B}}{\partial \omega^z_{0B,B}} =
\frac{1}{\Theta_z} \cdot \{\frac{\partial T_{Tz}}{\partial \omega^z_{0B,B}} + \frac{\partial T_{Fx}}{\partial \omega^z_{0B,B}} + \frac{\partial T_{Fy}}{\partial \omega^z_{0B,B}}\}$$\
\
$$\label{eq:234a}
\begin{split}
\frac{\partial T_{Tz}}{\partial \omega^z_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial T^z_{whij,B}}{\partial \omega^z_{0B,B}}\\
\\
\frac{\partial T_{Fx}}{\partial \omega^z_{0B,B}} &= 
-\frac{\partial F^x_{whfl,B}}{\partial \omega^z_{0B,B}}\cdot b_{fl} 
+\frac{\partial F^x_{whfr,B}}{\partial \omega^z_{0B,B}}\cdot b_{fr}
-\frac{\partial F^x_{whrl,B}}{\partial \omega^z_{0B,B}}\cdot b_{rl}
+\frac{\partial F^x_{whrr,B}}{\partial \omega^z_{0B,B}}\cdot b_{rr}\\
\\
\frac{\partial T_{Fy}}{\partial\omega^z_{0B,B}} &= 
\left( \frac{\partial F^y_{whfl,B}}{\partial \omega^z_{0B,B}} + \frac{\partial F^y_{whfr,B}}{\partial \omega^z_{0B,B}} \right) \cdot l_{f}
-\left( \frac{\partial F^y_{whrl,B}}{\partial \omega^z_{0B,B}} + \frac{\partial F^y_{whrr,B}}{\partial \omega^z_{0B,B}} \right) \cdot l_{r}\\
\end{split}$$\
$\frac{\partial F^x_{whij,B}}{\partial \omega^z_{0B,B}}$ is described in
[\[eq:228c\]](#eq:228c){reference-type="ref" reference="eq:228c"} and
$\frac{\partial F^y_{whij,B}}{\partial \omega^z_{0B,B}}$ is described in
[\[eq:229b\]](#eq:229b){reference-type="ref" reference="eq:229b"}\
\
From [\[eq:57b\]](#eq:57b){reference-type="ref" reference="eq:57b"}:
$$\label{eq:234b}
\begin{split}
\frac{\partial T^z_{whij,B}}{\partial \omega^z_{0B,B}} &= 
\frac{\partial T^A_{tyre,ij}}{\partial \omega^z_{0B,B}}+\frac{\partial T^T_{tyre,ij}}{\partial \omega^z_{0B,B}}\\
\\
\frac{\partial T^A_{tyre,ij}}{\partial \omega^z_{0B,B}} &=
\frac{\partial T^A_{tyre,ij}}{\partial v^L_{wh,ij}} \cdot \frac{\partial v^L_{wh,ij}}{\partial \omega^z_{0B,B}}

+ \frac{\partial T^A_{tyre,ij}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial \omega^z_{0B,B}}\\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial \omega^z_{0B,B}} &=
  \frac{\partial T^T_{tyre,ij}}{\partial v^L_{wh,ij}} \cdot \frac{\partial v^L_{wh,ij}}{\partial \omega^z_{0B,B}} + 
  \frac{\partial T^T_{tyre,ij}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial \omega^z_{0B,B}}
  \end{split}$$

$\frac{\partial T^A_{tyre,ij}}{\partial v^L_{wh,ij}}$,
$\frac{\partial T^T_{tyre,ij}}{\partial v^L_{wh,ij}}$,$\frac{\partial T^A_{tyre,ij}}{\partial v^S_{wh,ij}}$
and $\frac{\partial T^T_{tyre,ij}}{\partial v^S_{wh,ij}}$ see
[\[eq:233\]](#eq:233){reference-type="ref" reference="eq:233"}\
$\frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}}$ and
$\frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}$ are described in
[\[eq:51b\]](#eq:51b){reference-type="ref" reference="eq:51b"}\

##### ========= $\partial \dot{\omega}^z_{0B,B} / \partial \Omega^{wh}_{ij}$ =========

From equation [\[eq:38\]](#eq:38){reference-type="ref"
reference="eq:38"} and [\[eq:31a\]](#eq:31a){reference-type="ref"
reference="eq:31a"}\
$$\label{eq:235}
\frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega^{wh}_{ij}} =
\frac{1}{\Theta_z} \cdot \{\frac{\partial T_{Tz}}{\partial \Omega^{wh}_{ij}} + \frac{\partial T_{Fx}}{\partial \Omega^{wh}_{ij}} + \frac{\partial T_{Fy}}{\partial \Omega^{wh}_{ij}}\}$$\
From equation [\[eq:34\]](#eq:34){reference-type="ref"
reference="eq:34"}:\
$$\label{eq:235a}
\begin{split}
\frac{\partial T_{Tz}}{\partial \Omega^{wh}_{ij}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial T^z_{whij,B}}{\partial \Omega^{wh}_{ij}}\\
\\
\frac{\partial T_{Fx}}{\partial \Omega^{wh}_{ij}} &= 
-\frac{\partial F^x_{whfl,B}}{\partial \Omega^{wh}_{ij}}\cdot b_{fl} 
+\frac{\partial F^x_{whfr,B}}{\partial \Omega^{wh}_{ij}}\cdot b_{fr}
-\frac{\partial F^x_{whrl,B}}{\partial \Omega^{wh}_{ij}}\cdot b_{rl}
+\frac{\partial F^x_{whrr,B}}{\partial \Omega^{wh}_{ij}}\cdot b_{rr}\\
\\
\frac{\partial T_{Fy}}{\partial \Omega^{wh}_{ij}} &= 
\left( \frac{\partial F^y_{whfl,B}}{\partial \Omega^{wh}_{ij}} + \frac{\partial F^y_{whfr,B}}{\partial \Omega^{wh}_{ij}} \right) \cdot l_{f}
-\left( \frac{\partial F^y_{whrl,B}}{\partial \Omega^{wh}_{ij}} + \frac{\partial F^y_{whrr,B}}{\partial \Omega^{wh}_{ij}} \right) \cdot l_{r}\\
\end{split}$$\
\
For the first part $\frac{\partial T_{Tz}}{\partial \Omega^{wh}_{ij}}$
we get from [\[eq:57b\]](#eq:57b){reference-type="ref"
reference="eq:57b"}:\
$$\label{eq:235b}
\begin{split}
\frac{\partial T^z_{whij,B}}{\partial \Omega^{wh}_{ij}} &= 
\frac{\partial T^A_{tyre,ij}}{\partial \Omega^{wh}_{ij}}+\frac{\partial T^T_{tyre,ij}}{\partial \Omega^{wh}_{ij}}\\
\\
\frac{\partial T^A_{tyre,ij}}{\partial \Omega^{wh}_{ij}} &=
\frac{\partial T^A_{tyre,ij}}{\partial s^L_{wh,ij}} \cdot \frac{\partial s^L_{wh,ij}}{\partial \Omega^{wh}_{ij}}

+ \frac{\partial T^A_{tyre,ij}}{\partial s^S_{wh,ij}} \cdot \frac{\partial s^S_{wh,ij}}{\partial \Omega^{wh}_{ij}}
+ \frac{\partial T^A_{tyre,ij}}{\partial s^T_{wh,ij}} \cdot \frac{\partial s^T_{wh,ij}}{\partial \Omega^{wh}_{ij}}\\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial \Omega^{wh}_{ij}} &=
  \frac{\partial T^T_{tyre,ij}}{\partial s^L_{wh,ij}} \cdot \frac{\partial s^L_{wh,ij}}{\partial \Omega^{wh}_{ij}} + 
  \frac{\partial T^T_{tyre,ij}}{\partial s^S_{wh,ij}} \cdot \frac{\partial s^S_{wh,ij}}{\partial \Omega^{wh}_{ij}}
  +\frac{\partial T^T_{tyre,ij}}{\partial s^T_{wh,ij}} \cdot \frac{\partial s^T_{wh,ij}}{\partial \Omega^{wh}_{ij}}\\
  \end{split}$$\
  \
  With equation [\[eq:97b\]](#eq:97b){reference-type="ref"
  reference="eq:97b"} and [\[eq:97e\]](#eq:97e){reference-type="ref"
  reference="eq:97e"} the derivation of tyre torques about slip is
  defined. But
  $\frac{\partial T^T_{tyre,ij}}{\partial s^L_{wh,ij}}=\frac{\partial T^T_{tyre,ij}}{\partial s^S_{wh,ij}}=0$
  and $\frac{\partial T^A_{tyre,ij}}{\partial s^T_{wh,ij}}=0$ could be
  negelected. The derivation of slip about $\Omega$ are described in
  [\[eq:60\]](#eq:60){reference-type="ref" reference="eq:60"},
  [\[eq:61\]](#eq:61){reference-type="ref" reference="eq:61"} and
  [\[eq:97f\]](#eq:97f){reference-type="ref" reference="eq:97f"}\
  \
  $$\label{eq:235c}
  \begin{split}
  \frac{\partial T^A_{tyre,ij}}{\partial \Omega^{wh}_{ij}} &=
  \frac{\partial T^A_{tyre,ij}}{\partial s^L_{wh,ij}} \cdot \frac{\partial s^L_{wh,ij}}{\partial \Omega^{wh}_{ij}}
+ \frac{\partial T^A_{tyre,ij}}{\partial s^S_{wh,ij}} \cdot \frac{\partial s^S_{wh,ij}}{\partial \Omega^{wh}_{ij}}\\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial \Omega^{wh}_{ij}} &=
  \frac{\partial T^T_{tyre,ij}}{\partial s^T_{wh,ij}} \cdot \frac{\partial s^T_{wh,ij}}{\partial \Omega^{wh}_{ij}}\\
  \end{split}$$\
  For the second part $\frac{\partial T_{Fx}}{\partial \Omega^{wh}_{ij}}$
  we assume that forces from one wheel $ij$ is only influenced by
  $\Omega_{ij}$, its own wheel.\
  $$\label{eq:235d}
  \begin{split}
  \frac{\partial T_{Fx}}{\partial \Omega^{wh}_{fl}} &= 
  -\frac{\partial F^x_{whfl,B}}{\partial \Omega^{wh}_{fl}}\cdot b_{fl} \\
  \\
  \frac{\partial T_{Fx}}{\partial \Omega^{wh}_{fr}} &= 
  +\frac{\partial F^x_{whfr,B}}{\partial \Omega^{wh}_{fr}}\cdot b_{fr}\\
  \\
  \frac{\partial T_{Fx}}{\partial \Omega^{wh}_{rl}} &= 
  -\frac{\partial F^x_{whrl,B}}{\partial \Omega^{wh}_{rl}}\cdot b_{rl}\\
  \\
  \frac{\partial T_{Fx}}{\partial \Omega^{wh}_{rr}} &= 
  +\frac{\partial F^x_{whrr,B}}{\partial \Omega^{wh}_{rr}}\cdot b_{rr}
  \end{split}$$\
  $\frac{\partial F^x_{whij,B}}{\partial \Omega^{wh}_{ij}}$ and
  $\frac{\partial F^x_{whij,B}}{\partial \Omega^{wh}_{ij}}$ are described
  in [\[eq:228d\]](#eq:228d){reference-type="ref" reference="eq:228d"} and
  [\[eq:229c\]](#eq:229c){reference-type="ref" reference="eq:229c"}\
  \
  \
  For the third part $\frac{\partial T_{Fy}}{\partial \Omega^{wh}_{ij}}$
  we get\
  $$\label{eq:235e}
  \begin{split}
  \frac{\partial T_{Fy}}{\partial \Omega^{wh}_{fl}} &= 
  \frac{\partial F^y_{whfl,B}}{\partial \Omega^{wh}_{fl}}  \cdot l_{f}\\
  \\
  \frac{\partial T_{Fy}}{\partial \Omega^{wh}_{fr}} &= 
  \frac{\partial F^y_{whfr,B}}{\partial \Omega^{wh}_{fr}} \cdot l_{f}\\
  \\
  \frac{\partial T_{Fy}}{\partial \Omega^{wh}_{rl}} &= 
  -\frac{\partial F^y_{whrl,B}}{\partial \Omega^{wh}_{rl}} \cdot l_{r}\\
  \\
  \frac{\partial T_{Fy}}{\partial \Omega^{wh}_{rr}} &= 
  -\frac{\partial F^y_{whrr,B}}{\partial \Omega^{wh}_{ij}} \cdot l_{r}\\
  \end{split}$$\
  $\frac{\partial F^y_{whij,B}}{\partial \Omega^{wh}_{ij}}$ and
  $\frac{\partial F^y_{whij,B}}{\partial \Omega^{wh}_{ij}}$ are also
  described in [\[eq:228d\]](#eq:228d){reference-type="ref"
  reference="eq:228d"} and [\[eq:229c\]](#eq:229c){reference-type="ref"
  reference="eq:229c"}\
  \

### $\dot{\Omega}^{wh}_{ij}$, $ij=fl,fr,rl,rr$

From equation [\[eq:53\]](#eq:53){reference-type="ref"
reference="eq:53"} we get\
$$\label{eq:240}
\frac{\partial \dot{\Omega}_{ij}^{wh}}{\partial \Omega_{ij}^{wh}} = \frac{1}{\Theta_{ij}^{wh}} \cdot ( \frac{\partial T^{trans}_{ij}}{\partial \Omega_{ij}^{wh}} + \frac{\partial T^y_{wh,ij}}{\partial \Omega_{ij}^{wh}} - \frac{\partial T^{brake}_{ij}}{\partial \Omega_{ij}^{wh}}  )$$\
$\frac{\partial T^{trans}_{ij}}{\partial \Omega_{ij}^{wh}}$ is described
in [\[eq:206\]](#eq:206){reference-type="ref" reference="eq:206"}.\
\
For the tyre torque around the axle we get from
[\[eq:57b\]](#eq:57b){reference-type="ref" reference="eq:57b"} we get:\
$$\label{eq:241}
\frac{\partial T^y_{wh,ij}}{\partial \Omega_{ij}^{wh}}=
\frac{\partial T^R_{tyre,ij}}{\partial \Omega_{ij}^{wh}} 

- R^{dyn}_{ij}\cdot \frac{\partial F^L_{tyre,ij}}{\partial \Omega_{ij}^{wh}}$$

$\frac{\partial T^R_{tyre,ij}}{\partial \Omega_{ij}^{wh}}$ is described
in [\[eq:97g\]](#eq:97g){reference-type="ref" reference="eq:97g"},
$\frac{\partial F^L_{tyre,ij}}{\partial \Omega_{ij}^{wh}}$ in
[\[eq:229c\]](#eq:229c){reference-type="ref" reference="eq:229c"}\
\
$\frac{\partial T^{brake}_{ij}}{\partial \Omega_{ij}^{wh}}$ is described
in [\[eq:224\]](#eq:224){reference-type="ref" reference="eq:224"}\
