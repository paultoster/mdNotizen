# Nonlinear Two Track Model Dynamic Horizontal Model (Part 3)

## 5. States

kinematic horizontal coordinates (equation 2.10)

$$
y_F = 
\begin{bmatrix}   
x_{0B,0} \\ y_{0B,0} \\ \Psi_{0B,0}
\end{bmatrix}
$$

dynamic states horizontal model (equation 3.12)

$$
z_F = 
\begin{bmatrix}   
v^x_{0B,B} \\ v^y_{0B,B} \\ \omega^z_{0B,B}
\end{bmatrix}
$$

dynamics of the spinning wheel (equation 4.1)

$$
omega_F =
\begin{bmatrix}
\Omega_{fl}^{wh}\\
\Omega_{fr}^{wh}\\
\Omega_{rl}^{wh}\\
\Omega_{rr}^{wh}
\end{bmatrix}
$$

or
(equation 5.1):

$$
s = 
\begin{bmatrix}   
x_{0B,0} \\ 
y_{0B,0} \\ 
\Psi_{0B,0} \\
v^x_{0B,B} \\ 
v^y_{0B,B} \\ 
\omega^z_{0B,B} \\
\Omega_{fl}^{wh}\\
\Omega_{fr}^{wh}\\
\Omega_{rl}^{wh}\\
\Omega_{rr}^{wh}
\end{bmatrix}
$$

## 6. State dervation for Jacobi Matrix

the matrix is structured
(equation 6.1):

$$
J =
\begin{bmatrix}
\frac{\partial \dot{x}_{0B,0}}{\partial x_{0B,0}}         & \frac{\partial \dot{x}_{0B,0}}{\partial y_{0B,0}}         & \frac{\partial \dot{x}_{0B,0}}{\partial \Psi_{0B,0}}         & \frac{\partial \dot{x}_{0B,0}}{\partial v^x_{0B,B}}          & \frac{\partial \dot{x}_{0B,0}}{\partial v^y_{0B,B}}          & \frac{\partial \dot{x}_{0B,0}}{\partial \omega^z_{0B,B}}          & \frac{\partial \dot{x}_{0B,0}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{x}_{0B,0}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{x}_{0B,0}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{x}_{0B,0}}{\partial \Omega_{rr}^{wh}}\\  
\\    
\frac{\partial \dot{y}_{0B,0}}{\partial x_{0B,0}}         & \frac{\partial \dot{y}_{0B,0}}{\partial y_{0B,0}}         & \frac{\partial \dot{y}_{0B,0}}{\partial \Psi_{0B,0}}         & \frac{\partial \dot{y}_{0B,0}}{\partial v^x_{0B,B}}           & \frac{\partial \dot{y}_{0B,0}}{\partial v^y_{0B,B}}           & \frac{\partial \dot{y}_{0B,0}}{\partial \omega^z_{0B,B}}          & \frac{\partial \dot{y}_{0B,0}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{y}_{0B,0}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{y}_{0B,0}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{y}_{0B,0}}{\partial \Omega_{rr}^{wh}}\\ 
\\
\frac{\partial \dot{\Psi}_{0B,0}}{\partial x_{0B,0}}      & \frac{\partial \dot{\Psi}_{0B,0}}{\partial y_{0B,0}}      & \frac{\partial \dot{\Psi}_{0B,0}}{\partial \Psi_{0B,0}}      & \frac{\partial \dot{\Psi}_{0B,0}}{\partial v^x_{0B,B}}       & \frac{\partial \dot{\Psi}_{0B,0}}{\partial v^y_{0B,B}}       & \frac{\partial \dot{\Psi}_{0B,0}}{\partial \omega^z_{0B,B}}       & \frac{\partial \dot{\Psi}_{0B,0}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\Psi}_{0B,0}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\Psi}_{0B,0}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{\Psi}_{0B,0}}{\partial \Omega_{rr}^{wh}}\\
\\
\frac{\partial \dot{v}^x_{0B,B}}{\partial x_{0B,0}}       & \frac{\partial \dot{v}^x_{0B,B}}{\partial y_{0B,0}}       & \frac{\partial \dot{v}^x_{0B,B}}{\partial \Psi_{0B,0}}       & \frac{\partial \dot{v}^x_{0B,B}}{\partial v^x_{0B,B}}        & \frac{\partial \dot{v}^x_{0B,B}}{\partial v^y_{0B,B}}        & \frac{\partial \dot{v}^x_{0B,B}}{\partial \omega^z_{0B,B}}        & \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{rr}^{wh}}\\ 
\\
\frac{\partial \dot{v}^y_{0B,B}}{\partial x_{0B,0}}       & \frac{\partial \dot{v}^y_{0B,B}}{\partial y_{0B,0}}       & \frac{\partial \dot{v}^y_{0B,B}}{\partial \Psi_{0B,0}}       & \frac{\partial \dot{v}^y_{0B,B}}{\partial v^x_{0B,B}}        & \frac{\partial \dot{v}^y_{0B,B}}{\partial v^y_{0B,B}}        & \frac{\partial \dot{v}^y_{0B,B}}{\partial \omega^z_{0B,B}}        & \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{rr}^{wh}}\\ 
\\
\frac{\partial \dot{\omega}^z_{0B,B}}{\partial x_{0B,0}}  & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial y_{0B,0}}  & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Psi_{0B,0}}  & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial v^x_{0B,B}}   & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial v^y_{0B,B}}   & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \omega^z_{0B,B}}   & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{rr}^{wh}}\\
\\
\frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial x_{0B,0}} & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial y_{0B,0}} & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \Psi_{0B,0}}  & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial v^x_{0B,B}}  & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial v^y_{0B,B}}  & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \omega^z_{0B,B}}  & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \Omega_{rr}^{wh}}\\
\\
\frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial x_{0B,0}} & \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial y_{0B,0}} &  \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \Psi_{0B,0}} &  \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial v^x_{0B,B}}  &  \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial v^y_{0B,B}}  &  \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \omega^z_{0B,B}}  & \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \Omega_{rr}^{wh}}\\
\\
\frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial x_{0B,0}} & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial y_{0B,0}} & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Psi_{0B,0}}  & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial v^x_{0B,B}}  & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial v^y_{0B,B}}  & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \omega^z_{0B,B}}  & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Omega_{rr}^{wh}}\\
\\
\frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial x_{0B,0}} & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial y_{0B,0}} & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial \Psi_{0B,0}}  & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial v^x_{0B,B}}  & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial v^y_{0B,B}}  & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial \omega^z_{0B,B}}  & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Omega_{rr}^{wh}}& \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial \Omega_{rr}^{wh}}
\end{bmatrix}
$$

