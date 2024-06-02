# Solving a matrix differential equation using Runge-Kutta methods

source:
https://math.stackexchange.com/questions/2946737/solving-a-matrix-differential-equation-using-runge-kutta-methods

Runge-Kutta methods considers them problem 

$\dot{x}=f(t,x)$           with $x(t0)=x0$ and wants to find $x(t)$ at $t=t0+nh$ for $n=1,2,3,....$ In the case $f(t,x)=Ax+Bu$, so you have choose how to interpret u as a function of time. Often u is also only sampled every h time units, so two options would be to assume u to be constant between sample steps (zero order hold), or perform linear interpolation (first order hold). If u is know continuously, then you can directly evaluate u(t) at the give sub time steps of the Runge-Kutta method.

For example when using [the fourth order Runge-Kutta method](https://en.wikipedia.org/wiki/Runge%E2%80%93Kutta_methods#The_Runge%E2%80%93Kutta_method) with zero order hold, using $xn=x(t0+nh)$ and $un=u(t0+nh)$, you get

$$
\begin{align}
x_{n+1} &=x_{n} + \frac{1}{6}\cdot (k1+2\cdot k2+2\cdot k3+k4)\\
 k_1 &= h\cdot(A\cdot x_n  +B\cdot u_n)\\

 k_2 &= h\cdot(A\cdot (x_n+k_1/2)  +B\cdot u_n)\\
 k_3 &= h\cdot(A\cdot (x_n+k_2/2)  +B\cdot u_n)\\
 k_4 &= h\cdot(A\cdot (x_n+k_3)  +B\cdot u_n)
\end{align}
$$

Substituting these equations into each other gives

$$
x_{n+1}= \lparen I + h\cdot A + \frac{h^2}{2!}\cdot A^2 + \frac{h^3}{3!}\cdot A^3 \rparen \cdot x_n \\
+ \lparen h\cdot I + h^2\cdot A + \frac{h^3}{2!}\cdot A^2 + \frac{h^4}{3!}\cdot A^3 \rparen \cdot B \cdot u\\
$$

 which is just the fourth order approximation of the [zero order hold discretization](https://en.wikipedia.org/wiki/Discretization#Discretization_of_linear_state_space_models), which can be expressed as

$$
\begin{align}
x_{n+1} &= e^{A\cdot h} \cdot x_n + A^{-1}\cdot (e^{A\cdot h} -I)\cdot B \cdot u_n\\
e^{A\cdot h} &= \sum_{i=0}^{\infty}\frac{1}{i!}\cdot(A\cdot h)^i
\end{align}
$$

Similarly one would obtain a fourth order approximation of the first order hold discretization when using first order hold for u. So when u is sampled every h time units and the system is LTI then using Runge-Kutta would just be an approximation of known discretization methods and you might as well use those methods instead. However if the sample frequency is sufficiently high compared to the system dynamics, then the difference between Runge-Kutta and the discretization methods should become negligible. If $u(t)$ is known at all time then Runge-Kutta might give more accurate results then the other mentioned discetization methods. And for LPV or LTV systems Runge-Kutta discretization should work as well, as long as the sample frequency is high enough.
