# 1. MPC, linear discrete, modified about dt

Base is: [MPCLinearDiscrete.md](.\MPCLinearDiscrete.md) and [MPCLinearDiscrete_mod1](.\MPCLinearDiscrete_mod1.md)

## mofied Discrete Model

For MIMO-System with **n-states**, **m-inputs**, **q-outputs** (q $\leqslant$ m) 

model description, linear and discrete but t has states with different time constants

Eq1.1a

$$
dt=\begin{bmatrix}
dt(k)\\
dt(k+1)\\
...\\
dt(k+N-1)
\end{bmatrix}
$$

Eq1.1b:

$$
\begin{aligned}
x_d(k+1) &= A_d(k) \cdot x_d(k) + B_d(k) \cdot u(k)\\
y(k    ) &= C_d(k) \cdot x_d(k)\\
\\
x_d(k+2) &= A_d(k+1) \cdot x_d(k+1) + B_d(k+1) \cdot u(k+1)\\
y(k+1  ) &= C_d(k+1) \cdot x_d(k+1)\\
...\\
x_d(k+N) &= A_d(k+N-1) \cdot x_d(k+N-1) + B_d(k+N-1) \cdot u(k+N-1)\\
y(k+N-1) &= C_d(k+N-1) \cdot x_d(k+N-1)\\


\end{aligned}

$$

| variable | dimension    | comment               |
| -------- | ------------ | --------------------- |
| $x_d(k)$ | $n\times 1$, | state-vector          |
| $A_d(k)$ | $n\times n$  | discrete state matrix |
| $u(k)$   | $m\times 1$  | input-vector          |
| $B_d(k)$ | $n\times m$  | input-matrix          |
| $y(k)$   | $q\times 1$  | output-vector         |
| $C_d(k)$ | $q\times n$  | output-matrix         |

## Augmented Model

model from last time step

Eq1.2a:

$$
\begin{aligned}
x_d(k) &= A_d(k-1) \cdot x_d(k-1) + B_d(k-1) \cdot u(k-1)\\
y(k-1) &= C_d(k-1) \cdot x_d(k-1)
\end{aligned}
$$

Build difference

Eq1.3a:

$$
\begin{aligned}
\Delta x_d(k+1) &= x_d(k+1)  - x_d(k)\\
\Delta x_d(k+1) &= A_d(k) \cdot x_d(k) + B_d(k) \cdot u(k)\\
  &- A_d(k-1) \cdot x_d(k-1) - B_d(k-1) \cdot u(k-1)

\end{aligned}
$$

when we neglect  $A_d(k) \not =A_d(k-1)$

we get

Eq1.4a:

$$
\begin{aligned}
\Delta x_d(k+1) &= A_d(k) \cdot \Delta x_d(k) + B_d(k) \cdot \Delta u(k)\\
\\
\Delta x_d(k+1) &= x_d(k+1)  - x_d(k)\\
\Delta x_d(k)   &= x_d(k)    - x_d(k-1)\\
\Delta u(k)     &= u(k)      - u(k-1)
\end{aligned}

$$

The augmented state-vector is defined
Eq1.5a:

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
Eq1.6a:

$$
\begin{aligned}
\begin{bmatrix}
\Delta x_d(k+1)\\
y(k+1)\\
\end{bmatrix}
&=
\begin{bmatrix}
A_d(k) & \varnothing_{q\times n}^T\\
C_d(k) \cdot A_d(k) & I_{q\times q}\\
\end{bmatrix}
\cdot
\begin{bmatrix}
\Delta x_d(k)\\
y(k)\\
\end{bmatrix}
+
\begin{bmatrix}
B_d(k)\\
C_d(k) \cdot B_d(k)\\
\end{bmatrix}
\cdot \Delta u(k)
\\
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
Eq1.7a:

$$
\begin{aligned}
  x_A(k+1) &= A_A(k) \cdot x_A(k) + B_A(k) \cdot \Delta u(k)\\
  y_A(k)   &= C_A \cdot x_A(k)\\
\end{aligned}
$$

with
Eq1.8:

$$
\begin{aligned}
  A_A(k)      &= 
  \begin{bmatrix}
    A_d(k) & \varnothing_{q\times n}^T\\
    C_d(k) \cdot A_d(k) & I_{q\times q}\\
  \end{bmatrix}\\
  B_A(k)   &= 
  \begin{bmatrix}
    B_d(k)\\
    C_d(k) \cdot B_d(k)\
  \end{bmatrix}\\
  C_A   &= 
  \begin{bmatrix}
    \varnothing_{q\times n} & I_{q\times q}
  \end{bmatrix}\\
y_A(k) &= y(k)
\end{aligned}
$$

| variable      | dimension        | comment             |
|:------------- |:---------------- | ------------------- |
| $n_A$         | $n+q$            |                     |
| $x_A(k)$      | $n_A\times 1$    | State variable      |
| $A_A(k)$      | $n_A \times n_A$ | State matrix        |
| $B_A(k)$      | $n_A \times m$   | Input Matrix        |
| $\Delta u(k)$ | $m \times 1$     | input vector deltas |
| $C_A(k)$      | $q\times n_A$    | Output matrix       |
| $y_A(k)$      | $q \times 1$     | Output vector       |