Some of the derivations are zero or can be neglected. Values can be calculated for
(equation 6.2):

$$
J =
\begin{bmatrix}
0         & 0         & \frac{\partial \dot{x}_{0B,0}}{\partial \Psi_{0B,0}}         & \frac{\partial \dot{x}_{0B,0}}{\partial v^x_{0B,B}}          & \frac{\partial \dot{x}_{0B,0}}{\partial v^y_{0B,B}}          & 0          & 0 & 0 & 0 & 0\\  
\\    
0         & 0         & \frac{\partial \dot{y}_{0B,0}}{\partial \Psi_{0B,0}}         & \frac{\partial \dot{y}_{0B,0}}{\partial v^x_{0B,B}}           & \frac{\partial \dot{y}_{0B,0}}{\partial v^y_{0B,B}}           & 0          & 0 & 0 & 0 & 0\\ 
\\
0 & 0 & 0 & 0 & 0 & \frac{\partial \dot{\Psi}_{0B,0}}{\partial \omega^z_{0B,B}} & 0 & 0 & 0 & 0 \\
\\
0 & 0 & 0 & \frac{\partial \dot{v}^x_{0B,B}}{\partial v^x_{0B,B}}        & \frac{\partial \dot{v}^x_{0B,B}}{\partial v^y_{0B,B}}        & \frac{\partial \dot{v}^x_{0B,B}}{\partial \omega^z_{0B,B}}        & \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega_{rr}^{wh}}\\ 
\\
0  & 0 & 0 & \frac{\partial \dot{v}^y_{0B,B}}{\partial v^x_{0B,B}}        & \frac{\partial \dot{v}^y_{0B,B}}{\partial v^y_{0B,B}}        & \frac{\partial \dot{v}^y_{0B,B}}{\partial \omega^z_{0B,B}}        & \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega_{rr}^{wh}}\\ 
\\
0  & 0  & 0  & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial v^x_{0B,B}}   & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial v^y_{0B,B}}   & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \omega^z_{0B,B}}   & \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{fl}^{wh}}& \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{fr}^{wh}}& \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{rl}^{wh}}& \frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega_{rr}^{wh}}\\
\\
0 & 0 & 0 & 0  & 0  & 0  & \frac{\partial \dot{\Omega}_{fl}^{wh}}{\partial \Omega_{fl}^{wh}} & 0 & 0 & 0 \\
\\
0 & 0 & 0 & 0  & 0  & 0  & 0 & \frac{\partial \dot{\Omega}_{fr}^{wh}}{\partial \Omega_{fr}^{wh}} & 0 & 0 \\
\\
0 & 0 & 0 &  0  & 0  & 0  & 0 & 0 & \frac{\partial \dot{\Omega}_{rl}^{wh}}{\partial \Omega_{rl}^{wh}} & 0 \\
\\
0 & 0 & 0 &  0  & 0  & 0  & 0 & 0 & 0 & \frac{\partial \dot{\Omega}_{rr}^{wh}}{\partial \Omega_{rr}^{wh}} 
\end{bmatrix}
$$

The following equation numbers are valid (equations 6.3):

$$
J =
\begin{bmatrix}
0         & 0         & 6.4         & 6.4          & 6.4         & 0          & 0 & 0 & 0 & 0\\  
\\    
0         & 0         & 6.4        & 6.4          & 6.4          & 0          & 0 & 0 & 0 & 0\\ 
\\
0 & 0 & 0 & 0 & 0 & 6.4 & 0 & 0 & 0 & 0 \\
\\
0 & 0 & 0  & 6.5 & 6.7  & 6.8 & 6.9 & 6.9 & 6.9 & 6.9 \\ 
\\
0  & 0 & 0 & 6.10 & 6.11 & 6.12        & 6.13 & 6.13 & 6.13 & 6.13 \\ 
\\
0  & 0  &   & 6.14   & 6.18   & 6.21  & 6.24 & 6.24 & 6.24 & 6.24 \\
\\
0 & 0 & 0 & 0  & 0  & 0  & 6.30 & 0 & 0 & 0 \\
\\
0 & 0 & 0 & 0  & 0  & 0  & 0 & 6.30 & 0 & 0 \\
\\
0 & 0 & 0 &  0  & 0  & 0  & 0 & 0 & 6.30 & 0 \\
\\
0 & 0 & 0 &  0  & 0  & 0  & 0 & 0 & 0 & 6.30
\end{bmatrix}
$$

### 6.1 $\dot{x}_{0B,0}$, $\dot{y}_{0B,0}$, $\dot{\Psi}_{0B,0}$

(equation 6.4):

$$
\begin{split}
\frac{\partial \dot{x}_{0B,0}}{\partial \Psi_{0B,0}} &= -v^x_{0B,B} \cdot \sin(\Psi_{0B,0}) - v^y_{0B,B} \cdot \cos(\Psi_{0B,0})\\
\frac{\partial \dot{x}_{0B,0}}{\partial v^x_{0B,B}} &= \cos(\Psi_{0B,0})\\
\frac{\partial \dot{x}_{0B,0}}{\partial v^y_{0B,B}} &= -\sin(\Psi_{0B,0})\\
\\
\frac{\partial \dot{y}_{0B,0}}{\partial \Psi_{0B,0}} &= v^x_{0B,B} \cdot \cos(\Psi_{0B,0}) - v^y_{0B,B} \cdot \sin(\Psi_{0B,0})\\
\frac{\partial \dot{y}_{0B,0}}{\partial v^x_{0B,B}} &= \sin(\Psi_{0B,0})\\
\frac{\partial \dot{y}_{0B,0}}{\partial v^y_{0B,B}} &= \cos(\Psi_{0B,0})\\
\\
\frac{\partial \dot{\Psi}_{0B,0}}{\partial \omega^z_{0B,B}} &= 1
\end{split}
$$

### 6.2 $\dot{v}^x_{0B,B}$, $\dot{v}^y_{0B,b}$, $\dot{\omega}^z_{0B,B}$

#### 6.2.1 $\partial \dot{v}^x_{0B,B}$

