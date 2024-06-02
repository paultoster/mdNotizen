# Kinematic Model

Determination of the equation of state equation

Eq1:

$$
\begin{aligned}
\dot{x} &=f(x,u)\\
y&=h(x,u)
\end{aligned}
$$

Kinematic**Modell A)** for a vehicle in horizontal movement without delay elements

Eq2:

$$
\dot{x}=\begin{bmatrix}\dot x_{Veh}\\\dot y_{Veh}\\\dot{\theta}\\\dot{v}\end{bmatrix}=\begin{bmatrix}
 v \cdot \cos{\theta}\\
 v \cdot \sin{\theta}\\
 v \cdot \frac{\tan \delta}{l}\\
 a
\end{bmatrix}
$$

$$
y = \begin{bmatrix}1 & 1 & 0 & 0\end{bmatrix} \cdot x
$$

$$
x=\begin{bmatrix} x_{Veh} \\ y_{Veh} \\ \theta \\ v \end{bmatrix} \hspace{10mm} u=\begin{bmatrix} \delta \\ v \\ \end{bmatrix} \hspace{10mm} y=\begin{bmatrix} x_{Veh} \\ y_{Veh} \\ \end{bmatrix}
$$

Kinematic**Model B)** for horizontal vehicle movement with delay elements

Eq3:

$$
\dot{x}=
  \begin{bmatrix}
    \dot x_{Veh}\\
    \dot y_{Veh}\\
    \dot{\theta}\\
    \dot{v} \\
    \dot{\delta} \\
    \dot{a} \\
  \end{bmatrix}
=
  \begin{bmatrix}
    v \cdot \cos{\theta}\\
    v \cdot \sin{\theta}\\
    v \cdot \frac{\tan \delta}{l}\\
    a\\
    -\frac{1}{T_{\delta}}\cdot \delta+\frac{1}{T_{\delta} }\cdot \delta_{req}\\
    -\frac{1}{T_{a}}\cdot a+\frac{1}{T_{a} }\cdot a_{req}
  \end{bmatrix}
$$

$$
y = \begin{bmatrix}1 & 1 & 0 & 0 & 0 & 0 \end{bmatrix} \cdot x
$$

$$
x = 
  \begin{bmatrix} 
    x_{Veh} \\ 
    y_{Veh} \\ 
    \theta \\ 
    v \\ 
    \delta \\ 
    a 
  \end{bmatrix} 
\hspace{10mm} 
u = 
  \begin{bmatrix} 
    \delta_{req} \\ 
    a_{req} 
  \end{bmatrix} 
\hspace{10mm} 
y = 
  \begin{bmatrix} 
    x_{Veh} \\ 
    y_{Veh} 
  \end{bmatrix}
$$

Model B) is Model A) with additional time delay elements PT1. In both cases are the state values measurable. For a PT2-behavior additional PT1 time delay elements must be added and the additional states have to be estimated.

With Euler-approach the system could be discrete. 

Eq4:

$$
y_{k+1}=y_k+h \cdot f(t_k,y_k) \quad,\quad k=0,1,2,\dots
$$

(Or with Heun-Approach )

Eq5:

$$
\begin{aligned}
y^{[P]}_{k+1}&=y_k+h \cdot f(t_k,y_k) \quad,\quad k=0,1,2,\dots\\
y_{k+1}&=y_k+\frac{1}{2}h\cdot (f(t_k,y_k)+f(t_{k+1},y^{[P]}_{k+1})) \quad,\quad k=0,1,2,\dots\\
y_{k+1}&=\frac{1}{2} y_k+ \frac{1}{2} (y_{k+1}^{[P]} + h\cdot f(t_{k+1},y^{[P]}_{k+1})) \quad,\quad k=0,1,2,\dots
\end{aligned}
$$

With Euler and step size $dt = h$

Eq6:

$$
\begin{aligned}
x_{d,k+1}&=\begin{bmatrix}
x_{Veh,k+1} \\
y_{Veh,k+1}  \\
\theta_{k+1} \\
v_{k+1} \\
\delta_{k+1} \\
a_{k+1} 
\end{bmatrix}=
\begin{bmatrix}
x_{Veh,k}   + h\cdot v_k \cdot \cos(\theta_k)\\
y_{Veh,k}   + h\cdot v_k \cdot \sin(\theta_k) \\
\theta_{k} +h\cdot v_k \cdot \frac{\tan(\delta_k)}{l}\\
v_{k} + h\cdot a_k\\
\delta_{k}+h\cdot\left(-\frac{1}{T_{\delta}}\cdot \delta_k+\frac{1}{T_{\delta} }\cdot \delta_{req,k}\right)\\
a_{k}+h\cdot\left(-\frac{1}{T_{a}}\cdot a_k+\frac{1}{T_{a} }\cdot a_{req,k}\right)
\end{bmatrix}\\
\end{aligned}
$$

