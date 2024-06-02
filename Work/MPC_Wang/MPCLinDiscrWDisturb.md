# 2. MPC, Linear Discrete with  Disturbance

Nach  "Liuping Wang; Model Predictive Control System Design and Implementation Using MATLAB; 2009; Introduction to DMPC (Ch. 1) +  DMPC with constraints (Ch. 2)"

## Discrete Model

For MIMO-System with **n-states**, **m-inputs**, **q-outputs** (q $\leqslant$ m) and **o-disturbance**

model description, linear and discrete

Eq2.1:

$$
\begin{aligned}
x_d(k+1) &= A_d \cdot x_d(k) + B_d \cdot u(k) + E_d \cdot \nu_d(k)\\
y(k    ) &= C_d \cdot x_d(k)
\end{aligned}

$$

| variable | dimension    | comment               |
| -------- | ------------ | --------------------- |
| $x_d(k)$ | $n\times 1$, | state-vector          |
| $A_d$    | $n\times n$  | discrete state matrix |
| $u(k)$   | $m\times 1$  | input-vector          |
| $B_d$    | $n\times m$  | input-matrix          |
| $y(k)$   | $q\times 1$  | output-vector         |
| $C_d$    | $q\times n$  | output-matrix         |
| $E_d$    | $o\times n$  | disturbance-martix    |

## Augmented Model

model from last time step

Eq2.2:

$$
\begin{aligned}
x_d(k) &= A_d \cdot x_d(k-1) + B_d \cdot u(k-1) + E_d \cdot \nu_d(k-1)\\
y(k-1) &= C_d \cdot x_d(k-1)
\end{aligned}
$$

Build difference

Eq2.3:

$$
\begin{aligned}
\Delta x_d(k+1) &= A_d \cdot \Delta x_d(k) + B_d \cdot \Delta u(k) + E_d \cdot\Delta  \nu_d(k)\\
\end{aligned}
$$

with

Eq2.4:

$$
\begin{aligned}
\Delta x_d(k+1) &= x_d(k+1)  - x_d(k)\\
\Delta x_d(k)   &= x_d(k)    - x_d(k-1)\\
\Delta u(k)     &= u(k)      - u(k-1)\\
\Delta \nu_d(k)     &= \nu_d(k)      - \nu_d(k-1)
\end{aligned}

$$

The augmented state-vector is defined
Eq2.5:

$$
\begin{aligned}
  x_A(k)=
  \begin{bmatrix}
    \Delta x_d(k) \\ 
    y(k)
  \end{bmatrix}
\end{aligned}
$$

and the equations could be structured as
Eq2.6:

$$
\begin{aligned}
\begin{bmatrix}
\Delta x_d(k+1)\\
y(k+1)\\
\end{bmatrix}
&=
\begin{bmatrix}
A_d & \varnothing_{q\times n}^T\\
C_d \cdot A_d & I_{q\times q}\\
\end{bmatrix}
\cdot
\begin{bmatrix}
\Delta x_d(k)\\
y(k)\\
\end{bmatrix}
+
\begin{bmatrix}
B_d\\
C_d \cdot B_d\\
\end{bmatrix}
\cdot \Delta u(k)
+
\begin{bmatrix}
E_d\\
C_d \cdot E_d\\
\end{bmatrix}
\cdot \Delta \nu(k)\\
y(k) &= 
\begin{bmatrix}
\varnothing_{q\times n} & I_{q\times q}
\end{bmatrix}
\cdot
\begin{bmatrix}
\Delta x_d(k)\\
y(k)\\
\end{bmatrix}
\end{aligned}
$$

and transformed into
Eq2.7:

$$
\begin{aligned}
  x_A(k+1) &= A_A \cdot x_A(k) + B_A \cdot \Delta u(k)
            + E_A \cdot \Delta \nu(k)\\
  y_A(k)   &= C_A \cdot x_A(k)\\
\end{aligned}
$$

with
Eq2.8:

$$
\begin{aligned}
  A_A      &= 
  \begin{bmatrix}
    A_d & \varnothing_{q\times n}^T\\
    C_d \cdot A_d & I_{q\times q}\\
  \end{bmatrix}\\
  B_A   &= 
  \begin{bmatrix}
    B_d\\
    C_d \cdot B_d\\
  \end{bmatrix}\\
  C_A   &= 
  \begin{bmatrix}
    \varnothing_{q\times n} & I_{q\times q}
  \end{bmatrix}\\
  E_A   &= 
  \begin{bmatrix}
    E_d\\
    C_d \cdot E_d\\
  \end{bmatrix}\\