##### ========= $\partial \dot{v}^x_{0B,B} / \partial v^x_{0B,B}$ =========

From equation 3.25,3.18,3.31
(equation 6.5):

$$
\begin{split}
\frac{\partial \dot{v}^x_{0B,B}}{\partial v^x_{0B,B}}  
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fx}}{\partial v^x_{0B,B}} - \frac{\partial F^x_{AirRes,B}}{\partial v^x_{0B,B}} \} \\
\\
\frac{\partial F^x_{AirRes,B}}{\partial v^x_{0B,B}} &= 2 \cdot C^x_w \cdot v^x_{0B,B}\\
\\
\frac{\partial F_{Fx}}{\partial v^x_{0B,B}} 
&= \sum_{ij=fl,fr,rl,rr} \frac{\partial F^x_{whij,B}}{\partial v^x_{0B,B}}\\
\frac{\partial F_{Fx}}{\partial v^x_{0B,B}} 
&= \sum_{ij=fl,fr,rl,rr} 
\{ \cos(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial v^x_{0B,B}} - 
\sin(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial v^x_{0B,B}}    \} \\
\\
\frac{\partial F^x_{whij,wh}}{\partial v^x_{0B,B}} &=
\frac{\partial F^x_{whij,wh}}{\partial v^L_{wh,ij}} \cdot    
\frac{\partial v^L_{wh,ij}}{\partial v^x_{0B,B}} + \frac{\partial F^x_{whij,wh}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^x_{0B,B}}\\
\\
\frac{\partial F^y_{whij,wh}}{\partial v^x_{0B,B}} &=
\frac{\partial F^y_{whij,wh}}{\partial v^L_{wh,ij}} \cdot 
\frac{\partial v^L_{wh,ij}}{\partial v^x_{0B,B}} + \frac{\partial F^y_{whij,wh}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^x_{0B,B}}
\end{split}
$$

$\frac{\partial v^L_{wh,ij}}{\partial v^x_{0B,B}}$ and $\frac{\partial v^S_{wh,ij}}{\partial v^x_{0B,B}}$ are described in 3.30

From equation 4.2
(equation 6.6):

$$
\begin{split}
\frac{\partial F^x_{whij,wh}}{\partial v^L_{wh,ij}} &= 
\frac{\partial F^L_{tyre,ij}}{\partial v^L_{wh,ij}} = 
\frac{\partial F^L_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^L_{wh,ij}} + \frac{\partial F^L_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^L_{wh,ij}} \\
\\
\frac{\partial F^y_{whij,wh}}{\partial v^L_{wh,ij}} &= 
\frac{\partial F^S_{tyre,ij}}{\partial v^L_{wh,ij}} = 
\frac{\partial F^S_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^L_{wh,ij}} + \frac{\partial F^S_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^L_{wh,ij}} \\
\\
\frac{\partial F^x_{whij,wh}}{\partial v^S_{wh,ij}} &= 
\frac{\partial F^L_{tyre,ij}}{\partial v^S_{wh,ij}} = 
\frac{\partial F^L_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^S_{wh,ij}} + \frac{\partial F^L_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^S_{wh,ij}} \\
\\
\frac{\partial F^y_{whij,wh}}{\partial v^S_{wh,ij}} &= 
\frac{\partial F^S_{tyre,ij}}{\partial v^S_{wh,ij}} = 
\frac{\partial F^S_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^S_{wh,ij}} + \frac{\partial F^S_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^S_{wh,ij}} \\
\end{split}
$$

The partial derivation of tyre force and slip are described in equation 4.15

##### ========= $\partial \dot{v}^x_{0B,B} / \partial v^y_{0B,B}$ =========

From equation 3.25, 3.18, 3.31
(equation 6.7):

$$
\begin{split}
\frac{\partial \dot{v}^x_{0B,B}}{\partial v^y_{0B,B}}  
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fx}}{\partial v^y_{0B,B}} - \frac{\partial F^x_{AirRes,B}}{\partial v^y_{0B,B}} +m\cdot\omega^z_{0B}\} \\
\\
\frac{\partial F^x_{AirRes,B}}{\partial v^y_{0B,B}} &= 0.\\
\\
\frac{\partial F_{Fx}}{\partial v^y_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial F^x_{whij,B}}{\partial v^y_{0B,B}}\\
\frac{\partial F_{Fx}}{\partial v^y_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} 
\{ \cos(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial v^y_{0B,B}} - 
\sin(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial v^y_{0B,B}}    \} \\
\\
\frac{\partial F^x_{whij,wh}}{\partial v^y_{0B,B}} &=
\frac{\partial F^x_{whij,wh}}{\partial v^L_{wh,ij}} \cdot    
\frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}} + \frac{\partial F^x_{whij,wh}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}\\
\\
\frac{\partial F^y_{whij,wh}}{\partial v^y_{0B,B}} &=
\frac{\partial F^y_{whij,wh}}{\partial v^L_{wh,ij}} \cdot 
\frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}} + \frac{\partial F^y_{whij,wh}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}
\end{split}
$$

$\frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}}$ and $\frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}$ are described in equation 3.30

Rest from equation 6.6

##### ========= $\partial \dot{v}^x_{0B,B} / \partial \omega^z_{0B,B}$ =========

From equation 3.25, 3.18, 3.31
(equation 6.8):

$$
\begin{split}
\frac{\partial \dot{v}^x_{0B,B}}{\partial \omega^z_{0B,B}}  
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fx}}{\partial \omega^z_{0B,B}} - \frac{\partial F^x_{AirRes,B}}{\partial \omega^z_{0B,B}} + m\cdot v^y_{0B}\} \\
\\
\frac{\partial F^x_{AirRes,B}}{\partial \omega^z_{0B,B}} &= 0.\\
\\
\frac{\partial F_{Fx}}{\partial \omega^z_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial F^x_{whij,B}}{\partial \omega^z_{0B,B}}\\
\\
\frac{\partial F_{Fx}}{\partial \omega^z_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} 
\{ \cos(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial \omega^z_{0B,B}} - 
\sin(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial \omega^z_{0B,B}}    \} \\
\\
\frac{\partial F^x_{whij,wh}}{\partial \omega^z_{0B,B}} &=
\frac{\partial F^x_{whij,wh}}{\partial v^L_{wh,ij}} \cdot    
\frac{\partial v^L_{wh,ij}}{\partial \omega^z_{0B,B}} + \frac{\partial F^x_{whij,wh}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial \omega^z_{0B,B}}\\
\\
\frac{\partial F^y_{whij,wh}}{\partial \omega^z_{0B,B}} &=
\frac{\partial F^y_{whij,wh}}{\partial v^L_{wh,ij}} \cdot 
\frac{\partial v^L_{wh,ij}}{\partial \omega^z_{0B,B}} + \frac{\partial F^y_{whij,wh}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial \omega^z_{0B,B}}
\end{split}
$$