$$
\begin{aligned}
x_{d,k+1}&= x_{d,k} + 
\begin{bmatrix}
h\cdot v_k \cdot \cos(\theta_k)\\
h\cdot v_k \cdot \sin(\theta_k) \\
h\cdot v_k \cdot \frac{\tan(\delta_k)}{l}\\
h\cdot a_k\\
h\cdot\left(-\frac{1}{T_{\delta}}\cdot \delta_k+\frac{1}{T_{\delta} }\cdot \delta_{req,k}\right)\\
h\cdot\left(-\frac{1}{T_{a}}\cdot a_k+\frac{1}{T_{a} }\cdot a_{req,k}\right)
\end{bmatrix}\\
y_{d,k} &= \begin{bmatrix}1 & 1 & 0 & 0 & 0 & 0 \end{bmatrix} \cdot x_{d,k}
\end{aligned}
$$

## Linearization

 With Graichen (see Grai) we are linearizing about the trajectory.

Eq7:

$$
\begin{aligned}
x_{d,k+1} &= x_{d,k}+\Delta x_{k+1} =f(x_{d,k}+\Delta x_k,u_{d,k}+\Delta u_k)\\
y_{d,k} &= y_{d,k-1}+\Delta y_{k} =h(x_{d,k}+\Delta x_k,u_{d,k}+\Delta u_k)\\
u_{d,k} &= u_{d,k-1} + \Delta u_k
\end{aligned}
$$

Linearized by a Taylor series:

Eq8:  

$$
\begin{aligned}
x_{d,k+1} &= x_{d,k}+\Delta x_{k+1} =f(x_{d,k},u_{d,k})
+\frac{\partial f}{\partial x_k}\cdot \Delta x_k
+\frac{\partial f}{\partial u_k}\cdot \Delta u_k\\
y_{d,k} &= y_{d,k-1}+\Delta y_{k} =h(x_{d,k},u_{d,k})
+\frac{\partial h}{\partial x_k}\cdot \Delta x_k
+\frac{\partial h}{\partial u_k}\cdot \Delta u_k\\
u_{d,k} &= u_{d,k-1} + \Delta u_k
\end{aligned}
$$

with matrices

Eq9:

$$
\begin{aligned}
\begin{bmatrix} 
\frac{\partial f_1}{\partial x_1} & \frac{\partial f_1}{\partial x_2} & ...\\
\frac{\partial f_2}{\partial x_1} & \frac{\partial f_2}{\partial x_2} & ...\\
.\\
.\\
.
\end{bmatrix} = A_d 
\begin{bmatrix} 
\frac{\partial f_1}{\partial u_1} & \frac{\partial f_1}{\partial u_2} & ...\\
\frac{\partial f_2}{\partial u_1} & \frac{\partial f_2}{\partial u_2} & ...\\
.\\
.\\
.
\end{bmatrix} = B_d\\
\begin{bmatrix} 
\frac{\partial h_1}{\partial x_1} & \frac{\partial h_1}{\partial x_2} & ...\\
\frac{\partial h_2}{\partial x_1} & \frac{\partial h_2}{\partial x_2} & ...\\
.\\
.\\
.
\end{bmatrix} = C_d 
\begin{bmatrix} 
\frac{\partial h_1}{\partial u_1} & \frac{\partial h_1}{\partial u_2} & ...\\
\frac{\partial h_2}{\partial u_1} & \frac{\partial h_2}{\partial u_2} & ...\\
.\\
.\\
.
\end{bmatrix} = D_d\\
\end{aligned}
$$

could the linearized part discribed as follows

Eq9:

$$
\begin{aligned}
\Delta x_{k+1} =A_d \cdot \Delta x_k
+B_d \cdot \Delta u_k\\
\Delta y_{k} =C_d \cdot \Delta x_k
+D_d \cdot \Delta u_k
\end{aligned}
$$

For the matrices

Eq10:

$$
\begin{aligned}
A_d &=
\begin{bmatrix}
1 & 0 & -h\cdot v_{d,k} \cdot \sin(\theta_{d,k}) & h\cdot \cos(\theta_{d,k}) & 0 & 0 \\
0 & 1 & h\cdot v_{d,k} \cdot \cos(\theta_{d,k})  & h\cdot \sin(\theta_{d,k}) & 0 & 0\\
0 & 0 & 1 & \frac{h}{l}\cdot \tan(\delta_{d,k})  & \frac{h \cdot v_{d,k}}{l} \cdot \frac{1}{\cos(\delta_{d,k})^2} & 0\\
0 & 0 & 0 & 1 &  0 & h\\
0 & 0 & 0 & 0 & 1-\frac{h}{T_{\delta}} & 0 \\
0 & 0 & 0 & 0 & 0 & 1-\frac{h}{T_{a}} \\
\end{bmatrix}\\
\\
B_d &=
\begin{bmatrix}
0 & 0  \\
0 & 0 \\
0 & 0 \\
0 & 0 \\
\frac{h}{T_{\delta}} & 0 \\
0 & \frac{h}{T_{a}} \\
\end{bmatrix}\\
\\
C_d &=
\begin{bmatrix}
1 & 0 & 0 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 & 0 & 0
\end{bmatrix}\\
\\
D_d &=0
\end{aligned}
$$