\end{aligned}
$$

| variable        | dimension       | comment             |
|:--------------- |:--------------- | ------------------- |
| $n_A$           | $n+q$           |                     |
| $x_A(k)$        | $n_A\times 1$   | State variable      |
| $A_A$           | $n_A \times nA$ | State matrix        |
| $B_A$           | $n_A \times m$  | Input Matrix        |
| $\Delta u(k)$   | $m \times 1$    | input vector deltas |
| $E_A$           | $n_A\times o$   | Disturbance Matrix  |
| $\Delta \nu(k)$ | $o\times 1$     | Disturbance Vector  |
| $C_A$           | $q\times N$     | Output matrix       |
| $y_A(k)$        | $q \times 1$    | Output vector       |

## Solution of Predictive Control for MIMO w Disturbance

### Prediction and Horizon

Here, we assume that the current time is $k_i$ and the length of the optimization window is **prediction horizont** $N_p$ and **control horizont** $N_c$ as the number of samples\.

The future control trajectory is denoted by
Eq2.12:

$$
\begin{aligned}
\Delta u(k_i), \Delta u(k_i + 1), ... , \Delta u(k_i + N_c -1)
\end{aligned}
$$

where $N_c$ is called the control horizon dictating the number of parameters used to capture the future control trajectory.

With given information $x_A(k_i)$, the future state variables are predicted for $N_p$ number of samples (Prediction horizon and length of optimization window)
Eq2.13:

$$
\begin{aligned}
x_A(k_i+1|k_i),x_A(k_i+2|k_i), ... , x_A(k_i+N_p|k_i)
\end{aligned}
$$

We can build over the prediction horizon the **state-space-description** with ($N_c \leq N_p$) with augmented model ($Eq2.7$):

In general with $N_p,N_c (N_c \leq N_p)$
Eq2.14:

$$
\begin{aligned}
x_A(k_i+1|k_i) &= A_A \cdot x_A(k_i) 
                + B_A \cdot \Delta u(k_i)
                + E_A \cdot \Delta \nu(k_i)\\
x_A(k_i+2|k_i) &= A_A^2 \cdot x_A(k_i) 
                + A_A \cdot B_A \cdot \Delta u(k_i)
                + A_A \cdot E_A \cdot \Delta \nu(k_i) \\
                &+ B_A \cdot \Delta u(k_i+1)                 
                + E_A \cdot \Delta \nu(k_i+1)\\
...\\
x_A(k_i+N_p|k_i) &= A_A^{N_p} \cdot x_A(k_i) 
                  + A_A^{N_p-1} \cdot B_A \cdot \Delta u(k_i) 
                  + A_A^{N_p-1} \cdot E_A \cdot \Delta \nu(k_i)\\ 
                  &+ ...  
                  + A_A^{N_p-N_c} \cdot B_A \cdot \Delta u(k_i+N_c-1)
                  + A_A^{N_p-N_c} \cdot E_A \cdot \Delta \nu(k_i+N_c-1)
\end{aligned}
$$

Eq2.15:

$$
\begin{aligned}
x_A(k_i+j|k_i) &= A^j_A \cdot x_A(k_i)\\
&+ \sum_{i=0}^{min(j,N_c)-1} A^{j-i-1}_A \cdot B_A \cdot \Delta u(k_i+i)\\
&+ \sum_{i=0}^{min(j,N_c)-1} A^{j-i-1}_A \cdot E_A \cdot \Delta \nu(k_i+i)\\

\end{aligned}
$$

The output-description:
Eq2.16:

$$
\begin{aligned}
y_A(k_i+1|k_i) &= C_A \cdot A_A \cdot x_A(k_i) 
                + C_A \cdot B_A \cdot \Delta u(k_i)
                + C_A \cdot E_A \cdot \Delta \nu(k_i)\\
y_A(k_i+2|k_i) &= C_A \cdot A_A^2 \cdot x_A(k_i) 
                + C_A \cdot A_A \cdot B_A \cdot \Delta u(k_i) 
                + C_A \cdot A_A \cdot E_A \cdot \Delta \nu(k_i)\\
               &+ C_A \cdot B_A \cdot \Delta u(k_i+1)
                + C_A \cdot E_A \cdot \Delta \nu(k_i+1)\\
...\\
y_A(k_i+N_p|k_i) &= C_A \cdot A_A^{N_p} \cdot x_A(k_i) 
                  + C_A \cdot A_A^{N_p-1} \cdot B_A \cdot \Delta u(k_i)
                  + C_A \cdot A_A^{N_p-1} \cdot E_A \cdot \Delta \nu(k_i)\\
                 &+ ... 
                  + C_A \cdot A_A^{N_p-N_c-} \cdot B_A \cdot \Delta u(k_i+N_c-1)
                  + C_A \cdot A_A^{N_p-N_c-} \cdot E_A \cdot \Delta \nu(k_i+N_c-1)