$\frac{\partial v^L_{wh,ij}}{\partial \omega^z_{0B,B}}$ and
$\frac{\partial v^S_{wh,ij}}{\partial \omega^z_{0B,B}}$ are described in equation 3.30

##### ========= $\partial \dot{v}^x_{0B,B} / \partial \Omega^{wh}_{ij}$ =========

From equation 3.25, 3.18, 3.31
(equation 6.9):

$$
\begin{split}
\frac{\partial \dot{v}^x_{0B,B}}{\partial \Omega^{wh}_{ij}}  
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fx}}{\partial \Omega^{wh}_{ij}} - \frac{\partial F^x_{AirRes,B}}{\partial \Omega^{wh}_{ij}} + \frac{\partial (m\cdot  \omega^z_{0B,B}\cdot v^y_{0B})}{\partial \Omega^wh_{ij}} \} \\
\\
\frac{\partial F^x_{AirRes,B}}{\partial \Omega^{wh}_{ij}} &= 0\\
\\
\frac{\partial (m\cdot  \omega^z_{0B,B}\cdot v^y_{0B})}{\partial \Omega^{wh}_{ij}} &= 0 \\
\\
\frac{\partial F_{Fx}}{\partial \Omega^{wh}_{ij}} &= 
\sum_{kl=fl,fr,rl,rr} \frac{\partial F^x_{whkl,B}}{\partial \Omega^{wh}_{ij}}\\
\\
\frac{\partial F^x_{whkl,B}}{\partial \Omega^{wh}_{ij}} &= \begin{cases}
\frac{\partial F^x_{whij,B}}{\partial \Omega^{wh}_{ij}} & ij=kl\\
0                                                     & ij\neq kl
\end{cases}\\
\\
\frac{\partial F^x_{whij,B}}{\partial \Omega^{wh}_{ij}} &=  
\cos(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial \Omega^{wh}_{ij}} - 
\sin(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial \Omega^{wh}_{ij}} \\
\\
\frac{\partial F^x_{whij,wh}}{\partial \Omega^{wh}_{ij}} &=
\frac{\partial F^L_{tyre,ij}}{\partial s^L_{ij}} \cdot    
\frac{\partial s^L_{ij}}{\partial \Omega^{wh}_{ij}} + \frac{\partial F^L_{tyre,ij}}{\partial s^S_{ij}} \cdot \frac{\partial s^S_{ij}}{\partial \Omega^{wh}_{ij}}\\
\\
\frac{\partial F^y_{whij,wh}}{\partial \Omega^{wh}_{ij}} &=
\frac{\partial F^S_{tyre,ij}}{\partial s^L_{ij}} \cdot 
\frac{\partial s^L_{ij}}{\partial \Omega^wh_{ij}} + \frac{\partial F^S_{tyre,ij}}{\partial s^S_{ij}} \cdot \frac{\partial s^S_{ij}}{\partial \Omega^{wh}_{ij}}
\end{split}
$$

$\frac{\partial s^L_{ij}}{\partial \Omega^{wh}_{ij}}$ and $\frac{\partial s^S_{ij}}{\partial \Omega^{wh}_{ij}}$ are described in ...

$\frac{\partial F^L_{tyre,ij}}{\partial s^L_{ij}}$ , $\frac{\partial F^L_{tyre,ij}}{\partial s^S_{ij}}$,  $\frac{\partial F^S_{tyre,ij}}{\partial s^L_{ij}}$ and $\frac{\partial F^S_{tyre,ij}}{\partial s^S_{ij}}$ are described in ...

#### 6.2.2 $\partial \dot{v}^y_{0B,B}$

##### ========= $\partial \dot{v}^y_{0B,B} / \partial v^x_{0B,B}$ =========

(equation 6.10):

$$
\begin{split}
\frac{\partial \dot{v}^y_{0B,B}}{\partial v^x_{0B,B}}
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fy}}{\partial v^x_{0B,B}} - m\cdot\omega^z_{0B}\}\\
\\
\frac{\partial F_{Fy}}{\partial v^x_{0B,B}} 
&= \sum_{ij=fl,fr,rl,rr} \frac{\partial F^y_{whij,B}}{\partial v^x_{0B,B}}\\
\\
\frac{\partial F_{Fy}}{\partial v^x_{0B,B}} 
&= \sum_{ij=fl,fr,rl,rr} 
\{ \sin(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial v^x_{0B,B}} + 
\cos(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial v^x_{0B,B}}    \}
\end{split}
$$

$\frac{\partial F^x_{whij,wh}}{\partial v^x_{0B,B}}$ and
$\frac{\partial F^y_{whij,wh}}{\partial v^x_{0B,B}}$ are described in equation 6.5, 6.6

##### ========= $\partial \dot{v}^y_{0B,B} / \partial v^y_{0B,B}$ =========

(equation 6.11):

$$
\begin{split}
\frac{\partial \dot{v}^y_{0B,B}}{\partial v^y_{0B,B}}
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fy}}{\partial v^y_{0B,B}} \}\\
\\
\frac{\partial F_{Fy}}{\partial v^y_{0B,B}} 
&= \sum_{ij=fl,fr,rl,rr} \frac{\partial F^y_{whij,B}}{\partial v^y_{0B,B}}\\
\\
\frac{\partial F_{Fy}}{\partial v^y_{0B,B}} 
&= \sum_{ij=fl,fr,rl,rr} 
\{ \sin(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial v^y_{0B,B}} + 
\cos(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial v^y_{0B,B}}    \}
\end{split}
$$

$\frac{\partial F^x_{whij,wh}}{\partial v^y_{0B,B}}$ and
$\frac{\partial F^y_{whij,wh}}{\partial v^y_{0B,B}}$ are described in equation 6.5, 6.6

##### ========= $\partial \dot{v}^y_{0B,B} / \partial \omega^z_{0B,B}$ =========

From equation 3.25, 3.18
(equation 6.12):