## Solution with linear discrete model predictive Control (DMPC)

1. Determine Parameter+
   
   1. Radstand $l$
   2. Zeitkonstante $T_{\delta}$
   3. Zeitkonstante $T_{a}$

2. Choose a stepsize h. Probably usefull between h = 10 ms - 100 ms 

3. Choose a horizont of prediction $N_p$   and control $N_c$ . Probably in a region of $T_p$ = 1 - 2 s => mit $h = 20 ms$ and $T_p=1 s$ wird $N_p=50$, (it is maybe too high, with $h= 100 ms$ is $N_p=10$, probably reduce $N_c$ 

4. Choose tuningparameter $r_{W,\delta}$ und $r_{w,a}$ , probablyy start with $r_{W,\delta}=r_{w,a} = 1.0$. Vector $\bar{R}$ will be build (siehe  [MPCLinearDiscrete.md](../MPC_Wang/MPCLinearDiscrete.md)  )

5. For every new timestpe: 
   
   1. get a trajectory mit x- und y-points, with points with a time distance of h and therefor $N_p$ points 
      
      Eq11:
      
      $\begin{bmatrix}x _{Traj}(k_i+1), x_{Traj}(k_i+2),...,x_{Traj}(k_i+N_p) \end{bmatrix}$ and $\begin{bmatrix}y _{Traj}(k_i+1), y_{Traj}(k_i+2),...,y_{Traj}(k_i+N_p) \end{bmatrix}$
   
   2. with measured or calculated  states 
      
      Eq12:
      
      $\begin{bmatrix} x_{Veh}(k_i) & y_{Veh}(k_i) & \theta(k_i) & v(k_i) & \delta(k_i) & a(k_i) \end{bmatrix}$
   
   3. With linearization we only have states  $\Delta x$ and $\Delta y$ , therefore an offset  of  $x_{Veh}(k_i)$ and $y_{Veh}(k_i)$ is calculated on the trajectory
      
      Eq13:
       $\begin{aligned}
       \bar {x}_{Traj}(k_i+j)&=x_{Traj}(k_i+j)-x_{Veh}(k_i)\\
       \bar {y}_{Traj}(k_i+j)&=y_{Traj}(k_i+j)-y_{Veh}(k_i)
       \end{aligned}
       $

6. With the states the matrices $A_d,B_d,C_d$ are calulated ($Eq10$).

7. The "augmented model" matrices $A_A, B_A, C_A$ are built (siehe  [MPCLinearDiscrete.md](../MPC_Wang/MPCLinearDiscrete.md)  )

8. From the trajectory points the target vector $R_s := N_p\cdot q \times 1$ is built  (siehe  [MPCLinearDiscrete.md](../MPC_Wang/MPCLinearDiscrete.md)  ). The trajectory points have to be sorted:
   
   Eq14: 
   
   $$
   R_s = 
\begin{bmatrix} 
\bar{x}_{Traj}(k_i+1) \\
\bar{y}_{Traj}(k_i+1) \\
\bar{x}_{Traj}(k_i+2) \\
\bar{y}_{Traj}(k_i+2) \\ 
. \\
. \\
. \\
\bar{x}_{Traj}(k_i+N_p) \\
\bar{y}_{Traj}(k_i+N_p) 
\end{bmatrix}
   $$

## Trajectory at front/rear axle

For front or rear axle position of trajectory we have to add parts from gear motion

Eq 15:

$$
\dot{x}=
\begin{bmatrix}
\dot x_{FA}\\
\dot y_{FA}\\
\dot{\theta}\\
\dot{v}
\end{bmatrix}=
\begin{bmatrix}
 v \cdot \cos{\theta} - \dot{\theta} \cdot l_f \cdot \sin\theta\\
 v \cdot \sin{\theta} + \dot{\theta} \cdot l_f \cdot \cos\theta\\
 v \cdot \frac{\tan \delta}{l}\\
 a
\end{bmatrix}
$$

$$
\dot{x}=
\begin{bmatrix}
\dot x_{FA}\\
\dot y_{FA}\\
\dot{\theta}\\
\dot{v}
\end{bmatrix}=
\begin{bmatrix}
 v \cdot \cos{\theta} - v \cdot \frac{l_f}{l} \cdot \tan \delta \cdot \sin\theta\\
 v \cdot \sin{\theta} + v \cdot \frac{l_f}{l} \cdot \tan \delta \cdot \cos\theta\\
 v \cdot \frac{\tan \delta}{l}\\
 a
\end{bmatrix}
$$

and for rear axle 

Eq 16:

$$
\dot{x}=
\begin{bmatrix}
\dot x_{RA}\\
\dot y_{RA}\\
\dot{\theta}\\
\dot{v}
\end{bmatrix}=
\begin{bmatrix}
 v \cdot \cos{\theta} + v \cdot \frac{l_f}{l} \cdot \tan \delta \cdot \sin\theta\\
 v \cdot \sin{\theta} - v \cdot \frac{l_f}{l} \cdot \tan \delta \cdot \cos\theta\\
 v \cdot \frac{\tan \delta}{l}\\
 a
\end{bmatrix}
$$

Eq 6 is then 
Eq 17:

$$
\begin{aligned}
x_{d,k+1}&=\begin{bmatrix}
x_{FA,k+1} \\
y_{FA,k+1}  \\
\theta_{k+1} \\
v_{k+1} \\
\delta_{k+1} \\
a_{k+1} 
\end{bmatrix}=
\begin{bmatrix}
x_{FA,k}   + h\cdot v_k \cdot ( \cos \theta_k - \frac{l_f}{l} \cdot \tan \delta_k \cdot \sin\theta_k)\\
y_{FA,k}   + h\cdot v_k \cdot ( \sin \theta_k + \frac{l_f}{l} \cdot \tan \delta_k \cdot \cos\theta_k)\\
\theta_{k} +h\cdot v_k \cdot \frac{\tan(\delta_k)}{l}\\
v_{k} + h\cdot a_k\\
\delta_{k}+h\cdot\left(-\frac{1}{T_{\delta_k}}\cdot \delta_k+\frac{1}{T_{\delta} }\cdot \delta_{req,k}\right)\\
a_{k}+h\cdot\left(-\frac{1}{T_{a}}\cdot a_k+\frac{1}{T_{a} }\cdot a_{req,k}\right)
\end{bmatrix}\\
\end{aligned}
$$

Eq 10 is 

Eq 18:

$$
\begin{aligned}
A_d &=
\begin{bmatrix}
1 & 0 & 
-h\cdot v_{d,k} \cdot ( \sin(\theta_{d,k})+ \frac{l_f}{l} \cdot \tan \delta \cdot \cos(\theta_{d,k})) &
h\cdot (\cos(\theta_{d,k})- \frac{l_f}{l} \cdot \tan \delta \cdot \sin(\theta_{d,k})) &
-\frac{h\cdot v_{d,k}\cdot l_f}{l}\cdot \frac{\sin(\theta_{d,k})}{\cos(\delta_{d,k})^2} & 
0 
\\
0 & 1 & 
h\cdot v_{d,k} \cdot (\cos(\theta_{d,k}) - \frac{l_f}{l} \cdot \tan \delta \cdot \sin(\theta_{d,k}))  &
h\cdot (\sin(\theta_{d,k}) + \frac{l_f}{l} \cdot \tan \delta \cdot \cos(\theta_{d,k})) &
\frac{h\cdot v_{d,k}\cdot l_f}{l}\cdot \frac{\cos(\theta_{d,k})}{\cos(\delta_{d,k})^2} &
0
\\
0 & 0 &
1 & 
\frac{h}{l}\cdot \tan(\delta_{d,k})  & 
\frac{h \cdot v_{d,k}}{l} \cdot \frac{1}{\cos(\delta_{d,k})^2} & 
0
\\
0 & 0 & 0 & 1 &  0 & h\\
0 & 0 & 0 & 0 & 1-\frac{h}{T_{\delta}} & 0 \\
0 & 0 & 0 & 0 & 0 & 1-\frac{h}{T_{a}} \\
\end{bmatrix}\\
\\
B_d &=
\begin{bmatrix}
0 & 0  \\
0 & 0 \\
0 & 0 \\
0 & 0 \\
\frac{h}{T_{\delta}} & 0 \\
0 & \frac{h}{T_{a}} \\
\end{bmatrix}\\
\\
C_d &=
\begin{bmatrix}
1 & 0 & 0 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 & 0 & 0
\end{bmatrix}\\
\\
D_d &=0
\end{aligned}
$$

...

| short | source                                                                                                                        |
| ----- | ----------------------------------------------------------------------------------------------------------------------------- |
| Grai  | METHODEN DER OPTIMIERUNG  UND OPTIMALEN STEUERUNG<br/>Wintersemester 2012/2013, Prof. Dr.-Ing. Knut Graichen, Universität Ulm |
|       |                                                                                                                               |