\end{aligned}
$$

Eq2.17:

$$
\begin{aligned}
y_A(k_i+j|k_i) &= C_A \cdot A^j_A \cdot x_A(k_i)\\
&+ \sum_{i=0}^{min(j,N_c)-1} C_A \cdot A^{j-i-1}_A \cdot B_A \cdot \Delta u(k_i+i)\\
&+ \sum_{i=0}^{min(j,N_c)-1} C_A \cdot A^{j-i-1}_A \cdot E_A \cdot \Delta \nu(k_i+i)\\

\end{aligned}
$$

The output-equations can be summarized:
Eq2.18:

$$
\begin{aligned}
  Y = F \cdot x_A(k_i) + \Phi \cdot \Delta U +\Theta \cdot \Delta V
\end{aligned}
$$

With Eq2.19:

$$
\begin{aligned}
  Y &= 
  \begin{bmatrix}
    y_A(k_i+1|k_i) \\ 
    y_A(k_ i+2|k_i) \\ 
    ... \\ 
    y_A(k_i+N_p|k_i)
  \end{bmatrix}\\
  \Delta U &= 
  \begin{bmatrix}
    \Delta u(k_i) \\ 
    \Delta u(k_i+1) \\ 
    ... \\ 
    \Delta u(k_i+N_c-1)
  \end{bmatrix}\\
  \Delta V &= 
  \begin{bmatrix}
    \Delta \nu(k_i) \\ 
    \Delta \nu(k_i+1) \\ 
    ... \\ 
    \Delta \nu(k_i+N_c-1)
  \end{bmatrix}\\
  F &=
  \begin{bmatrix}
    C_A \cdot A_A\\
    C_A \cdot A_A^2\\
    ...\\
    C_A \cdot A_A^{N_p}
  \end{bmatrix}\\
  \Phi &=
  \begin{bmatrix}
    C_A \cdot B_A & 0 & 0 & ... & 0\\
    C_A \cdot A_A \cdot B_A & C_A \cdot B_A & 0 & ... & 0\\
    C_A \cdot A_A^2 \cdot B_A & C_A \cdot A_A \cdot B_A &  C_A \cdot B_A & ... & 0\\
    ...\\
    C_A \cdot A_A^{N_p-1} \cdot B_A & C_A \cdot A_A^{N_p-2} \cdot B_A & C_A \cdot A_A^{N_p-3} \cdot B_A &  ... & C_A \cdot   
    A_A^{N_p-N_c} \cdot B_A
  \end{bmatrix}\\
  \Theta &=
  \begin{bmatrix}
    C_A \cdot E_A & 0 & 0 & ... & 0\\
    C_A \cdot A_A \cdot E_A & C_A \cdot E_A & 0 & ... & 0\\
    C_A \cdot A_A^2 \cdot E_A & C_A \cdot A_A \cdot E_A &  C_A \cdot E_A & ... & 0\\
    ...\\
    C_A \cdot A_A^{N_p-1} \cdot E_A & C_A \cdot A_A^{N_p-2} \cdot E_A & C_A \cdot A_A^{N_p-3} \cdot E_A &  ... & C_A \cdot   
    A_A^{N_p-N_c} \cdot E_A
  \end{bmatrix}
\end{aligned}
$$

| variable   | dimension                          | comment             |
| ---------- | ---------------------------------- | ------------------- |
| $Y$        | $(N_p\cdot q) \times 1$            |                     |
| $F$        | $(N_p\cdot q) \times N$            |                     |
| $\Phi$     | $(N_p\cdot q) \times (N_c\cdot m)$ | $(N_c \leq N_p)$    |
| $\Delta U$ | $(N_c\cdot m) \times 1$            |                     |
| $\Theta$   | $(N_p\cdot q) \times (N_c\cdot m)$ |                     |
| $\Delta V$ | $(N_c\cdot m) \times 1$            |                     |
| $N_c$      |                                    | control horizont    |
| $N_p$      |                                    | prediction horizont |

### Optimization

with a given target vector $R_s := N_p\cdot q \times 1$
Eq2.20:

