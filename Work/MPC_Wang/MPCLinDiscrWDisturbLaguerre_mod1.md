# 3. MPC, Linear Discrete with  Disturbance Using Laguerre Polynoms (Matrix-Form)

Base is: [MPCLinDiscrWDisturbLaguerre.md](.\MPCLinDiscrWDisturbLaguerre.md)

## Augmented Model

To build the augmented model see See Eq2.2 - 2.8 in "MPCLinDiscrWDisturb.md"

In Eq2.7 the System is defined:

$$
\begin{aligned}
  x_A(k+1) &= A_A \cdot x_A(k) + B_A \cdot \Delta u(k)
            + E_A \cdot \Delta \nu(k)\\
  y_A(k)   &= C_A \cdot x_A(k)\\
\end{aligned}
$$

Now $\Delta u(k)$ has to be substituted

Eq3.4:

$$
\begin{aligned}
  B_A &= \begin{bmatrix}B_1&B_2&...&B_m\end{bmatrix}\\
  B_A \cdot \Delta u(k) &= 
  \begin{bmatrix}
    B_1\cdot L_1(k)^T\cdot \eta_1&
    B_2\cdot L_2(k)^T\cdot \eta_2&
    ...&
    B_m\cdot L_m(k)^T\cdot \eta_m
  \end{bmatrix}\\
  B_A \cdot \Delta u(k) &= 
  \begin{bmatrix}
    B_1\cdot L_1(k)^T&
    B_2\cdot L_2(k)^T&
    ...&
    B_m\cdot L_m(k)^T
  \end{bmatrix}
\cdot \eta\\
\\
\eta &= 
  \begin{bmatrix}
    \eta_1\\
    \eta_2\\
    ...\\
    \eta_m
  \end{bmatrix}\\

\end{aligned}
$$

| variable              | dimension                   | comment   |
|:--------------------- |:--------------------------- | --------- |
| $B_A$                 | $n_A\times m$               |           |
| $B_i\cdot L_i(k)^T$   | $n_A\times N_i$             | $i=1...m$ |
| $\eta$                | $(N_1+N_2+...+N_m)\times 1$ |           |
| $B_A\cdot\Delta u(k)$ | $n_A \times 1$              |           |
| $\Delta u(k)$         | $m \times 1$                |           |

## Solution of Predictive Control for MIMO w Disturbance and Laguerre Polynomials

Based on Eq2.15 in "MPCLinDiscrWDisturb.md" $\Delta u(k)$ must be substituted

Eq3.5

$$
\begin{aligned}
x_A(k_i+j|k_i) &= A^j_A \cdot x_A(k_i)\\
&+ \sum_{i=0}^{j-1} A^{j-i-1}_A \cdot
\begin{bmatrix}
    B_1\cdot L_1(i)^T&
    B_2\cdot L_2(i)^T&
    ...&
    B_m\cdot L_m(i)^T
\end{bmatrix} \cdot \eta\\
&+ \sum_{i=0}^{j-1} A^{j-i-1}_A \cdot E_A \cdot \Delta \nu(k_i+i)\\
\\
BL(i) &= \begin{bmatrix}
    B_1\cdot L_1(i)^T&
    B_2\cdot L_2(i)^T&
    ...&
    B_m\cdot L_m(i)^T
\end{bmatrix}\\
\\
x_A(k_i+j|k_i) &= A^j_A \cdot x_A(k_i)\\
&+ \sum_{i=0}^{j-1} A^{j-i-1}_A \cdot BL(i) \cdot \eta\\
&+ \sum_{i=0}^{j-1} A^{j-i-1}_A \cdot E_A \cdot \Delta \nu(k_i+i)\\
\end{aligned}
$$

written for j=1,2,3, ... Np

Eq3.5a

$$
\begin{aligned}
x_A(k_i+1) &= A_A \cdot x_A(k_i)\\
               &+ BL(0) \cdot \eta\\
               &+ E_A \cdot \Delta \nu(k_i)\\
x_A(k_i+2) &= A_A \cdot x_A(k_i+1)\\
               &+ BL(1) \cdot \eta\\
               &+ E_A \cdot \Delta \nu(k_i+1)\\
x_A(k_i+3) &= A_A \cdot x_A(k_i+2)\\
               &+ BL(2) \cdot \eta\\
               &+ E_A \cdot \Delta \nu(k_i+2)\\
...\\
x_A(k_i+Np) &= A_A \cdot x_A(k_i+Np-1)\\
               &+ BL(N_p-1)\cdot \eta\\
               &+ E_A \cdot \Delta \nu(k_i+N_p-1)\\

\end{aligned}
$$

Eq3.5b

$$
\begin{aligned}
x_A(k_i+1) &= A_A \cdot x_A(k_i)\\
               &+ BL(0) \cdot \eta\\
               &+ E_A \cdot \Delta \nu(k_i)\\
x_A(k_i+2) &= A_A^2 \cdot x_A(k_i)\\
               &+ A_A \cdot BL(0) \cdot \eta\\
               &+ BL(1) \cdot \eta\\
               &+ A_A \cdot E_A \cdot \Delta \nu(k_i)\\
               &+ E_A \cdot \Delta \nu(k_i+1)\\
x_A(k_i+3) &= A_A^3 \cdot x_A(k_i)\\
               &+ A_A^2 \cdot BL(0) \cdot \eta\\
               &+ A_A \cdot BL(1) \cdot \eta\\
               &+ BL(2) \cdot \eta\\
               &+ A_A^2 \cdot E_A \cdot \Delta \nu(k_i)\\
               &+ A_A \cdot E_A \cdot \Delta \nu(k_i+1)\\
               &+ E_A \cdot \Delta \nu(k_i+2)\\

