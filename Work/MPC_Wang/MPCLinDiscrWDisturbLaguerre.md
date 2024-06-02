# 3. MPC, Linear Discrete with  Disturbance Using Laguerre Polynoms

Nach  "Liuping Wang; Model Predictive Control System Design and Implementation Using MATLAB; 2009; Introduction to DMPC (Ch. 1) +  DMPC with constraints (Ch. 2)"

## Input described as Laguerre Functions

For SISO-System the augmented input could be written as

Eq3.1

$$
\begin{aligned}
\Delta u(k_i+j) &= \sum_{i=1}^N c_i\cdot l_i(j)=
\begin{bmatrix}l_1(j)&l_2(j)&...&l_N(j)\end{bmatrix}\cdot
\begin{bmatrix}c_1\\c_2\\...\\c_N\end{bmatrix}
\\
\Delta u(k_i+j) &= L(j)^T\cdot \eta
\\
L(j) &= \begin{bmatrix}l_1(j)\\l_2(j)\\...\\l_N(j)\end{bmatrix}
\\
\eta &= \begin{bmatrix}c_1\\c_2\\...\\c_N\end{bmatrix}
\end{aligned} 
$$

L(j) are the polynomial coefficients, $\eta$ the gains to found by optimization 

The polynomial coefficients are describes as 

Eq3.2

$$
\begin{aligned}
l_i(0)&=\sqrt{1-a^2}\cdot(-1)^{i-1}\cdot a^{i-1},
 \space\space i=1\space ...\space N,\space\space 0\le a\lt 1
\\
\\
L(0)&=\sqrt{1-a^2}\cdot
\begin{bmatrix}1\\-a\\a^2\\...\\(-1)^{N-1}\cdot a^{N-1}\end{bmatrix}
\\
L(j+1)&=A_l\cdot L(j)
\\
\\
A_l &= \begin{bmatrix}a&0&0&...&0\\
                      \beta&a&0&...&0\\
                      -a\cdot \beta&\beta&a&...&0\\
                      (-1)^{N-2}\cdot a^{N-2}\cdot\beta&
                      (-1)^{N-3}\cdot a^{N-3}\cdot\beta&
                      (-1)^{N-4}\cdot a^{N-4}\cdot\beta&...&a
       \end{bmatrix}\\
\\
\beta&= \sqrt{1-a^2}\cdot
\end{aligned}
$$

For a MIMO-System

Eq3.3

$$
\Delta u(k) = \begin{bmatrix}\Delta u_1(k)\\
                             \Delta u_2(k)\\
                             ...\\
                             \Delta u_m(k)\end{bmatrix}=
\begin{bmatrix}
L_1^T(k)\cdot \eta_1\\
L_2^T(k)\cdot \eta_2\\
...\\
L_m^T(k)\cdot \eta_m
\end{bmatrix}
$$

| variable      | dimension     | comment |
| ------------- | ------------- | ------- |
| $\Delta u(k)$ | $m\times 1$   |         |
| $L_i^T$       | $1\times N_i$ |         |
| $\eta_i$      | $N_i\times 1$ |         |

## Discrete Model

See Eq2.1 in "MPCLinDiscrWDisturb.md"

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
\\ with\space substitution
\\ 
\phi(j)^T&=\sum_{i=0}^{j-1} A^{j-i-1}_A \cdot
\begin{bmatrix}
    B_1\cdot L_1(i)^T&
    B_2\cdot L_2(i)^T&
    ...&
    B_m\cdot L_m(i)^T
\end{bmatrix}
\\
\\
x_A(k_i+j|k_i) &= A^j_A \cdot x_A(k_i) + \phi(j)^T \cdot \eta\\
&+ \sum_{i=0}^{j-1} A^{j-i-1}_A \cdot E_A \cdot \Delta \nu(k_i+i)
\end{aligned}
$$

Eq3.6:

$$
\begin{aligned}
y_A(k_i+j|k_i) &= C_A \cdot A^j_A \cdot x_A(k_i) + C_A \cdot \phi(j)^T \cdot \eta\\
&+ \sum_{i=0}^{j-1} C_A \cdot A^{j-i-1}_A \cdot E_A \cdot \Delta \nu(k_i+i)\\

\end{aligned}
$$

### Optimization, Cost function

The target vector $y_r(k+j)$ described over the predictive horizon
Eq3.7:

$$
\begin{aligned}
  y_r(k+j) &= 
  \begin{bmatrix}
    y_1(k+j)\\ y_2(k+j)\\ ... \\y_q(k+j)
 \end{bmatrix}^T\\
 j&=1,2, ..., N_p