$$
\begin{split}
\frac{\partial \dot{v}^y_{0B,B}}{\partial \omega^z_{0B,B}}  
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fy}}{\partial \omega^z_{0B,B}} - m\cdot v^x_{0B,B}\}\\
\\
\frac{\partial F_{Fy}}{\partial \omega^z_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial F^y_{whij,B}}{\partial \omega^z_{0B,B}}\\
\\
\frac{\partial F_{Fy}}{\partial \omega^z_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} 
\{ \sin(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial \omega^z_{0B,B}} + 
\cos(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial \omega^z_{0B,B}}    \} \\
\end{split}
$$

$\frac{\partial F^x_{whij,wh}}{\partial \omega^z_{0B,B}}$ and $\frac{\partial F^y_{whij,wh}}{\partial \omega^z_{0B,B}}$ are described
in equation 6.8

##### ========= $\partial \dot{v}^y_{0B,B} / \partial \Omega^{wh}_{ij}$ =========

From equation 3.25, 3.18, 3.31
(equation 6.13):

$$
\begin{split}
\frac{\partial \dot{v}^y_{0B,B}}{\partial \Omega^{wh}_{ij}}  
&=\frac{1}{m} \cdot \{\frac{\partial F_{Fy}}{\partial \Omega^{wh}_{ij}} - \frac{\partial (m\cdot  \omega^z_{0B,B}\cdot v^x_{0B})}{\partial \Omega^{wh}_{ij}} \} \\
\\
\frac{\partial (m\cdot  \omega^z_{0B,B}\cdot v^x_{0B})}{\partial \Omega^{wh}_{ij}} &= 0.\\
\\
\frac{\partial F_{Fy}}{\partial \Omega^wh_{ij}} &= 
\sum_{kl=fl,fr,rl,rr} \frac{\partial F^Y_{whkl,B}}{\partial \Omega^{wh}_{ij}}\\
\\
\frac{\partial F^y_{whkl,B}}{\partial \Omega^{wh}_{ij}} &= \begin{cases}
\frac{\partial F^y_{whij,B}}{\partial \Omega^{wh}_{ij}} & ij=kl\\
0                                                     & ij\neq kl
\end{cases}\\
\\
\frac{\partial F^y_{whij,B}}{\partial \Omega^{wh}_{ij}} &=  
\sin(\delta_i) \cdot \frac{\partial F^x_{whij,wh}}{\partial \Omega^{wh}_{ij}} + 
\cos(\delta_i) \cdot \frac{\partial F^y_{whij,wh}}{\partial \Omega^{wh}_{ij}} \\
\\
\frac{\partial F^x_{whij,wh}}{\partial \Omega^{wh}_{ij}} &=
\frac{\partial F^L_{tyre,ij}}{\partial s^L_{ij}} \cdot    
\frac{\partial s^L_{ij}}{\partial \Omega^{wh}_{ij}} + \frac{\partial F^L_{tyre,ij}}{\partial s^S_{ij}} \cdot \frac{\partial s^S_{ij}}{\partial \Omega^{wh}_{ij}}\\
\\
\frac{\partial F^y_{whij,wh}}{\partial \Omega^{wh}_{ij}} &=
\frac{\partial F^S_{tyre,ij}}{\partial s^L_{ij}} \cdot 
\frac{\partial s^L_{ij}}{\partial \Omega^wh_{ij}} + \frac{\partial F^S_{tyre,ij}}{\partial s^S_{ij}} \cdot \frac{\partial s^S_{ij}}{\partial \Omega^{wh}_{ij}}
\end{split}
$$

$\frac{\partial s^L_{ij}}{\partial \Omega^{wh}_{ij}}$ and $\frac{\partial s^S_{ij}}{\partial \Omega^{wh}_{ij}}$ are described in  ...

 $\frac{\partial F^L_{tyre,ij}}{\partial s^L_{ij}}$ , $\frac{\partial F^L_{tyre,ij}}{\partial s^S_{ij}}$, $\frac{\partial F^S_{tyre,ij}}{\partial s^L_{ij}}$ and $\frac{\partial F^S_{tyre,ij}}{\partial s^S_{ij}}$ are described in ...

#### 6.2.3 $\dot{\omega}^z_{0B,B}$

##### ========= $\partial \dot{\omega}^z_{0B,B} / \partial v^x_{0B,B}$ =========

(equation 6.14):

$$
\frac{\partial \dot{\omega}^z_{0B,B}}{\partial v^x_{0B,B}} =
\frac{1}{\Theta_z} \cdot \{\frac{\partial T_{Tz}}{\partial v^x_{0B,B}} + \frac{\partial T_{Fx}}{\partial v^x_{0B,B}} + \frac{\partial T_{Fy}}{\partial v^x_{0B,B}}\}
$$

From equation 3.21 

(equation 6.15):

$$
\begin{split}
\frac{\partial T_{Tz}}{\partial v^x_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial T^z_{whij,B}}{\partial v^x_{0B,B}}\\
\\
\frac{\partial T_{Fx}}{\partial v^x_{0B,B}} &= 
-\frac{\partial F^x_{whfl,B}}{\partial v^x_{0B,B}}\cdot b_{fl} 
+\frac{\partial F^x_{whfr,B}}{\partial v^x_{0B,B}}\cdot b_{fr}
-\frac{\partial F^x_{whrl,B}}{\partial v^x_{0B,B}}\cdot b_{rl}
+\frac{\partial F^x_{whrr,B}}{\partial v^x_{0B,B}}\cdot b_{rr}\\
\\
\frac{\partial T_{Fy}}{\partial v^x_{0B,B}} &= 
 \left( \frac{\partial F^y_{whfl,B}}{\partial v^x_{0B,B}} + \frac{\partial F^y_{whfr,B}}{\partial v^x_{0B,B}} \right) \cdot l_{f}
-\left( \frac{\partial F^y_{whrl,B}}{\partial v^x_{0B,B}} + \frac{\partial F^y_{whrr,B}}{\partial v^x_{0B,B}} \right) \cdot l_{r}\\
\end{split}
$$

$\frac{\partial F^x_{whij,B}}{\partial v^x_{0B,B}}$ and $\frac{\partial F^y_{whij,B}}{\partial v^x_{0B,B}}$ is known from above\

Fromequation 4.3 (equation 6.16):