## Solution of Predictive Control for MIMO w/o Disturbance

### Prediction and Horizon

Eq1.13:

$$
\begin{aligned}
x_A(k_i+1|k_i),x_A(k_i+2|k_i), ... , x_A(k_i+N_p|k_i)
\end{aligned}
$$

We can build over the prediction horizon the **state-space-description** with ($N_c \leq N_p$) with augmented model ($Eq1.7$):

$N_c = N_p$  Eq1.14a:

$$
\begin{aligned}
x_A(k_i+1|k_i) &= A_A(k_i) \cdot x_A(k_i) + B_A(k_i)\cdot \Delta u(k_i)\\
x_A(k_i+2|k_i) &= A_A(k_i+1) \cdot x_A(k_i+1|k_i) + B_A(k_i+1) \cdot \Delta u(k_i+1)\\
x_A(k_i+3|k_i) &= A_A(k_i+2) \cdot x_A(k_i+2|k_i) + B_A(k_i+2) \cdot \Delta u(k_i+2))\\
x_A(k_i+4|k_i) &= A_A(k_i+3) \cdot x_A(k_i+3|k_i) + B_A(k_i+3) \cdot \Delta u(k_i+3))\\
...\\
x_A(k_i+N_p|k_i) &= A_A(k_i+N_p-1) \cdot x_A(k_i+N_p-1|k_i) + B_A(k_i+N_p-1) \cdot \Delta u(k_i+N_p-1))\\
\\
\end{aligned}
$$

Eq1.14b:

$$
\begin{aligned}
x_A(k_i+1|k_i) &= A_A(k_i) \cdot x_A(k_i) + B_A(k_i)\cdot \Delta u(k_i)\\
\\
x_A(k_i+2|k_i) &= A_A(k_i+1) \cdot A_A(k_i) \cdot x_A(k_i)\\
               &+ A_A(k_i+1) \cdot B_A(k_i)\cdot \Delta u(k_i)\\
               &+ B_A(k_i+1) \cdot \Delta u(k_i+1)\\
\\
x_A(k_i+3|k_i) &= A_A(k_i+2) \cdot A_A(k_i+1) \cdot A_A(k_i) \cdot x_A(k_i)\\
               &+ A_A(k_i+2) \cdot A_A(k_i+1) \cdot B_A(k_i)\cdot \Delta u(k_i)\\
               &+ A_A(k_i+2) \cdot B_A(k_i+1) \cdot \Delta u(k_i+1)\\
               &+ B_A(k_i+2) \cdot \Delta u(k_i+2)\\
\\
x_A(k_i+4|k_i) &= A_A(k_i+3) \cdot A_A(k_i+2) \cdot A_A(k_i+1) \cdot A_A(k_i) \cdot x_A(k_i)\\
               &+ A_A(k_i+3) \cdot A_A(k_i+2) \cdot A_A(k_i+1) \cdot B_A(k_i)\cdot \Delta u(k_i)\\
               &+ A_A(k_i+3) \cdot A_A(k_i+2) \cdot B_A(k_i+1) \cdot \Delta u(k_i+1)\\
               &+ A_A(k_i+3) \cdot B_A(k_i+2) \cdot \Delta u(k_i+2))\\
               &+ B_A(k_i+3) \cdot \Delta u(k_i+3)\\
...\\
x_A(k_i+N_p|k_i) &= (A_A(k_i+N_p-1) \cdot A_A(k_i+N-2)\cdot ... \cdot A_A(k_i)) \cdot x_A(k_i)\\
               &+ (A_A(k_i+N_p-1) \cdot A_A(k_i+N_p-2)\cdot ...  \cdot A_A(k_i+1)) \cdot B_A(k_i)\cdot \Delta u(k_i)\\
               &+ (A_A(k_i+N_p-1) \cdot A_A(k_i+N_p-2)\cdot ...  \cdot A_A(k_i+2)) \cdot B_A(k_i+1) \cdot \Delta u(k_i+1)\\
               &...\\
               &+ B_A(k_i+N_p-1) \cdot \Delta u(k_i+N_p-1)\\

\end{aligned}
$$

in matrix form

$$
\begin{aligned}
  X = F^* \cdot x_A(k_i) + \Phi^* \cdot \Delta U
\end{aligned}
$$

with

$$
\begin{aligned}
  X &= 
  \begin{bmatrix}
    x_A(k_i+1|k_i) \\ x_A(k_ i+2|k_i) \\ ... \\ x_A(k_i+N_p|k_i)
  \end{bmatrix}\\
\\
  F^* &=
  \begin{bmatrix}
    A_A(k_i)\\
    A_A(k_i+1)\cdot A_A(k_i)\\
    ...\\
    A_A(k_i+N_p-1)\cdot A_A(k_i+N_p-2) \cdot ... \cdot A_A(k_i)
  \end{bmatrix}\\