\end{aligned}
$$

the the error is

Eq3.8

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
\end{bmatrix}\space n_A=n+q
$$

the cost function can be build as
Eq3.10:

$$
\begin{aligned}
J &= \Delta_j^T\cdot \Delta_j  + \eta^T \cdot R_L \cdot \eta\\
J &= (x_r(k+j)-x_A(k+j))^T\cdot Q\cdot (x_r(k+j)-x_A(k+j))  
   + \eta^T \cdot R_L \cdot \eta\\
Q &= C_A^T\cdot C_A\\
R_L &= \begin{bmatrix}
R_{1L}\\
&R_{2L}\\
&&...\\
&&&R_{mL}
\end{bmatrix}; \space\space R_{iL} = r_{wi}\cdot I_{N_i\times N_i}

\end{aligned}
$$

When substituting $x_A(k+j)$ ($Eq3.5$) and writing $G(j)$
Eq3.11:

$$
\begin{aligned}
J &= \sum_{j=1}^{N_p}

\Big[ (  x_r(k_i+j) 
- A^j_A \cdot x_A(k_i) 
- \sum_{i=0}^{j-1} A^{j-i-1}_A \cdot E_A \cdot \Delta \nu(k_i+i)
- \phi(j)^T \cdot \eta
)^T\\
&\cdot Q \cdot 
(  x_r(k_i+j) 
- A^j_A \cdot x_A(k_i) 
- \sum_{i=0}^{j-1} A^{j-i-1}_A \cdot E_A \cdot \Delta \nu(k_i+i)
- \phi(j)^T \cdot \eta
)\Big]\\
&+ \eta^T \cdot R_L \cdot \eta
\\
G(j) &= x_r(k_i+j)- A^j_A \cdot x_A(k_i) - \sum_{i=0}^{j-1} A^{j-i-1}_A \cdot E_A \cdot \Delta \nu(k_i+i)
\\
J &= \sum_{j=1}^{N_p}
\Big[(  G(j)
- \phi(j)^T \cdot \eta
)^T
\cdot Q \cdot 
(  G(j)
- \phi(j)^T \cdot \eta
)\Big]\\
&+ \eta^T \cdot R_L \cdot \eta
\end{aligned}
$$

Eq3.12

$$
\begin{aligned}

J &= \sum_{j=1}^{N_p} G(j)^T \cdot Q \cdot G(j)\\ 
&- \sum_{j=1}^{N_p} G(j)^T \cdot Q \cdot \phi(j)^T \cdot \eta\\ 
&- \sum_{j=1}^{N_p} \eta^T \cdot \phi(j) \cdot Q \cdot G(j)\\
&+ \sum_{j=1}^{N_p} \eta^T \cdot \phi(j) \cdot Q \cdot \phi(j)^T \cdot \eta\\ 
&+ \eta^T \cdot R_L \cdot \eta
\end{aligned}
$$

$\sum_{j=1}^{N_p} G(j)^T \cdot Q \cdot \phi(j)^T \cdot \eta$ is same as $\sum_{j=1}^{N_p} \eta^T \cdot \phi(j) \cdot Q \cdot G(j)$  

This is because of the construct $a^T\cdot b = b^T \cdot a$

then

Eq3.13

$$
\begin{aligned}

J &= \eta^T \cdot (\sum_{j=1}^{N_p} 
     \phi(j) \cdot Q \cdot \phi(j)^T +R_L) \cdot \eta\\
  &- 2\cdot \eta^T \cdot\sum_{j=1}^{N_p}  \phi(j) \cdot Q \cdot G(j)\\
&+\sum_{j=1}^{N_p} G(j)^T \cdot Q \cdot G(j)\\ 
\end{aligned}
$$

Eq3.24:

$$
\begin{aligned}
J&={1\over2}\cdot \eta^T\cdot \Omega\cdot \eta+\eta^T\cdot\Psi+C\\
\Omega &= 2 \cdot (\sum_{j=1}^{N_p} 
     \phi(j) \cdot Q \cdot \phi(j)^T +R_L)\\
\Psi &= -2\cdot\sum_{j=1}^{N_p}  \phi(j) \cdot Q \cdot G(j)\\
C &= \sum_{j=1}^{N_p} G(j)^T \cdot Q \cdot G(j)
\end{aligned}
$$

The solution the quatratic equation without constraints

Eq3.25

$$
\eta = -\Omega^{-1}\cdot\Psi
$$
