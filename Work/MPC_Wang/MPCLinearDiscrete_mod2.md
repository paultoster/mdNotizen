# 1. MPC, linear discrete modification for $R_s-Y$

Base is: [MPCLinearDiscrete.md](.\MPCLinearDiscrete.md) and [MPCLinearDiscrete_mod1](.\MPCLinearDiscrete_mod1.md)

Eq1.21 describes cost function

$$
\begin{aligned}
J = (R_s - Y)^T \cdot (R_s - Y) + \Delta U^T \cdot \bar{R} \cdot \Delta U
\end{aligned}
$$

The target vector $R_s$ described over the predictive horizon is
Eq1.20:

$$
\begin{aligned}
  R_s &= 
  \begin{bmatrix}
    y_r(k+1)\\ y_r(k+2)\\ ... \\y_r(k+N_p)
 \end{bmatrix}\\
\\
  y_r(k+j) &= 
  \begin{bmatrix}
    y_{r1}(k+j)\\ y_{r2}(k+j)\\ ... \\y_{rp}(k+j)
 \end{bmatrix}\\
 j&=1,2, ..., N_p
\end{aligned}
$$

the the error $(R_s - Y)$ is

Eq1.21a

$$
\begin{aligned}
\Delta_j &= (y_r(k+j)-y_A(k+j))\\
y_r(k+j) &= C_A\cdot x_r(k+j)\\
y_A(k+j) &= C_A\cdot x_A(k+j)\\
\Delta_j &= C_A\cdot (x_r(k+j)-x_A(k+j))
\end{aligned}
$$

Then the target x-vector is

Eq3.9

$$
x_r(k+j) = \begin{bmatrix}
\text{0}_{n\times 1}\\
y_r(k+j)
\end{bmatrix}
$$

the cost function can be build as
Eq1.21b:

$$
\begin{aligned}
J &= (X_R - X_A)^T \cdot Q\cdot (X_R - X_A) + \Delta U^T \cdot \bar{R} \cdot \Delta U\\
Q &= C_A^T\cdot C_A\\
\\
X_R &= \begin{bmatrix}
x_r(k+1)\\
x_r(k+2)\\
...\\
x_r(k+N_p)
\end{bmatrix}\\
\\
X_A &= \begin{bmatrix}
x_A(k+1)\\
x_A(k+2)\\
...\\
x_A(k+N_p)
\end{bmatrix}

\end{aligned}
$$

$X_A$ can be written as

Eq1.21b:

$$
\begin{aligned}
X_A &= F^* \cdot x_A(k_i) + \Phi^* \cdot \Delta U\\
\\
\end{aligned}
$$

with rewriting Eq1.19a:

$$
\begin{aligned}
  F &     =
  \begin{bmatrix}
    C_A \cdot A_A\\
    C_A \cdot A_A^2\\
    ...\\
    C_A \cdot A_A^{N_p}
  \end{bmatrix}
= C_A \cdot   \begin{bmatrix}
    A_A\\
    A_A^2\\
    ...\\
    A_A^{N_p}
  \end{bmatrix} 
     = C_A \cdot F^*\\
F^* &= \begin{bmatrix}
    A_A\\
    A_A^2\\
    ...\\
    A_A^{N_p}
  \end{bmatrix} \\
\\
\Phi &= C_A \cdot \Phi^*\\
\\
  \Phi &=
  \begin{bmatrix}
    C_A \cdot B_A & 0 & 0 & ... & 0\\
    C_A \cdot A_A \cdot B_A & C_A \cdot B_A & 0 & ... & 0\\
    C_A \cdot A_A^2 \cdot B_A & C_A \cdot A_A \cdot B_A &  C_A \cdot B_A & ... & 0\\
    ...\\
    C_A \cdot A_A^{N_p-1} \cdot B_A & C_A \cdot A_A^{N_p-2} \cdot B_A & C_A \cdot A_A^{N_p-3} \cdot B_A &  ... & C_A \cdot   
    A_A^{N_p-N_c} \cdot B_A
  \end{bmatrix}\\
  \Phi^* &=
  \begin{bmatrix}
    B_A & 0 & 0 & ... & 0\\
    A_A \cdot B_A & B_A & 0 & ... & 0\\
    A_A^2 \cdot B_A & A_A \cdot B_A &  B_A & ... & 0\\
    ...\\
    A_A^{N_p-1} \cdot B_A & A_A^{N_p-2} \cdot B_A & A_A^{N_p-3} \cdot B_A &  ... &
    A_A^{N_p-N_c} \cdot B_A
  \end{bmatrix}\\

