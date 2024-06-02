# 1. MPC, linear discrete

Nach  "Liuping Wang; Model Predictive Control System Design and Implementation Using MATLAB; 2009; Introduction to DMPC (Ch. 1) +  DMPC with constraints (Ch. 2)"

## Discrete Model

For MIMO-System with **n-states**, **m-inputs**, **q-outputs** (q $\leqslant$ m) 

model description, linear and discrete

Eq1.1:

$$
\begin{aligned}
x_d(k+1) &= A_d \cdot x_d(k) + B_d \cdot u(k)\\
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

### Solution for first step

For simulation it is good to have in the first step a calculated solution from Eq1.1.  If $u(k)$ has big numbers and the augmented model uses differences, then in a first step big differences a used.

Eq.1.1a

$$
y(k+1) = C_d\cdot A_d\cdot x_d(k)+C_d\cdot B_d\cdot u(k)

$$

## 

For the first step $X_d(0)$ and $y_r(1)$ is known. If input $m$ and out $q$ has same size:

Eq1.1b

$$
u(0) = (C_d\cdot B_d)^{-1}\cdot (y_r(1)-C_d\cdot A_d \cdot x_d(0))
$$

## Augmented Model

model from last time step

Eq1.2:

$$
\begin{aligned}
x_d(k) &= A_d \cdot x_d(k-1) + B_d \cdot u(k-1)\\
y(k-1) &= C_d \cdot x_d(k-1)
\end{aligned}
$$

Build difference

Eq1.3:

$$
\begin{aligned}
\Delta x_d(k+1) &= A_d \cdot \Delta x_d(k) + B_d \cdot \Delta u(k)\\
\end{aligned}
$$

with

Eq1.4:

$$
\begin{aligned}
\Delta x_d(k+1) &= x_d(k+1)  - x_d(k)\\
\Delta x_d(k)   &= x_d(k)    - x_d(k-1)\\
\Delta u(k)     &= u(k)      - u(k-1)
\end{aligned}

$$

The augmented state-vector is defined
Eq1.5:

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
Eq1.6:

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
Eq1.7:

$$
\begin{aligned}
  x_A(k+1) &= A_A \cdot x_A(k) + B_A \cdot \Delta u(k)
            + E_A \cdot \Delta \nu(k)\\
  y_A(k)   &= C_A \cdot x_A(k)\\
\end{aligned}
$$

with
Eq1.8:

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
y_A(k) &= y(k)
\end{aligned}
$$

| variable      | dimension        | comment             |
|:------------- |:---------------- | ------------------- |
| $n_A$         | $n+q$            |                     |
| $x_A(k)$      | $n_A\times 1$    | State variable      |
| $A_A$         | $n_A \times n_A$ | State matrix        |
| $B_A$         | $n_A \times m$   | Input Matrix        |
| $\Delta u(k)$ | $m \times 1$     | input vector deltas |
| $C_A$         | $q\times n_A$    | Output matrix       |
| $y_A(k)$      | $q \times 1$     | Output vector       |

## Eigenvalues of Augmented Model

Characteristic equation
Eq1.9:

$$
\rho(\lambda) = det
  \begin{bmatrix}
    (\lambda \cdot I -A_d) & \varnothing_{q\times n}^T\\
    C_d \cdot A_d & (\lambda-1) \cdot I_{q\times q}\\
  \end{bmatrix} = 0\\
$$

Eq1.10:

$$
\rho(\lambda) = (\lambda - 1 )^q \cdot det(\lambda \cdot I -A_d) = 0
$$

$\lambda_1 = \lambda_2 = ... = 1 \Rightarrow $   q integrators in augmented model

The eigenvalues of the augmented model are the union of the eigenvalues of the plant model $A_d$ and the q eigenvalues with λ = 1. This means that there are q integrators embedded into the augmented design model. This is the means we use to obtain integral action for the MPC systems  

## Controllability and Observability of the Augmented Model

It is importend for control system design that the augmented model does not become uncontrollable or unobservable. Controllability and Observability is a pre-requisite for the predictive control system. The conditions may be relaxed to the requirement of stabilizability and detectability, if only closed-loop stability is of concern.