$$
\begin{aligned}
  R_s &= 
  \begin{bmatrix}
    r(k_i+1)^T & r(k_ i+2)^T & ... & r(k_i+N_p)^T
 \end{bmatrix}^T\\
 r(k_i+j)&=\begin{bmatrix}
    r_1(k_i+j) & r_2(k_i+j) & ... & r_q(k_i+j)
 \end{bmatrix}^T\\
j&=1,2, ..., N_p
\end{aligned}
$$

the cost function is
Eq2.21:

$$
\begin{aligned}
J = (R_s - Y)^T \cdot (R_s - Y) + \Delta U^T \cdot \bar{R} \cdot \Delta U
\end{aligned}
$$

$\bar{R}$ is used as a tuning factor closed loop behavior for the input and could be written as:
Eq2.22:

$$
\begin{aligned}
\bar{R} &= \begin{bmatrix} r_W^T & r_W^T & ... & r_W^T \end{bmatrix}^T \cdot I_{N_c\cdot m \times N_c \cdot m}\\
r_W &=\begin{bmatrix} r_{W,1}&r_{W,2} & ... & r_{W,m} \end{bmatrix}^T
\end{aligned}
$$

resolve with equation ($Eq2.21$) we get
Eq2.23:

$$
\begin{aligned}
J &= (R_s - F\cdot x_A(k_i)-\Phi \cdot \Delta U - \Theta \cdot \Delta V)^T
  \cdot 
  (R_s - F\cdot x_A(k_i)-\Phi \cdot \Delta U - \Theta \cdot \Delta V)\\
  &+ \Delta U^T \cdot \bar{R} \cdot \Delta U
\\
J &= \begin{bmatrix}
     (R_s - F\cdot x_A(k_i)-\Theta \cdot \Delta V)^T 
     - \Delta U^T \cdot \Phi^T 
     \end{bmatrix} \cdot
     \begin{bmatrix}
     (R_s - F\cdot x_A(k_i)-\Theta \cdot \Delta V) 
     - \Phi \cdot \Delta U
     \end{bmatrix}\\
  &+ \Delta U^T \cdot \bar{R} \cdot \Delta U
\\
\\
G &= R_s - F\cdot x_A(k_i)-\Theta \cdot \Delta V\\
\\
J &= \begin{bmatrix}
     G^T 
     - \Delta U^T \cdot \Phi^T 
     \end{bmatrix} \cdot
     \begin{bmatrix}
     G 
     - \Phi \cdot \Delta U
     \end{bmatrix}
     + \Delta U^T \cdot \bar{R} \cdot \Delta U
\end{aligned}
$$

$$
\begin{aligned}

J &= G^T \cdot G 
   - G^T\cdot \Phi\cdot \Delta U 
   - \Delta U^T \cdot \Phi^T \cdot G
     - \Delta U^T \cdot \Phi^T \cdot \Phi \cdot \Delta U 
     + \Delta U^T \cdot \bar{R} \cdot \Delta U
\end{aligned}
$$

because of $G^T\cdot(\Phi\cdot \Delta U)$ is scalar and $G^T$ is a vector, then we can write

 $G^T\cdot(\Phi\cdot \Delta U)=(\Phi\cdot \Delta U)^T \cdot G$

then

$$
\begin{aligned}

J &= G^T \cdot G 
   - 2\cdot \Delta U^T \cdot \Phi^T \cdot G 
     + \Delta U^T \cdot (\Phi^T \cdot\Phi + \bar{R}) \cdot \Delta U
\end{aligned}
$$

the first derivation of cost function
Eq2.24:

$$
\begin{aligned}
\frac{dJ}{d \Delta U} = -2\cdot \Phi^T \cdot G 
+ 2\cdot  (\Phi^T \cdot \Phi + \bar{R}) \cdot \Delta U
\end{aligned}
$$

With the necessary condition $\frac{dJ}{d \Delta U} = 0$ we get
Eq2.25:

$$
\begin{aligned}
\Delta U &= (\Phi^T \cdot \Phi + \bar{R})^{-1} \cdot \Phi^T \cdot G\\
\\with\\
G &= R_s - F\cdot x_A(k_i)-\Theta \cdot \Delta V
\end{aligned}
$$

or 

Eq2.26

$$
\begin{aligned}
J&={1\over2}\cdot \Delta U^T\cdot \Omega\cdot \Delta U+\Delta U^T\cdot\Psi+C\\
\Omega &=2\cdot (\Phi^T \cdot \Phi + \bar{R})\\
\Psi &= -2\cdot \Phi^T \cdot G\\
C &= G^T\cdot G 
\end{aligned}
$$

The solution the quatratic equation without constraints

Eq2.27

$$
\Delta U = -\Omega^{-1}\cdot\Psi
$$