$$
\begin{split}
\frac{\partial T^z_{whij,B}}{\partial v^x_{0B,B}} &= 
\frac{\partial T^A_{tyre,ij}}{\partial v^x_{0B,B}}+\frac{\partial T^T_{tyre,ij}}{\partial v^x_{0B,B}}\\
\\
\frac{\partial T^A_{tyre,ij}}{\partial v^x_{0B,B}} &=
\frac{\partial T^A_{tyre,ij}}{\partial v^L_{wh,ij}} \cdot \frac{\partial v^L_{wh,ij}}{\partial v^x_{0B,B}}

+ \frac{\partial T^A_{tyre,ij}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^x_{0B,B}}\\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial v^x_{0B,B}} &=
  \frac{\partial T^T_{tyre,ij}}{\partial v^L_{wh,ij}} \cdot \frac{\partial v^L_{wh,ij}}{\partial v^x_{0B,B}} + 
  \frac{\partial T^T_{tyre,ij}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^x_{0B,B}}\\
  \end{split}
$$

$\frac{\partial v^L_{wh,ij}}{\partial v^x_{0B,B}}$ and $\frac{\partial v^S_{wh,ij}}{\partial v^x_{0B,B}}$ are described in equation 3.30

From equation 4.2
(equation 6.17):

$$
\begin{split}
  \frac{\partial T^A_{tyre,ij}}{\partial v^L_{wh,ij}} &= 
  \frac{\partial T^A_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^L_{wh,ij}} 
+ \frac{\partial T^A_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^L_{wh,ij}} \\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial v^L_{wh,ij}} &= 
  \frac{\partial T^T_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^L_{wh,ij}} 
+ \frac{\partial T^T_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^L_{wh,ij}} \\
  \\
  \frac{\partial T^A_{tyre,ij}}{\partial v^S_{wh,ij}} &= 
  \frac{\partial T^A_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^S_{wh,ij}} 
+ \frac{\partial T^A_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^S_{wh,ij}} \\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial v^S_{wh,ij}} &= 
  \frac{\partial T^T_{tyre,ij}}{\partial s^L_{ij}}\cdot \frac{\partial s^L_{ij}}{\partial v^S_{wh,ij}} 
+ \frac{\partial T^T_{tyre,ij}}{\partial s^S_{ij}}\cdot \frac{\partial s^S_{ij}}{\partial v^S_{wh,ij}}
  \end{split}
$$

The partial derivation of tyre torques and slip are described in equation 4.24

##### ========= $\partial \dot{\omega}^z_{0B,B} / \partial v^y_{0B,B}$ =========

(equation 6.18):

$$
\frac{\partial \dot{\omega}^z_{0B,B}}{\partial v^y_{0B,B}} =
\frac{1}{\Theta_z} \cdot \{\frac{\partial T_{Tz}}{\partial v^y_{0B,B}} + \frac{\partial T_{Fx}}{\partial v^y_{0B,B}} + \frac{\partial T_{Fy}}{\partial v^y_{0B,B}}\}
$$

From equation 3.21 

(equation 6.19):

$$
\begin{split}
\frac{\partial T_{Tz}}{\partial v^y_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial T^z_{whij,B}}{\partial v^y_{0B,B}}\\
\\
\frac{\partial T_{Fx}}{\partial v^y_{0B,B}} &= 
-\frac{\partial F^x_{whfl,B}}{\partial v^y_{0B,B}}\cdot b_{fl} 
+\frac{\partial F^x_{whfr,B}}{\partial v^y_{0B,B}}\cdot b_{fr}
-\frac{\partial F^x_{whrl,B}}{\partial v^y_{0B,B}}\cdot b_{rl}
+\frac{\partial F^x_{whrr,B}}{\partial v^y_{0B,B}}\cdot b_{rr}\\
\\
\frac{\partial T_{Fy}}{\partial v^y_{0B,B}} &= 
\left( \frac{\partial F^y_{whfl,B}}{\partial v^y_{0B,B}} + \frac{\partial F^y_{whfr,B}}{\partial v^y_{0B,B}} \right) \cdot l_{f}
-\left( \frac{\partial F^y_{whrl,B}}{\partial v^y_{0B,B}} + \frac{\partial F^y_{whrr,B}}{\partial v^y_{0B,B}} \right) \cdot l_{r}\\
\end{split}
$$

$\frac{\partial F^x_{whij,B}}{\partial v^y_{0B,B}}$ and $\frac{\partial F^y_{whij,B}}{\partial v^y_{0B,B}}$ is known from above

From equation 4.3 (equation 6.20):

$$
\begin{split}
\frac{\partial T^z_{whij,B}}{\partial v^y_{0B,B}} &= 
\frac{\partial T^A_{tyre,ij}}{\partial v^y_{0B,B}}+\frac{\partial T^T_{tyre,ij}}{\partial v^y_{0B,B}}\\
\\
\frac{\partial T^A_{tyre,ij}}{\partial v^y_{0B,B}} &=
\frac{\partial T^A_{tyre,ij}}{\partial v^L_{wh,ij}} \cdot \frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}}

+ \frac{\partial T^A_{tyre,ij}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}\\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial v^y_{0B,B}} &=
  \frac{\partial T^T_{tyre,ij}}{\partial v^L_{wh,ij}} \cdot \frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}} + 
  \frac{\partial T^T_{tyre,ij}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}\\
  \end{split}
$$

  $\frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}}$ and   $\frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}$ are described in   equation 3.30

  Rest see 6.17

##### ========= $\partial \dot{\omega}^z_{0B,B} / \partial \omega^z_{0B,B}$ =========

(equation 6.21):

$$
\frac{\partial \dot{\omega}^z_{0B,B}}{\partial \omega^z_{0B,B}} =
\frac{1}{\Theta_z} \cdot \{\frac{\partial T_{Tz}}{\partial \omega^z_{0B,B}} + \frac{\partial T_{Fx}}{\partial \omega^z_{0B,B}} + \frac{\partial T_{Fy}}{\partial \omega^z_{0B,B}}\}
$$

(equation 6.22):

