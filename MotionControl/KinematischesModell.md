Bestimmung der Zustandsgleichung
$$
\begin{align}
\dot{x} &=f(x,u)\\
y&=h(x,u)
\end{align}
$$




Kinematisches **Modell A)** für ein Fahrzeug in horizontaler Bewegung ohne Verzögerungsglieder

$$
\dot{x}=\begin{bmatrix}\dot x_{Veh}\\\dot y_{Veh}\\\dot{\theta}\\\dot{v}\end{bmatrix}=\begin{bmatrix}
 v \cdot \cos{\phi}\\
 v \cdot \sin{\phi}\\
 v \cdot \frac{\tan \delta}{l}\\
 a
\end{bmatrix}\\
\\
y = \begin{bmatrix}1 & 1 & 0 & 0\end{bmatrix} \cdot x
$$
$$
x=\begin{bmatrix} x_{Veh} \\ y_{Veh} \\ \theta \\ v \end{bmatrix} \hspace{10mm} u=\begin{bmatrix} \delta \\ v \\ \end{bmatrix} \hspace{10mm} y=\begin{bmatrix} x_{Veh} \\ y_{Veh} \\ \end{bmatrix}
$$

Kinematisches **Modell B)** für ein Fahrzeug in horizontaler Bewegung mit Verzögerungsglieder
$$
\dot{x}=\begin{bmatrix}\dot x_{Veh}\\\dot y_{Veh}\\\dot{\theta}\\\dot{v}\\\dot{\delta}\\\dot{a}\end{bmatrix}=\begin{bmatrix}
 v \cdot \cos{\phi}\\
 v \cdot \sin{\phi}\\
 v \cdot \frac{\tan \delta}{l}\\
 a\\
 -\frac{1}{T_{\delta}}\cdot \delta+\frac{1}{T_{\delta} }\cdot \delta_{req}\\
 -\frac{1}{T_{a}}\cdot a+\frac{1}{T_{a} }\cdot a_{req}
\end{bmatrix}\\
$$

$$
y = \begin{bmatrix}1 & 1 & 0 & 0 & 0 &0\end{bmatrix} \cdot x
$$


$$
x=\begin{bmatrix} x_{Veh} \\ y_{Veh} \\ \theta \\ v \\ \delta \\ a \end{bmatrix} \hspace{10mm} u=\begin{bmatrix} \delta_{req} \\ a_{req} \\ \end{bmatrix} \hspace{10mm} y=\begin{bmatrix} x_{Veh} \\ y_{Veh} \\ \end{bmatrix}
$$

Modell B) entspricht Modell A) mit zusätzlichen Zeitverzögerungsglieder PT1. In beiden Fällen sind die Zustandsgrößen vorhanden. Für eine PT2-Verhalten müsste ein weiteres Verzögerungsglied verwendet werden und der Zustand müsste geschätzt werden.

Mit Euler kann das System diskretisiert werden. 

(Weitere Möglichkeit mit Heun )
$$
y^{[P]}_{k+1}=y_k+hf(t_k,y_k) \quad,\quad k=0,1,2,\dots\\
y_{k+1}=y_k+\frac{1}{2}h(f(t_k,y_k)+f(t_{k+1},y^{[P]}_{k+1})) \quad,\quad k=0,1,2,\dots\\
y_{k+1}=\frac{1}{2} y_k+ \frac{1}{2} (y_{k+1}^{[P]} + h f(t_{k+1},y^{[P]}_{k+1})) \quad,\quad k=0,1,2,\dots
$$


Mit Euler uns Schrittweite $dt = h$
$$
x_{k+1}=\begin{bmatrix}
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
\end{bmatrix}
$$

## Linearisierung ##

 Nach Graichen wir hier eine Linearisierung um eine Trajektorie gemacht.


$$
\begin{align}
x_{d,k+1}+\Delta x_{k+1} =f(x_{d,k}+\Delta x_k,u_{d,k}+\Delta u_k)\\
y_{d,k}+\Delta y_{k} =h(x_{d,k}+\Delta x_k,u_{d,k}+\Delta u_k)
\end{align}
$$
Mit Taylorreihe ist linearisiert:  


$$
\begin{align}
x_{d,k+1}+\Delta x_{k+1} =f(x_{d,k},u_{d,k})
+\frac{\partial f}{\partial x_k}\cdot \Delta x_k
+\frac{\partial f}{\partial u_k}\cdot \Delta u_k\\
y_{d,k}+\Delta y_{k} =h(x_{d,k},u_{d,k})
+\frac{\partial h}{\partial x_k}\cdot \Delta x_k
+\frac{\partial h}{\partial u_k}\cdot \Delta u_k
\end{align}
$$