Wang: 'A system is stabilizable if its uncontrollable modes, if any, are stable. Its controllable modes may be stable or unstable. A system is detectable, if its unobservable modes, if any, are stable. Its observable modes may be stable or unstable. Stable modes here means that the corresponding eigenvalues are strictly inside the unit circle.'

We require the model to be both controllable and observable in order to achieve desired closed-loop performance. 
Because the augmented model introduced additional integral modes, we need to examine under what conditions these additional modes become controllable. The simplest way for the investigation is based on the assumption
of minimal realization of the plant model. The discussion of minimal realization, controllability and observability can be found in control textbooks (for example Kailath (1980), Bay (1999)).

**Definition:** A realization of transfer function $G(z)$ is any state-space triplet $(A,B,C)$ such that $G(z) = C \cdot (z \cdot I - A)^{-1} \cdot B$. If such a set $(A,B,C)$ exists, then $G(z)$ is said to be realizable. A realization $(A,B,C)$ is called a minimal realization of a transfer function if no other realization of smaller dimension of the triplet exists. A minimal realization has the distinctive feature summarized in the theorem below.

**Theorem 1.1.** A minimal realization is both controllable and observable(Kailath, 1980, Bay, 1999).

With this background information, we aim to show conditions such that the augmented model is both controllable and observable through the argument of minimal realization.

**Theorem 1.2.** Assume that the plant model $(A_d,B_d, C_d)$ is both controllable and observable having the transfer function $G_d(z)$ with minimal realization,
where $G_d(z) = C_d \cdot (z \cdot I - A_d)^{-1} \cdot B_d$.

Then, the transfer function of augmented design model ($Eq1.7$) has the representation
Eq1.11:

$$
G(z) = \frac{z}{z-1} \cdot G_d(z)
$$

and is both controllable and observable if and only if the plant model $G_d(z)$ has no zero at z = 1 (Proof see Wang, The zeros of a MIMO transfer function are those values of z that make the matrix$ G_d(z)$ lose rank)

## Solution of Predictive Control for MIMO w/o Disturbance

### Prediction and Horizon

Here, we assume that the current time is $k_i$ and the length of the optimization window is $N_p$ as the number of samples\.

The future control trajectory is denoted by
Eq1.12:

$$
\begin{aligned}
\Delta u(k_i), \Delta u(k_i + 1), ... , \Delta u(k_i + N_c -1)
\end{aligned}
$$

where $N_c$ is called the control horizon dictating the number of parameters used to capture the future control trajectory.

With given information $x_A(k_i)$, the future state variables are predicted for $N_p$ number of samples (Prediction horizon and length of optimization window)
Eq1.13:

$$
\begin{aligned}
x_A(k_i+1|k_i),x_A(k_i+2|k_i), ... , x_A(k_i+N_p|k_i)
\end{aligned}
$$

We can build over the prediction horizon the **state-space-description** with ($N_c \leq N_p$) with augmented model ($Eq1.7$):

A) $N_p=3; N_c=3$
   Eq1.14:

$$
\begin{aligned}
x_A(k_i+1|k_i) &= A \cdot x_A(k_i) + B \cdot \Delta u(k_i)\\
\\
x_A(k_i+2|k_i) &= A \cdot x_A(k_i+1|k_i) + B \cdot \Delta u(k_i+1)\\
x_A(k_i+2|k_i) &= A \cdot (A \cdot x_A(k_i) + B \cdot \Delta u(k_i)) + B \cdot \Delta u(k_i+1)\\
x_A(k_i+2|k_i) &= A^2 \cdot x_A(k_i) + A \cdot B \cdot \Delta u(k_i) + B \cdot \Delta u(k_i+1)\\
\\
x_A(k_i+3|k_i) &= A \cdot x_A(k_i+2|k_i) + B \cdot \Delta u(k_i+2)\\
x_A(k_i+3|k_i) &= A \cdot (A^2 \cdot x_A(k_i) + A \cdot B \cdot \Delta u(k_i) + B \cdot \Delta u(k_i+1)) + B \cdot \Delta u(k_i+2)\\
x_A(k_i+3|k_i) &= A^3 \cdot x_A(k_i) + A^2 \cdot B \cdot \Delta u(k_i) + A \cdot B \cdot \Delta u(k_i+1) + B \cdot \Delta u(k_i+2)\\
\end{aligned}
$$