...\\
x_A(k_i+N_p) &= A_A^{N_p} \cdot x_A(k_i)\\
               &+ A_A^{N_p-1} \cdot BL(0) \cdot \eta\\
               &+ A_A^{N_p-2} \cdot BL(1) \cdot \eta\\
               &...\\
               &+ BL(N_p-1) \cdot \eta\\
               &+ A_A^{N_p-1} \cdot E_A \cdot \Delta \nu(k_i)\\
               &+ A_A^{N_p-2} \cdot E_A \cdot \Delta \nu(k_i+1)\\
               &...\\
               &+ E_A \cdot \Delta \nu(k_i+N_p-1)\\


\end{aligned}
$$

Eq3.5c

$$
\begin{aligned}
  X = F^* \cdot x_A(k_i) + \Phi^* \cdot \eta +\Theta^* \cdot \Delta V
\end{aligned}
$$

Eq3.5d

$$
\begin{aligned}
F^* &= \begin{bmatrix}
    A_A\\
    A_A^2\\
    ...\\
    A_A^{N_p}
  \end{bmatrix} \\
\\
  \Phi^* &=
  \begin{bmatrix}
    BL(0)\\
    A_A \cdot BL(0) + BL(1)\\
    A_A^2 \cdot BL(0) + A_A \cdot BL(1) + BL(2)\\
    ...\\
    A_A^{N_p-1} \cdot BL(0) + A_A^{N_p-2} \cdot BL(1) 
    +  ... +  
    A_A \cdot BL(N_p-2) + BL(N_p-1) 
  \end{bmatrix}\\
  &=\begin{bmatrix}
    \Phi^*(1)\\
    \Phi^*(2)\\
    \Phi^*(3)\\
    ...\\
    \Phi^*(N_p)
  \end{bmatrix}=
  \begin{bmatrix}
    BL(0)\\
    A_A \cdot BL(0) + BL(1)\\
    A_A \cdot (A_A \cdot BL(0) + BL(1)) + BL(2)\\
    ...\\
    A_A \cdot \Phi^*(N_p-1) + BL(N_p-1) 
  \end{bmatrix}
\\
\\
  \Theta^* &=
  \begin{bmatrix}
    E_A & 0 & 0 & ... & 0\\
    A_A \cdot E_A & E_A & 0 & ... & 0\\
    A_A^2 \cdot E_A & A_A \cdot E_A &  E_A & ... & 0\\
    ...\\
    A_A^{N_p-1} \cdot E_A & A_A^{N_p-2} \cdot E_A 
    & A_A^{N_p-3} \cdot E_A &  ... &
    E_A
  \end{bmatrix}\\

\end{aligned}
$$

Eq3.6:

$$
\begin{aligned}
y_A(k_i+j|k_i) &= C_A \cdot A^j_A \cdot x_A(k_i) + C_A \cdot \phi(j)^T \cdot \eta\\
&+ \sum_{i=0}^{j-1} C_A \cdot A^{j-i-1}_A \cdot E_A \cdot \Delta \nu(k_i+i)\\

\end{aligned}
$$

Eq3.6a:

$$
\begin{aligned}
  Y = F \cdot x_A(k_i) + \Phi \cdot \eta +\Theta \cdot \Delta V
\end{aligned}
$$

Eq3.6b:

$$
\begin{aligned}
F &= \begin{bmatrix}
    CA \cdot A_A\\
    CA \cdot A_A^2\\
    ...\\
    CA \cdot A_A^{N_p}
  \end{bmatrix} \\
\\
  \Phi &=
  \begin{bmatrix}
    CA \cdot BL(0)\\
    CA \cdot (A_A \cdot BL(0) + BL(1))\\
    CA \cdot (A_A^2 \cdot BL(0) + A_A \cdot BL(1) + BL(2))\\
    ...\\
    CA \cdot (A_A^{N_p-1} \cdot BL(0) + A_A^{N_p-2} \cdot BL(1) 
    +  ... +  
    CA \cdot A_A \cdot BL(N_p-2) + BL(N_p-1) )
  \end{bmatrix}\\
  &=\begin{bmatrix}
    \Phi(1)\\
    \Phi(2)\\
    \Phi(3)\\
    ...\\
    \Phi(N_p)
  \end{bmatrix}=
  \begin{bmatrix}
    CA \cdot BL(0)\\
    CA \cdot (A_A \cdot BL(0) + BL(1))\\
    CA \cdot (A_A \cdot (A_A \cdot BL(0) + BL(1)) + BL(2))\\
    ...\\
    CA \cdot (A_A \cdot \Phi^*(N_p-1) + BL(N_p-1) )
  \end{bmatrix}
\\
\\
  \Theta &=
  \begin{bmatrix}
    CA \cdot E_A & 0 & 0 & ... & 0\\
    CA \cdot A_A \cdot E_A & CA \cdot E_A & 0 & ... & 0\\
    CA \cdot A_A^2 \cdot E_A & CA \cdot A_A \cdot E_A &  CA \cdot E_A & ... & 0\\
    ...\\
    CA \cdot A_A^{N_p-1} \cdot E_A & CA \cdot A_A^{N_p-2} \cdot E_A 
    & CA \cdot A_A^{N_p-3} \cdot E_A &  ... &
    CA \cdot E_A
  \end{bmatrix}\\

\end{aligned}
$$