$$
\begin{split}
\frac{\partial T_{Tz}}{\partial \omega^z_{0B,B}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial T^z_{whij,B}}{\partial \omega^z_{0B,B}}\\
\\
\frac{\partial T_{Fx}}{\partial \omega^z_{0B,B}} &= 
-\frac{\partial F^x_{whfl,B}}{\partial \omega^z_{0B,B}}\cdot b_{fl} 
+\frac{\partial F^x_{whfr,B}}{\partial \omega^z_{0B,B}}\cdot b_{fr}
-\frac{\partial F^x_{whrl,B}}{\partial \omega^z_{0B,B}}\cdot b_{rl}
+\frac{\partial F^x_{whrr,B}}{\partial \omega^z_{0B,B}}\cdot b_{rr}\\
\\
\frac{\partial T_{Fy}}{\partial\omega^z_{0B,B}} &= 
\left( \frac{\partial F^y_{whfl,B}}{\partial \omega^z_{0B,B}} + \frac{\partial F^y_{whfr,B}}{\partial \omega^z_{0B,B}} \right) \cdot l_{f}
-\left( \frac{\partial F^y_{whrl,B}}{\partial \omega^z_{0B,B}} + \frac{\partial F^y_{whrr,B}}{\partial \omega^z_{0B,B}} \right) \cdot l_{r}\\
\end{split}
$$

$\frac{\partial F^x_{whij,B}}{\partial \omega^z_{0B,B}}$ is described in equation 6.8 and $\frac{\partial F^y_{whij,B}}{\partial \omega^z_{0B,B}}$ is described in equation 6.12

From 4.3 (equation 6.23):

$$
\begin{split}
\frac{\partial T^z_{whij,B}}{\partial \omega^z_{0B,B}} &= 
\frac{\partial T^A_{tyre,ij}}{\partial \omega^z_{0B,B}}+\frac{\partial T^T_{tyre,ij}}{\partial \omega^z_{0B,B}}\\
\\
\frac{\partial T^A_{tyre,ij}}{\partial \omega^z_{0B,B}} &=
\frac{\partial T^A_{tyre,ij}}{\partial v^L_{wh,ij}} \cdot \frac{\partial v^L_{wh,ij}}{\partial \omega^z_{0B,B}}

+ \frac{\partial T^A_{tyre,ij}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial \omega^z_{0B,B}}\\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial \omega^z_{0B,B}} &=
  \frac{\partial T^T_{tyre,ij}}{\partial v^L_{wh,ij}} \cdot \frac{\partial v^L_{wh,ij}}{\partial \omega^z_{0B,B}} + 
  \frac{\partial T^T_{tyre,ij}}{\partial v^S_{wh,ij}} \cdot \frac{\partial v^S_{wh,ij}}{\partial \omega^z_{0B,B}}
\end{split}  
$$

$\frac{\partial T^A_{tyre,ij}}{\partial v^L_{wh,ij}}$, $\frac{\partial T^T_{tyre,ij}}{\partial v^L_{wh,ij}}$,$\frac{\partial T^A_{tyre,ij}}{\partial v^S_{wh,ij}}$ and $\frac{\partial T^T_{tyre,ij}}{\partial v^S_{wh,ij}}$ see equation 6.17 $\frac{\partial v^L_{wh,ij}}{\partial v^y_{0B,B}}$ and $\frac{\partial v^S_{wh,ij}}{\partial v^y_{0B,B}}$ are described in eqaution 3.30

##### ========= $\partial \dot{\omega}^z_{0B,B} / \partial \Omega^{wh}_{ij}$ =========

From equation equation 3.25 and 3.28
(equation 6.24):

$$
\frac{\partial \dot{\omega}^z_{0B,B}}{\partial \Omega^{wh}_{ij}} =
\frac{1}{\Theta_z} \cdot \{\frac{\partial T_{Tz}}{\partial \Omega^{wh}_{ij}} + \frac{\partial T_{Fx}}{\partial \Omega^{wh}_{ij}} + \frac{\partial T_{Fy}}{\partial \Omega^{wh}_{ij}}\}
$$

From equation 3.21 (equation 6.25):

$$
\begin{split}
\frac{\partial T_{Tz}}{\partial \Omega^{wh}_{ij}} &= 
\sum_{ij=fl,fr,rl,rr} \frac{\partial T^z_{whij,B}}{\partial \Omega^{wh}_{ij}}\\
\\
\frac{\partial T_{Fx}}{\partial \Omega^{wh}_{ij}} &= 
-\frac{\partial F^x_{whfl,B}}{\partial \Omega^{wh}_{ij}}\cdot b_{fl} 
+\frac{\partial F^x_{whfr,B}}{\partial \Omega^{wh}_{ij}}\cdot b_{fr}
-\frac{\partial F^x_{whrl,B}}{\partial \Omega^{wh}_{ij}}\cdot b_{rl}
+\frac{\partial F^x_{whrr,B}}{\partial \Omega^{wh}_{ij}}\cdot b_{rr}\\
\\
\frac{\partial T_{Fy}}{\partial \Omega^{wh}_{ij}} &= 
\left( \frac{\partial F^y_{whfl,B}}{\partial \Omega^{wh}_{ij}} + \frac{\partial F^y_{whfr,B}}{\partial \Omega^{wh}_{ij}} \right) \cdot l_{f}
-\left( \frac{\partial F^y_{whrl,B}}{\partial \Omega^{wh}_{ij}} + \frac{\partial F^y_{whrr,B}}{\partial \Omega^{wh}_{ij}} \right) \cdot l_{r}\\
\end{split}
$$

For the first part $\frac{\partial T_{Tz}}{\partial \Omega^{wh}_{ij}}$ we get from equation 4.3
(equation 6.26):

$$
\begin{split}
\frac{\partial T^z_{whij,B}}{\partial \Omega^{wh}_{ij}} &= 
\frac{\partial T^A_{tyre,ij}}{\partial \Omega^{wh}_{ij}}+\frac{\partial T^T_{tyre,ij}}{\partial \Omega^{wh}_{ij}}\\
\\
\frac{\partial T^A_{tyre,ij}}{\partial \Omega^{wh}_{ij}} &=
\frac{\partial T^A_{tyre,ij}}{\partial s^L_{wh,ij}} \cdot \frac{\partial s^L_{wh,ij}}{\partial \Omega^{wh}_{ij}}