B) $N_p=3; N_c=2$
   Eq1.15:

$$
\begin{aligned}
x_A(k_i+1|k_i) &= A \cdot x_A(k_i) + B \cdot \Delta u(k_i)\\
\\
x_A(k_i+2|k_i) &= A \cdot x_A(k_i+1|k_i) + B \cdot \Delta u(k_i+1)\\
x_A(k_i+2|k_i) &= A \cdot (A \cdot x_A(k_i) + B \cdot \Delta u(k_i)) + B \cdot \Delta u(k_i+1)\\
x_A(k_i+2|k_i) &= A^2 \cdot x_A(k_i) + A \cdot B \cdot \Delta u(k_i) + B \cdot \Delta u(k_i+1)\\
\\
x_A(k_i+3|k_i) &= A \cdot x_A(k_i+2|k_i)\\
x_A(k_i+3|k_i) &= A \cdot (A^2 \cdot x_A(k_i) + A \cdot B \cdot \Delta u(k_i) + B \cdot \Delta u(k_i+1))\\
x_A(k_i+3|k_i) &= A^3 \cdot x(k_i) + A^2 \cdot B \cdot \Delta u(k_i) + A \cdot B \cdot \Delta u(k_i+1)\\
\end{aligned}
$$

In general with $N_p,N_c (N_c \leq N_p)$
Eq1.16:

$$
\begin{aligned}
x_A(k_i+1|k_i) &= A \cdot x_A(k_i) + B \cdot \Delta u(k_i)\\
x_A(k_i+2|k_i) &= A^2 \cdot x_A(k_i) + A \cdot B \cdot \Delta u(k_i) + B \cdot \Delta u(k_i+1)\\
...\\
x_A(k_i+N_p|k_i) &= A^{N_p} \cdot x_A(k_i) + A^{N_p-1} \cdot B \cdot \Delta u(k_i) + ... + A^{N_p-N_c-} \cdot B \cdot \Delta u(k_i+N_c-1)
\end{aligned}
$$

The output-description:
Eq1.17:

$$
\begin{aligned}
y_A(k_i+1|k_i) &= C_A \cdot A_A \cdot x_A(k_i) + C_A \cdot B \cdot \Delta u(k_i)\\
y_A(k_i+2|k_i) &= C_A \cdot A_A^2 \cdot x_A(k_i) + C_A \cdot A_A \cdot B_A \cdot \Delta u(k_i) + C_A \cdot B_A \cdot \Delta u(k_i+1)\\
...\\
y_A(k_i+N_p|k_i) &= C_A \cdot A_A^{N_p} \cdot x_A(k_i) + C_A \cdot A_A^{N_p-1} \cdot B_A \cdot \Delta u(k_i) + ... + C_A \cdot A_A^{N_p-N_c-} \cdot B_A \cdot \Delta u(k_i+N_c-1)
\end{aligned}
$$

The output-equations can be summarized:
Eq1.18:

$$
\begin{aligned}
  Y = F \cdot x_A(k_i) + \Phi \cdot \Delta U
\end{aligned}
$$

With Eq1.19:

$$
\begin{aligned}
  Y &= 
  \begin{bmatrix}
    y_A(k_i+1|k_i) \\ y_A(k_ i+2|k_i) \\ ... \\ y_A(k_i+N_p|k_i)
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
  \Delta U &= 
  \begin{bmatrix}
    \Delta u(k_i) \\ \Delta u(k_i+1) \\ ... \\ \Delta (k_i+N_c-1)
  \end{bmatrix}
\end{aligned}
$$

| variable   | dimension                          | comment          |
| ---------- | ---------------------------------- | ---------------- |
| $Y$        | $(N_p\cdot q) \times 1$            |                  |
| $F$        | $(N_p\cdot q) \times N$            |                  |
| $\Phi$     | $(N_p\cdot q) \times (N_c\cdot m)$ | $(N_c \leq N_p)$ |
| $\Delta U$ | $(N_c\cdot m) \times 1$            |                  |

### Optimization

with a given target vector $R_s := N_p\cdot q \times 1$
Eq1.20:

$$
\begin{aligned}
  R_s &= 
  \begin{bmatrix}
    y_r(k_i+1)^T & y_r(k_ i+2)^T & ... & y_r(k_i+N_p)^T
 \end{bmatrix}^T\\
 y_r(k)&=\begin{bmatrix}
    y_{r1}(k) & y_{r2}(k) & ... & y_{rp}(k)
 \end{bmatrix}^T
\end{aligned}
$$

the cost function is
Eq1.21:

$$
\begin{aligned}
J = (R_s - Y)^T \cdot (R_s - Y) + \Delta U^T \cdot \bar{R} \cdot \Delta U
\end{aligned}
$$

$\bar{R}$ is used as a tuning factor closed loop behavior for the input and could be written as:
Eq1.22:

$$
\begin{aligned}
\bar{R} &= \begin{bmatrix} r_W^T & r_W^T & ... & r_W^T \end{bmatrix}^T \cdot I_{N_c\cdot m \times N_c \cdot m}\\
r_W &=\begin{bmatrix} r_{W,1}&r_{W,2} & ... & r_{W,m} \end{bmatrix}^T
\end{aligned}
$$

resolve with equation ($Eq1.21$) we get
Eq1.23:

$$
\begin{aligned}
J = (R_s - F\cdot x_A(k_i))^T \cdot (R_s - F\cdot x(k_i)) - 2 \cdot \Delta U^T \cdot \Phi^T \cdot (R_s - F\cdot x_A(k_i) + \Delta U^T \cdot (\Phi^T \cdot \Phi + \bar{R}) \cdot \Delta U
\end{aligned}
$$

the first derivation of cost function
Eq1.24:

$$
\begin{aligned}
\frac{dJ}{d \Delta U} = -2\cdot \Phi^T \cdot (R_s - F\cdot x_A(k_i)) + 2\cdot  (\Phi^T \cdot \Phi + \bar{R}) \cdot \Delta U
\end{aligned}
$$

With the necessary condition $\frac{dJ}{d \Delta U} = 0$ we get
Eq1.25:

$$
\begin{aligned}
\Delta U &= (\Phi^T \cdot \Phi + \bar{R})^{-1} \cdot \Phi^T \cdot (R_s - F\cdot x_A(k_i))\\
\Delta U &= E \cdot (R_s - F\cdot x_A(k_i))\\
E        &= (\Phi^T \cdot \Phi + \bar{R})^{-1} \cdot \Phi^T
\end{aligned}
$$

| variable   | dimension                                                                                                    | comment |
| ---------- | ------------------------------------------------------------------------------------------------------------ | ------- |
| $\Delta U$ | $(N_c\cdot m) \times 1$                                                                                      |         |
| $R_s$      | $(N_p\cdot q) \times 1$                                                                                      |         |
| $r(k$)     | $q\times 1$                                                                                                  |         |
| $\bar{R}$  | $(N_c\cdot m) \times (N_p\cdot q) \cdot (N_p\cdot q) \times (N_c\cdot m) ={(N_c\cdot m)\times (N_c\cdot m)}$ |         |
| $r_W$      | $m \times 1$                                                                                                 |         |
| $F$        | $(N_p\cdot q) \times N$                                                                                      |         |
| $x_A(k)$   | $N \times 1$                                                                                                 |         |
| $E$        | $(N_c\cdot m\times N_c\cdot m)^{-1} * (N_p\cdot q\times N_c \cdot m)^T={(N_c\cdot m) \times (N_p\cdot q)}$   |         |

### Receding Horizon Control

With the receding horizon control principle, we only implement the first sample of the sequence $\Delta U$ ($Eq1.24$). When the next sample period arrives, the more recent measurement is taken to form the state vector $x(k_i + 1)$ for calculation of the new sequence of control signal.

### Closed Loop Control System

With using only the first sample:
Eq1.26:

$$
\begin{aligned}
  \Delta u(k_i) &= 
  \begin{bmatrix}
  I_{m\times m} & 0_{m\times m} & 0{m\times m} & \cdots & 0{m\times m}
  \end{bmatrix}
  \cdot \Delta U\\
  \\
  I_{m\times m} &= 
  \begin{bmatrix}
  1 & 0 & \cdots & 0\\
  0 & 1 & \cdots & 0\\
  \cdots & \cdots &  & \cdots\\
  0 & 0 & \cdots & 1\\
 \end{bmatrix} \\
 \\
 0_{m\times m} &= 
 \begin{bmatrix}
 0 & 0 & \cdots & 0\\
 0 & 0 & \cdots & 0\\
 \cdots & \cdots &  & \cdots\\
 0 & 0 & \cdots & 0\\
 \end{bmatrix}
\end{aligned}
$$

and converting into
Eq1.27:

$$
\begin{aligned}
\Delta u(k_i) &= K_y \cdot R_s - K_{mpc} \cdot x_A(k_i)
\end{aligned}
$$

or Eq1.28:

$$
\begin{aligned}
\Delta u(k_i) &= K_y \cdot (R_s - F \cdot x_A(k_i))
\end{aligned}
$$

with $K_y$ and $K_{mpc}$
Eq1.29:

$$
\begin{aligned}
K_y &= 
\begin{bmatrix}
  I_{m\times m} & 0_{m\times m} & 0{m\times m} & \cdots & 0{m\times m}
\end{bmatrix} \cdot E\\
K_{mpc} &= 
\begin{bmatrix}
I_{m\times m} & 0_{m\times m} & 0{m\times m} & \cdots & 0{m\times m}
\end{bmatrix} \cdot  E \cdot F\\
K_{mpc} &= K_y \cdot F
\end{aligned}
$$

| variable  | dimension                                                                          | comment |
| --------- | ---------------------------------------------------------------------------------- | ------- |
| $K_y$     | $(m \times N_c\cdot m) * (N_c\cdot m) \times (N_p\cdot q) = {m \times N_p\cdot q}$ |         |
| $K_{mpc}$ | $(m \times N_p\cdot q) *  (N_p\cdot q\times N)= {m \times N}$                      |         |

### Calculation Steps

| nr         | steps                                                                                                                                 | equation          |
| ---------- | ------------------------------------------------------------------------------------------------------------------------------------- | ----------------- |
| Init       | build discrete model $A_d,B_d,C_d$                                                                                                    | $Eq1.1$           |
|            | build augmented model $A_A,B_A,C_A$                                                                                                   | $Eq1.8$           |
|            | choose control horizon $N_c$ and prediction horizon $N_p$                                                                             | $Eq1.12$,$Eq1.13$ |
|            | build $F$ and $\Phi$                                                                                                                  | $Eq1.18$,$Eq1.19$ |
|            | choose $r_W$ and build $\bar{R}$                                                                                                      | $Eq1.22$          |
| Loop $k_i$ | get measured or derived states $x_d(k_i)$                                                                                             |                   |
|            | get/build $R_s=   \begin{bmatrix}    r(k_i+1)^T & r(k_ i+2)^T & ... & r(k_i+N_p)^T \end{bmatrix}^T$                                   | $Eq1.20$          |
|            | build $y(k_i)= C_d \cdot x_d(k_i)$                                                                                                    | $Eq1.1$           |
|            | build $\Delta x_d(k_i) = x_d(k_i) - x_d(k_{i-1})$                          if $k_i == 0$  => set     $\Delta x_d(k_{i})=0$            | $Eq1.1$           |
|            | build $x_A(k_i)=\begin{bmatrix}\Delta x_d(k_i)^T &    y(k_i)^T\end{bmatrix}^T$                                                        | $Eq1.5$           |
|            | build $E = (\Phi^T \cdot \Phi + \bar{R})^{-1} \cdot \Phi^T$                                                                           | $Eq1.25$          |
|            | build $K_y = \begin{bmatrix} I_{m\times m} & 0_{m\times m} & 0{m\times m} & \cdots & 0{m\times m}\end{bmatrix} \cdot E$               | $Eq1.29$          |
|            | build $\Delta u(k_i) = K_y \cdot (R_s - F \cdot x_A(k_i))$                                                                            | $Eq1.28$          |
|            | build $u(k_i)     = \Delta u(k_i) + u(k_{i-1})$                                if $k_i == 0$  => set     $u(k_i)     = \Delta u(k_i)$ | $Eq1.1$           |
|            | set $k_i = k_{i+1}$                                                                                                                   |                   |
