# State Estimator with EKF with measured position and heading

## 1. model:

$$
\begin{aligned}
\dot x &= v \cdot cos(\Psi)\\
\dot y &= v \cdot sin(\Psi)\\
\dot \Psi &= v \cdot \frac{tan(\delta)}{l}
\end{aligned}

$$

$v:$ velocity

$\delta:$ steer angle at wheel

$l:$ wheel base.

## 2. discrete model:

$$
\begin{aligned}
x_{k+1}&=x_k+ T\cdot v_k \cdot \cos(\Psi_k) + w_{x,k}\\
y_{k+1}&=y_k+ T\cdot v_k \cdot \sin(\Psi_k) + w_{y,k}\\
\Psi_{k+1}&=\Psi_k+ T\cdot v_k\cdot \frac{\tan(\delta_k)}{l}
\end{aligned}
$$

$T:$ Looptime

$\begin{bmatrix}x &y & \Psi\end{bmatrix}^T:$ state position and heading

$\begin{bmatrix}\delta & v\end{bmatrix}^T:$ input steerangle and velocity

## 3. linearizing discrete model:

$$
\begin{bmatrix}x_{k+1}-x_k\\y_{k+1}-y_k\\ \Psi_{k+1}-\Psi_k\end{bmatrix} = 
\begin{bmatrix}
1 & 0 & -T \cdot v_k \cdot \sin(\Psi_k)\\
0 & 1 & -T \cdot v_k \cdot \cos(\Psi_k)\\
0 & 0 & 1
\end{bmatrix} \cdot

\begin{bmatrix}
\Delta x_k\\
\Delta y_k\\
\Delta \Psi_k
\end{bmatrix} \cdot +

\begin{bmatrix}
0 & T \cdot \cos(\Psi_k)\\
0 & T \cdot \sin(\Psi_k)\\
\frac{T \cdot v_k}{l\cdot \cos^2(\delta_k)} & \frac{T\cdot \tan(\delta_k)}{l}
\end{bmatrix} \cdot

\begin{bmatrix}
\Delta \delta_k\\
\Delta v_k
\end{bmatrix}

$$

$$
\begin{bmatrix}x_{k+1}-x_k\\y_{k+1}-y_k\\ \Psi_{k+1}-\Psi_k\end{bmatrix} = 
A_k \cdot

\begin{bmatrix}
\Delta x_k\\
\Delta y_k\\
\Delta \Psi_k
\end{bmatrix} \cdot +

B_k \cdot

\begin{bmatrix}
\Delta \delta_k\\
\Delta v_k
\end{bmatrix}
$$

## 4. estimated standard deviation of model:

$$
\begin{aligned}
w_{x,k}&= \Delta x_{std} - T \cdot  v_k \sin(\Psi_k)\cdot \Delta\Psi_{std}
+T \cdot \cos(\Psi_k)\cdot\Delta v_{std}\\
w_{y,k}&= \Delta y_{std} + T \cdot  v_k \cos(\Psi_k)\cdot \Delta\Psi_{std}
+T \cdot \sin(\Psi_k)\cdot\Delta v_{std}\\
w_{\Psi_k}&= \Delta \Psi_{std} + \frac{T \cdot v_k}{l\cdot \cos^2(\delta_k)}
\cdot \Delta \delta_{std} + \frac{T\cdot \tan(\delta_k)}{l}\cdot \Delta v_{std}
\end{aligned}
$$

## 5. varianz matrix model:

$$
Q_k = \begin{bmatrix}
w_{x,k}\cdot  w_{x,k} & 0 & 0\\
0 & w_{y,k}\cdot  w_{y,k}  & 0\\
0 & 0 & w_{\Psi,k}\cdot  w_{\Psi,k}
\end{bmatrix}
$$

## 6. prediction step with model:

$$
\begin{aligned}
\begin{bmatrix}
\bar x_{k+1} \\ \bar y_{k+1} \\ \bar \Psi_{k+1}
\end{bmatrix}
&= f\Bigg(
\begin{bmatrix}
x_{k} \\ y_{k} \\ \Psi_{k}
\end{bmatrix},
\begin{bmatrix}
\delta_{k} \\ v_{k} 
\end{bmatrix},
T
\Bigg)\\
\\
\bar P_{k+1} &= A_k \cdot P_k \cdot A^T_k + Q_k
\end{aligned}
$$

## 7. update measurement:

$$
\begin{aligned}
z_{k+1} &=
\begin{bmatrix}
x_{k+1,mess}\\y_{k+1,mess}\\ \Psi_{k+1,mess}
\end{bmatrix} 
H_k =
\begin{bmatrix}
1&0&0\\0&1&0\\ 0&0&1
\end{bmatrix}\\ 
z_{k+1} &= H_k \cdot 
\begin{bmatrix}
x_{k+1}\\y_{k+1}\\ \Psi_{k+1}
\end{bmatrix} 
\end{aligned}
$$

## 8. correction step with measurement:

$$
\begin{aligned}
S_{k+1}&=H_k\cdot \bar P_{k+1} \cdot H^T_k + R_k\\
R_k &= \begin{bmatrix}
\Delta x^2_{std,mess}&0&0\\
0&\Delta y^2_{std,mess}&0\\
0&0&\Delta \Psi^2_{std,mess}
\end{bmatrix}
\end{aligned}
$$

#### Kalman Gain:

$$
K_{k+1}=\bar P_{k+1}\cdot H^T_k\cdot S^{-1}_{k+1}
$$

#### correction with measurement and update probability:

$$
\begin{aligned}
\begin{bmatrix}
x_{k+1} \\ y_{k+1} \\ \Psi_{k+1}
\end{bmatrix}
&= \begin{bmatrix}
\bar x_{k+1} \\ \bar y_{k+1} \\ \bar \Psi_{k+1}
\end{bmatrix}+
K_{k+1}\cdot \left( z_{k+1}-H_k\cdot\begin{bmatrix}
\bar x_{k+1} \\ \bar y_{k+1} \\ \bar \Psi_{k+1}
\end{bmatrix}\right)
\\
\\
P_{k+1} &= \bar P_{k+1} - K_{k+1} \cdot S_{k+1} \cdot K^T_{k+1}
\end{aligned}
$$

## 9. Parameter for standard deviation used

| parameter name | unit | value |
| -------------- | ---- | ----- |
|                |      |       |