\end{aligned}
$$

The cost function can be written as

Eq1.23a:

$$
\begin{aligned}
J &= (X_R - F^* \cdot x_A(k_i) - \Phi^* \cdot \Delta U)^T \cdot Q \cdot
(X_R - F^* \cdot x_A(k_i) - \Phi^* \cdot \Delta U) 
+ \Delta U^T \cdot \bar{R} \cdot \Delta U\\
\end{aligned}
$$

Eq1.23b:

$$
\begin{aligned}
J &=  (X_R - F^*\cdot x_A(k_i) )^T\cdot Q \cdot (X_R - F^*\cdot x_A(k_i)) \\
  &-  (X_R - F^*\cdot x_A(k_i) )^T\cdot Q \cdot \Phi^* \cdot \Delta U \\
  &-  \Delta U^T\cdot (\Phi^*)^T\cdot Q \cdot (X_R - F^*\cdot x_A(k_i) ) \\
  &+  \Delta U^T\cdot (\Phi^*)^T\cdot Q \cdot \Phi^* \cdot \Delta U \\
  &+ \Delta U^T \cdot \bar{R} \cdot \Delta U\\
\\
J &=  (X_R - F^*\cdot x_A(k_i) )^T\cdot Q \cdot (X_R - F^*\cdot x_A(k_i)) \\
  &-  2\cdot \Delta U^T\cdot (\Phi^*)^T\cdot Q \cdot (X_R - F^*\cdot x_A(k_i) ) \\
  &+ \Delta U^T \cdot((\Phi^*)^T\cdot Q \cdot \Phi^*+ \bar{R}) \cdot \Delta U\\

\end{aligned}
$$

With $Q=C_A^T \cdot C_A$ and in the form

Eq1.23c:

$$
\begin{aligned}
J&={1\over2}\cdot \Delta U^T\cdot \Omega\cdot \Delta U
   +\Delta U^T\cdot\Psi+C\\
\\
\Omega &= 2 \cdot ((\Phi^*)^T\cdot Q \cdot \Phi^*+ \bar{R})\\
\Psi &= -2\cdot(\Phi^*)^T\cdot Q \cdot (X_R - F^*\cdot x_A(k_i) )\\
C &= (X_R - F^*\cdot x_A(k_i) )^T\cdot Q \cdot (X_R - F^*\cdot x_A(k_i))
\end{aligned}
$$

The solution the quatratic equation without constraints

Eq1.25a

$$
\Delta U = -\Omega^{-1}\cdot\Psi
$$

The dimensions are:

| variable   | dimension                            | comment          |
| ---------- | ------------------------------------ | ---------------- |
| $\Omega$   | $(N_c\cdot m) \times(N_c\cdot m)$   |                  |
| $\Psi$     | $(N_c\cdot m) \times 1$              |                  |
| $\Phi^*$   | $(N_p\cdot n_A) \times (N_c\cdot m)$ | $(N_c \leq N_p)$ |
| Q          | $n_A \times n_A$                     |                  |
| $F^*$      | $(N_p\cdot n_A) \times n_A$          |                  |
| $\Delta U$ | $(N_c\cdot m) \times 1$              |                  |

## Conclusion

To integrate the the target vector $R_s$ into $x_A^*$ will leed to use the target for one step $k_i+1$. This implies somehow a constant targetvector, which will no always be the case

Therefor it must be differtnly described  (see MPCLinearDiscrete_mod2.m)
