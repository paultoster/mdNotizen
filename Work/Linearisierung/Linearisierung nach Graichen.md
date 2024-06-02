# Linearisierung nach Graichen

SYSTEMTHEORIE
Theorie linearer Regelsysteme
Wintersemester 2013/2014
Prof. Dr.-Ing. Knut Graichen

1.4.2 Linearisierung um eine Trajektorie

Satz 1.7 (Linearisierung um eine Trajektorie) 

Es seien $x^*(t)$ und $y^*(t)$ die Lösungskurve des Systems

Eq. (1.75):

$$
\begin{aligned}
\dot{x} &=f(x,u)\\
x(t_0) &= x_0\\
y&=h(x,u)
\end{aligned}
$$

 fur eine Eingangstrajektorie $u(t) = u^*(t)$ und einen vorgegebenen Anfangswert $x_0 = x_0^*$. Die Abweichungen $\Delta x(t),\Delta y(t)$ von $x^*(t)$ und $y^*(t)$ bei hinreichend kleinen Anderungen $\Delta u(t)$ von $u^*(t)$ und $\Delta x_0(t)$ von $x_0^*(t)$ werden durch das lineare, zeitvariante System

Eq. (1.80):

$$
\begin{aligned}
\Delta \dot{x} &=A(t)\cdot \Delta x + B(t)\cdot \Delta u\\
\Delta x(t_0) &= x_0 - x^*_0\\
\Delta y &= C(t)\cdot \Delta x + D(t)\cdot \Delta u\\
\end{aligned}
$$

mit Eq. (1.81):

$$
A(t) = \frac{\partial f}{\partial x}|_{x^*(t),u^*(t)},
B(t) = \frac{\partial f}{\partial u}|_{x^*(t),u^*(t)},
C(t) = \frac{\partial h}{\partial x}|_{x^*(t),u^*(t)},
D(t) = \frac{\partial h}{\partial u}|_{x^*(t),u^*(t)}
$$

beschrieben. Das System (1.80), (1.81) wird als Linearisierung von (1.75) um die Trajektorie $x^*(t),u^*(t)$ bezeichnet.

Beispiel: Roboterarm

$$
\begin{aligned}
\dot{\phi} &=  \omega\\
\dot{\omega} &= \frac{-2\cdot m\cdot r\cdot v\cdot \omega + M(t)}{J_0 + J_1+m\cdot r^2} \\
\dot{r} &= v \\
\dot{v} &= r\cdot \omega^2 + \frac{1}{m}\cdot F(t) \\
\end{aligned}
$$

![](C:\Users\tftbe1\AppData\Roaming\marktext\images\2022-07-07-16-06-48-screenshot.127.jpg)

Zur Aufnahme eines WerkstÜckes soll der Roboterarm von einer ¨
Anfangsruhelage $x_{R,0}=[\phi^*_0, 0, r^*_0, 0]^T$ in eine Zielruhelage $x_{R,1}=[\phi^*_1, 0, r^*_1, 0]^T$ überführt werden. Dazu werden die folgenden Zeitfunktionen angesetzt

$$
\begin{aligned}
\phi^*(t) &=  \phi^*_0 + \frac{\phi^*_1-\phi^*_0}{2}\cdot [ 1- cos(\frac{\pi\cdot t}{T}) ]\\
r^*(t) &=  r^*_0 + \frac{r^*_1-r^*_0}{2}\cdot [ 1- cos(\frac{\pi\cdot t}{T}) ]\\
\end{aligned}
$$

Mit $\omega=\dot{\phi}$ und $v=\dot r$ erhält man die Solltrajektorie für den Zustand

$$
x^*(t) = \begin{bmatrix}
\phi^*(t) \\
\omega^*(t) \\
r^*(t) \\
\dot{r}^*(t)  \\
\end{bmatrix}
$$

Durch Auflösen der zweiten und vierten Differentialgleichung in (1.19) nach dem Moment M(t) und der Kraft F(t) erhält man direkt die Solltrajektorien für den Eingang

$$
\begin{aligned}
u^*(t) &=
\begin{bmatrix}
M^*(t) \\
F^*(t) 
\end{bmatrix}
= \begin{bmatrix}
2\cdot m\cdot r^*(t)\cdot v^*(t)\cdot \omega^*(t) + J^*(t) \cdot \dot{\omega}^*(t)\\
m\cdot [\dot{v}^*(t) - r^*(t)\cdot \omega^*(t)^2]
\end{bmatrix}\\
\\
J^*(t) &= J_0 + J_1+m\cdot r^*(t)^2
\end{aligned}
$$

Die Linearisierung des nichtlinearen Systems 

$$
A(t) =
\begin{bmatrix}
0 & 1 & 0 & 0\\
0 & \frac{-2\cdot m\cdot r^*(t)\cdot v^*(t)}{J^*(t)} & \frac{2\cdot m\cdot[\ r^*(t)\cdot M^*(t) +[J^*(t)+2\cdot  m\cdot r^*(t)]\cdot v^*(t)\cdot \omega^*(t)]}{J^*(t)^2} & \frac{-2\cdot m\cdot r^*(t)\cdot \omega^*(t)}{J^*(t)}\\
0 & 0\\
0 & 2\cdot r^*(t)\cdot \omega^*(t) & \omega^*(t)^2 & 0
\end{bmatrix}
$$

$$
B(t) =
\begin{bmatrix}
0 & 0\\
\frac{1}{J^*(t)} & 0\\
0 & 0\\
0 & \frac{1}{m}
\end{bmatrix}
$$