\\
  \Phi^* &=
  \begin{bmatrix}
    B_A(k_i) & 0 & 0 & ... & 0\\
    A_A(k_i+1) \cdot B_A(k_i) & B_A(k_i+1) & 0 & ... & 0\\
    A_A(k_i+2)\cdot A_A(k_i+1) \cdot B_A(k_i) & 
       A_A(k_i+2) \cdot B_A(k_i+1) &  
       B_A(k_i+2) & ... & 0\\
    ...\\
    \Phi^*(N_p,1) & \Phi^*(N_p,2) & \Phi^*(N_p,2) & ... & \Phi^*(N_p,N_p)\\
  \end{bmatrix}\\
\\
\\
\Phi^*(N_p,1) &= A_A(k_i+N_p-1)...A_A(k_i+1) \cdot B_A(k_i)\\
\Phi^*(N_p,2) &= A_A(k_i+N_p-1)...A_A(k_i+2) \cdot B_A(k_i+1)\\
\Phi^*(N_p,3) &= A_A(k_i+N_p-1)...A_A(k_i+3) \cdot B_A(k_i+2)\\
\Phi^*(N_p,N_p) &= B_A(k_i+N_p-1)\\
\\
  \Delta U &= 
  \begin{bmatrix}
    \Delta u(k_i) \\ \Delta u(k_i+1) \\ ... \\ \Delta (k_i+N_p-1)
  \end{bmatrix}
\end{aligned}
$$

$N_c \lt N_p$  Eq1.15a:

$$
\begin{aligned}

x_A(k_i+N_p|k_i) &= (A_A(k_i+N_p-1) \cdot A_A(k_i+N-2)\cdot ... \cdot A_A(k_i)) \cdot x_A(k_i)\\
               &+ (A_A(k_i+N_p-1) \cdot A_A(k_i+N_p-2)\cdot ...  \cdot A_A(k_i+1)) \cdot B_A(k_i)\cdot \Delta u(k_i)\\
               &...\\
               &+ (A_A(k_i+N_p-1) \cdot A_A(k_i+N_p-2)\cdot ...  
\cdot A_A(k_i+Nc)) \cdot B_A(k_i+N_c-1) \cdot \Delta u(k_i+N_c-1)\\

\end{aligned}
$$

In matrix form

$$
\begin{aligned}
  X &= 
  \begin{bmatrix}
    x_A(k_i+1|k_i) \\ x_A(k_ i+2|k_i) \\ ... \\ x_A(k_i+N_p|k_i)
  \end{bmatrix}  (N_p\times 1)\\
\\
  F^* &=
  \begin{bmatrix}
    A_A(k_i)\\
    A_A(k_i+1)\cdot A_A(k_i)\\
    ...\\
    A_A(k_i+N_p-1)\cdot A_A(k_i+N_p-2) \cdot ... \cdot A_A(k_i)
  \end{bmatrix}   (N_p\times 1)\\
\\
  \Phi^* &=
  \begin{bmatrix}
    B_A(k_i) & 0 & 0 & ... & 0\\
    A_A(k_i+1) \cdot B_A(k_i) & B_A(k_i+1) & 0 & ... & 0\\
    A_A(k_i+2)\cdot A_A(k_i+1) \cdot B_A(k_i) & 
       A_A(k_i+2) \cdot B_A(k_i+1) &  
       B_A(k_i+2) & ... & 0\\
    ...\\
    \Phi^*(N_p,1) & \Phi^*(N_p,2) & \Phi^*(N_p,2) & ... & \Phi^*(N_p,N_c)\\
  \end{bmatrix}\\
(N_p\times N_c )\\
\\
\Phi^*(N_p,1) &= A_A(k_i+N_p-1)...A_A(k_i+1) \cdot B_A(k_i)\\
\Phi^*(N_p,2) &= A_A(k_i+N_p-1)...A_A(k_i+2) \cdot B_A(k_i+1)\\
\Phi^*(N_p,3) &= A_A(k_i+N_p-1)...A_A(k_i+3) \cdot B_A(k_i+2)\\
\Phi^*(N_p,N_c) &= A_A(k_i+N_p-1)...A_A(k_i+N_c) \cdot B_A(k_i+N_c-1)\\
\\
  \Delta U &= 
  \begin{bmatrix}
    \Delta u(k_i) \\ \Delta u(k_i+1) \\ ... \\ \Delta (k_i+N_c-1)
  \end{bmatrix} (N_c \times 1)
\end{aligned}
$$

| variable   | dimension                          | comment          |
| ---------- | ---------------------------------- | ---------------- |
| $X$        | $(N_p\cdot q) \times 1$            |                  |
| $F^*$      | $(N_p\cdot q) \times N$            |                  |
| $\Phi^*$   | $(N_p\cdot q) \times (N_c\cdot m)$ | $(N_c \leq N_p)$ |
| $\Delta U$ | $(N_c\cdot m) \times 1$            |                  |
