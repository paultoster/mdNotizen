# 1. MPC, linear discrete modification for $R_s-Y$

Base is: [MPCLinearDiscrete.md](.\MPCLinearDiscrete.md)

Eq1.21 describes cost function

$$
\begin{aligned}
J = (R_s - Y)^T \cdot (R_s - Y) + \Delta U^T \cdot \bar{R} \cdot \Delta U
\end{aligned}
$$

$R_s - Y$ will gathered to $Y^*$

Eq1.19:

$$
\begin{aligned}
  Y &= 
  \begin{bmatrix}
    y_A(k_i+1|k_i) \\ y_A(k_ i+2|k_i) \\ ... \\ y_A(k_i+N_p|k_i)
  \end{bmatrix}\\
R_s - Y &= Y^* = 
  \begin{bmatrix}
    r(k_i+1)-y_A(k_i+1|k_i) \\ 
    r(k_i+2)-y_A(k_ i+2|k_i) \\ 
    ... \\ 
    r(k_i+N_p)-y_A(k_i+N_p|k_i)
  \end{bmatrix}\\
\\
Y^* &= F \cdot x_A^*(k_i) + \Phi \cdot \Delta U\\
\\
x_A^*(k_i) &=   \begin{bmatrix}
    \Delta x_d(k_i) \\ 
    r(k) - y_A(k_i)
  \end{bmatrix}
\end{aligned}
$$

Then we have Eq21 modified to

Eq1.21a:

$$
J = (Y^*)^T \cdot Y^* + \Delta U^T \cdot \bar{R} \cdot \Delta U
$$

Eq1.23a:

$$
\begin{aligned}
J &= (F \cdot x_A^*(k_i) + \Phi \cdot \Delta U)^T \cdot 
(F \cdot x_A^*(k_i) + \Phi \cdot \Delta U) 
+ \Delta U^T \cdot \bar{R} \cdot \Delta U\\
\end{aligned}
$$

Eq1.19a:

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

Eq1.23b:

$$
\begin{aligned}
J &= (C_A\cdot F^* \cdot x_A^*(k_i) + C_A\cdot \Phi^* \cdot \Delta U)^T \cdot 
(C_A\cdot F^* \cdot x_A^*(k_i) + C_A\cdot \Phi^* \cdot \Delta U) 
+ \Delta U^T \cdot \bar{R} \cdot \Delta U\\
J &= (F^* \cdot x_A^*(k_i) + \Phi^* \cdot \Delta U)^T 
     \cdot C_A^T\cdot C_A^T \cdot 
     (F^* \cdot x_A^*(k_i) + \Phi^* \cdot \Delta U) 
     + \Delta U^T \cdot \bar{R} \cdot \Delta U\\
J &= (F^* \cdot x_A^*(k_i) + \Phi^* \cdot \Delta U)^T 
     \cdot Q \cdot 
     (F^* \cdot x_A^*(k_i) + \Phi^* \cdot \Delta U) 
     + \Delta U^T \cdot \bar{R} \cdot \Delta U\\
\\
J &=  (x_A^*(k_i))^T\cdot (F^*)^T\cdot Q \cdot F^* \cdot x_A^*(k_i) 
   +  (x_A^*(k_i))^T\cdot (F^*)^T\cdot Q \cdot \Phi^* \cdot \Delta U \\
  &+  (\Delta U^T\cdot (\Phi^*)^T\cdot Q \cdot F^* \cdot x_A^*(k_i) 
  +  (\Delta U^T\cdot (\Phi^*)^T\cdot Q \cdot \Phi^* \cdot \Delta U \\
  &+ \Delta U^T \cdot \bar{R} \cdot \Delta U\\
\\
J &=  (x_A^*(k_i))^T\cdot (F^*)^T\cdot Q \cdot F^* \cdot x_A^*(k_i) \\
  &+  2\cdot (\Delta U^T\cdot (\Phi^*)^T\cdot Q \cdot F^* \cdot x_A^*(k_i) \\
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
\Psi &= 2\cdot(\Phi^*)^T\cdot Q \cdot F^* \cdot x_A^*(k_i)\\
C &= (x_A^*(k_i))^T\cdot (F^*)^T\cdot Q \cdot F^* \cdot x_A^*(k_i)
\end{aligned}
$$

The solution the quatratic equation without constraints

Eq1.25a

$$
\Delta U = -\Omega^{-1}\cdot\Psi
$$

| variable   | dimension                            | comment          |
| ---------- | ------------------------------------ | ---------------- |
| $\Omega$   | $(N_c\cdot m)\times(N_c\cdot m)$   |                  |
| $\Psi$     | $(N_c\cdot m) \times 1$              |                  |
| $\Phi^*$   | $(N_p\cdot n_A)\times (N_c\cdot m)$ | $(N_c \leq N_p)$ |
| Q          | $n_A \times n_A$                     |                  |
| $F^*$      | $(N_p\cdot n_A) \times n_A$          |                  |
| $\Delta U$ | $(N_c\cdot m) \times 1$              |                  |

## Conclusion

To integrate the the target vector $R_s$ into $x_A^*$ will leed to use the target for one step $k_i+1$. This implies somehow a constant targetvector, which will no always be the case

Therefor it must be differtnly described  (see MPCLinearDiscrete_mod2.m)
