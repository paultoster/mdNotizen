# Estimation Side Slip Angle

(estimation side slip angle)

## Approach from Matthias Schorn

From Matthias Schorn "Quer- und Längsregelung eines Personenkraftwagens für ein Fahrerassistenzsystem zur Unfallvermeidung, IAT, 2007" and Anne von Vietinghoff "Nichtlineare Regelung von Kraftfahrzeugen in querdynamisch kritischen Fahrsituationen, Universitätsverlag Karlsruhe, 2008"

### Extended Kalman-Filter (EKF)

nonlinear processmodel

equation 4.23 and 4.24

$$
\begin{aligned}
x_k &= f(x_{k-1},u_{k-1},w_{k-1}) \\
z_k &= h(x_k,v_k)
\end{aligned}
$$

Getting systemmatrix and measurementmatrix by Jacobianmatrix

equation 4.25, 4.26

$$
\begin{aligned}
A_{[i,j]} &= \frac {\partial f_{[i]} (\hat x_{k-1},u_{k-1},())}
                   {\partial x_{[j]}} 
\\
B_{[i,l]} &= \frac {\partial f_{[i]} (\hat x_{k-1},u_{k-1},())}
                   {\partial u_{[l]}}
\\
H_{[i,j]} &= \frac {\partial h_{[i]}(\tilde x_k,())}
                   {\partial x_{[j]}}
\end{aligned}


$$

with $\tilde x_k = f(\hat x_{k-1},u_{k-1},())$ and Jacobimatrix for $w_k,v_k$

equation 4.26

$$
\begin{aligned}
W_{[i,j]} &= \frac {\partial f_{[i]} (\hat x_{k-1},u_{k-1},())}
                   {\partial w_{[j]}} 
\\
V_{[i,j]} &= \frac {\partial h_{[i]}(\tilde x_k,())}
                   {\partial v_{[j]}}
\end{aligned}
$$

the procedure fro EKF is:

A) time update

1) prediction states

$$
\hat x^-_k = f(\hat x_{k-1},u_{k-1},())

$$

2. prediction covariance

$$
P^-_k = A_k P_{k-1} A^T_k + W_k Q_{k-1} W^T_k
$$

B) measurement update

3. kalman gain
   
   $$
   K_k = P^-_{k} H^T_k \big(H_k P^-_{k} H^T_k + V_k R_{k} V^T_k \big)^{-1} 
   $$

4. correction
   
   $$
   \hat x_k = \hat x^-_k + K_k \cdot \big(z_k -  h(\hat x^-_{k},() \big)
   $$

5. correction covariance
   
   $$
   P_k = \big(I-K_k\cdot H_k)\cdot P^-_{k}
   $$

Remark: by not using stochastic input, as described $W_k$ and $V_k$ are Identitymatrices

$Q_k$ and $R_k$ could be derived by the linearized equation

$$
\begin{aligned}
\Delta x_{k} &=  A_k \cdot \Delta x_{k-1} + B_k \cdot \Delta u_{k-1} \\
\Delta x_{k} &= x_{k}-x_{k-1} \\
\Delta x_{k-1} &= x_{k-1}-x_{k-2} \\
\Delta u_{k-1} &= u_{k-1}-u_{k-2} \\

\end{aligned}
$$

to calculate $Q_k$ as

$$
Q_k = 
\begin{bmatrix}
q^2_{1,k} & 0 &... & 0 \\
0 & q^2_{2,k} & ... & 0 \\
.\\
.\\
.\\
0 & 0 & 0 ... & q^2_{n,k}
\end{bmatrix}
$$

and getting from system equation

$$
\begin{aligned}
q_{k} &=  A_k \cdot x_{std} + B_k \cdot u_{std}\\
or \\
q_{k} &=  B_k \cdot u_{std}
\end{aligned}
$$

where $x_{std}$ and minus$u_{std}$ are standard deviations from state and input

$R_k$ could directly set diagianal with

$$
R_k = 
\begin{bmatrix}
z^2_{1,std,meas} & 0 &... & 0 \\
0 & z^2_{2,std,meas} & ... & 0 \\
.\\
.\\
.\\
0 & 0 & 0 ... & z^2_{n,std,meas}
\end{bmatrix}
$$