+ \frac{\partial T^A_{tyre,ij}}{\partial s^S_{wh,ij}} \cdot \frac{\partial s^S_{wh,ij}}{\partial \Omega^{wh}_{ij}}
+ \frac{\partial T^A_{tyre,ij}}{\partial s^T_{wh,ij}} \cdot \frac{\partial s^T_{wh,ij}}{\partial \Omega^{wh}_{ij}}\\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial \Omega^{wh}_{ij}} &=
  \frac{\partial T^T_{tyre,ij}}{\partial s^L_{wh,ij}} \cdot \frac{\partial s^L_{wh,ij}}{\partial \Omega^{wh}_{ij}} + 
  \frac{\partial T^T_{tyre,ij}}{\partial s^S_{wh,ij}} \cdot \frac{\partial s^S_{wh,ij}}{\partial \Omega^{wh}_{ij}}
  +\frac{\partial T^T_{tyre,ij}}{\partial s^T_{wh,ij}} \cdot \frac{\partial s^T_{wh,ij}}{\partial \Omega^{wh}_{ij}}\\
  \end{split}
$$

With equation 4.24 and  4.26 the derivation of tyre torques about slip is
defined. But $\frac{\partial T^T_{tyre,ij}}{\partial s^L_{wh,ij}}=\frac{\partial T^T_{tyre,ij}}{\partial s^S_{wh,ij}}=0$ and $\frac{\partial T^A_{tyre,ij}}{\partial s^T_{wh,ij}}=0$ could be negelected. The derivation of slip about $\Omega$ are described in equation 4.6, 4.7 and 4.27
(equation 6.27):

$$
\begin{split}
  \frac{\partial T^A_{tyre,ij}}{\partial \Omega^{wh}_{ij}} &=
  \frac{\partial T^A_{tyre,ij}}{\partial s^L_{wh,ij}} \cdot \frac{\partial s^L_{wh,ij}}{\partial \Omega^{wh}_{ij}}
+ \frac{\partial T^A_{tyre,ij}}{\partial s^S_{wh,ij}} \cdot \frac{\partial s^S_{wh,ij}}{\partial \Omega^{wh}_{ij}}\\
  \\
  \frac{\partial T^T_{tyre,ij}}{\partial \Omega^{wh}_{ij}} &=
  \frac{\partial T^T_{tyre,ij}}{\partial s^T_{wh,ij}} \cdot \frac{\partial s^T_{wh,ij}}{\partial \Omega^{wh}_{ij}}\\
  \end{split}
$$

For the second part $\frac{\partial T_{Fx}}{\partial \Omega^{wh}_{ij}}$ we assume that forces from one wheel $ij$ is only influenced by $\Omega_{ij}$, its own wheel.\
(equation 6.28):

$$
\begin{split}
  \frac{\partial T_{Fx}}{\partial \Omega^{wh}_{fl}} &= 
  -\frac{\partial F^x_{whfl,B}}{\partial \Omega^{wh}_{fl}}\cdot b_{fl} \\
  \\
  \frac{\partial T_{Fx}}{\partial \Omega^{wh}_{fr}} &= 
  +\frac{\partial F^x_{whfr,B}}{\partial \Omega^{wh}_{fr}}\cdot b_{fr}\\
  \\
  \frac{\partial T_{Fx}}{\partial \Omega^{wh}_{rl}} &= 
  -\frac{\partial F^x_{whrl,B}}{\partial \Omega^{wh}_{rl}}\cdot b_{rl}\\
  \\
  \frac{\partial T_{Fx}}{\partial \Omega^{wh}_{rr}} &= 
  +\frac{\partial F^x_{whrr,B}}{\partial \Omega^{wh}_{rr}}\cdot b_{rr}
  \end{split}
$$

$\frac{\partial F^x_{whij,B}}{\partial \Omega^{wh}_{ij}}$ and $\frac{\partial F^x_{whij,B}}{\partial \Omega^{wh}_{ij}}$ are described in equation 6.9 and 6.13 For the third part $\frac{\partial T_{Fy}}{\partial \Omega^{wh}_{ij}}$ we get 

(equation 6.29):

$$
\begin{split}
  \frac{\partial T_{Fy}}{\partial \Omega^{wh}_{fl}} &= 
  \frac{\partial F^y_{whfl,B}}{\partial \Omega^{wh}_{fl}}  \cdot l_{f}\\
  \\
  \frac{\partial T_{Fy}}{\partial \Omega^{wh}_{fr}} &= 
  \frac{\partial F^y_{whfr,B}}{\partial \Omega^{wh}_{fr}} \cdot l_{f}\\
  \\
  \frac{\partial T_{Fy}}{\partial \Omega^{wh}_{rl}} &= 
  -\frac{\partial F^y_{whrl,B}}{\partial \Omega^{wh}_{rl}} \cdot l_{r}\\
  \\
  \frac{\partial T_{Fy}}{\partial \Omega^{wh}_{rr}} &= 
  -\frac{\partial F^y_{whrr,B}}{\partial \Omega^{wh}_{ij}} \cdot l_{r}\\
  \end{split}
$$

$\frac{\partial F^y_{whij,B}}{\partial \Omega^{wh}_{ij}}$ and $\frac{\partial F^y_{whij,B}}{\partial \Omega^{wh}_{ij}}$ are also described in equation 6.9 and 6.13

### 6.3  $\dot{\Omega}^{wh}_{ij} $, $ij=fl,fr,rl,rr$

From equation 4.1 we get
(equation 6.30):

$$
\frac{\partial \dot{\Omega}_{ij}^{wh}}{\partial \Omega_{ij}^{wh}} = \frac{1}{\Theta_{ij}^{wh}} \cdot ( \frac{\partial T^{trans}_{ij}}{\partial \Omega_{ij}^{wh}} + \frac{\partial T^y_{wh,ij}}{\partial \Omega_{ij}^{wh}} - \frac{\partial T^{brake}_{ij}}{\partial \Omega_{ij}^{wh}}  )
$$

$\frac{\partial T^{trans}_{ij}}{\partial \Omega_{ij}^{wh}}$ is described in equation 4.34.

For the tyre torque around the axle we get from
equation 4.3 we get (equation 6.31):

$$
\frac{\partial T^y_{wh,ij}}{\partial \Omega_{ij}^{wh}}=
\frac{\partial T^R_{tyre,ij}}{\partial \Omega_{ij}^{wh}} 
- R^{dyn}_{ij}\cdot \frac{\partial F^L_{tyre,ij}}{\partial \Omega_{ij}^{wh}}
$$

$\frac{\partial T^R_{tyre,ij}}{\partial \Omega_{ij}^{wh}}$ is described in equation 4.28, $\frac{\partial F^L_{tyre,ij}}{\partial \Omega_{ij}^{wh}}$ in equation 6.13 $\frac{\partial T^{brake}_{ij}}{\partial \Omega_{ij}^{wh}}$ is described in equation 4.45