mit
$$
\begin{align}
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
\end{align}
$$
kann man den linearen Teil wie folgt schreiben
$$
\begin{align}
\Delta x_{k+1} =A_d \cdot \Delta x_k
+B_d \cdot \Delta u_k\\
\Delta y_{k} =C_d \cdot \Delta x_k
+D_d \cdot \Delta u_k
\end{align}
$$
Für die kinematische Gleichung ergibt sich:
$$
\begin{align}\label{eq:AD}
A_d &=
\begin{bmatrix}
1 & 0 & -h\cdot v_{d,k} \cdot \sin(\theta_{d,k}) & h\cdot \cos(\theta_{d,k}) & 0 & 0 \\
0 & 1 & h\cdot v_{d,k} \cdot \cos(\theta_{d,k})  & h\cdot v_{d,k} \cdot \sin(\theta_{d,k}) & 0 & 0\\
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
\end{align}
$$





## Lösungsansatz mit linearer diskreter modelprädiktiver Regelung (DMPC) ##

1. Die Parameter müssen bestimmt werden

   1. Radstand $l$
   2. Zeitkonstante $T_{\delta}$
   3. Zeitkonstante $T_{a}$

2. Wähle eine Abtastzeit h. Wahrscheinlich sinnvoll zwischen h = 10 ms - 100 ms zu experimentieren

3. Wähle einen Horizont der Prädiktion $N_p$   und Kontrolle $N_c$ . Wahrscheinlich im Bereich $T_p$ = 1 - 2 sec => mit $h = 20 ms$ und $T_p=1 s$ wird $N_p=50$, was mir sehr viel erscheint. Vielleicht sollte man dann auch $N_c$ reduzieren. Bei $h= 100 ms$ wird $N_p=10$

4. Tuningparameter $r_{W,\delta}$ und $r_{w,a}$ wählen, wahrscheinlich mal mit $r_{W,\delta}=r_{w,a} = 1.0$. Damit wird der Vektor $\bar{R}$ gebildet (siehe [Beschreibung DMPC](D:\wdata\typora\MotionControl\MPCLinearDiscrete.md\MPCLinearDiscrete.cmd))

5. Zu jedem neuen Rechenzeitpunkt kommt 

   1. eine Trajektorie mit x- und y-Punkte, deren Punkte in einem zeitlichen Abstand h liegen und somit $N_p$ Punkte besitzt     $\begin{bmatrix}x _{Traj}(k_i+1), x_{Traj}(k_i+2),...,x_{Traj}(k_i+N_p) \end{bmatrix}$  und $\begin{bmatrix}y _{Traj}(k_i+1), y_{Traj}(k_i+2),...,y_{Traj}(k_i+N_p) \end{bmatrix}$  

   2. gemessene oder berechnete Zustandsgrößen $\begin{bmatrix} x_{Veh}(k_i) & y_{Veh}(k_i) & \theta(k_i) & v(k_i) & \delta(k_i) & a(k_i) \end{bmatrix}$

   3. Da durch die Linearisierung sich nur Zustände  $\Delta x$ und $\Delta y$ ergeben, wird die Trajektorie um $x_{Veh}(k_i)$ und $y_{Veh}(k_i)$ Offsetverschoben:
      $$
      \begin{align}
      \bar {x}_{Traj}(ki+j)&=x_{Traj}(ki+j)-x_{Veh}(k_i)\\
      \bar {y}_{Traj}(ki+j)&=y_{Traj}(ki+j)-y_{Veh}(k_i)
      \end{align}
      $$

   4. 

   

   4. Mit den Zustandsgrößen werden die Matrizen $A_d,B_d,C_d$ berechnet ($\ref{eq:AD}$).
   5. Daraus werden die "augmented model" Matrizen $A_A, B_A, C_A$ gebildet (siehe [Beschreibung DMPC](D:\wdata\typora\MotionControl\MPCLinearDiscrete.md\MPCLinearDiscrete.cmd))
   6. Aus den Trajektorienpunkte wird der Zielvektor $R_s := N_p\cdot q \times 1$ gebildet (siehe [Beschreibung DMPC](D:\wdata\typora\MotionControl\MPCLinearDiscrete.md\MPCLinearDiscrete.cmd)). Dabei müssen die Trajektorienpunkte umsortiert werden $R_s=\begin{bmatrix} \bar{x}_{Traj}(k_i+1) & \bar{y}_{Traj}(k_i+1) &\bar{x}_{Traj}(k_i+2) & \bar{y}_{Traj}(k_i+2) & ... & \bar{x}_{Traj}(k_i+N_p) & \bar{y}_{Traj}(k_i+N_p) \end{bmatrix}^T$
   7. 

   