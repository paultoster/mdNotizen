Spurwechsel mit linearer Gleichung

$$
\begin{aligned}
y &= y0 + a \cdot (x - x0)
\\
a &= \frac{(y1-y0)}{(x1-x0)}
\end{aligned}
$$

Spurwechsel Polynom 3. Grad (poly3grd)

$$
\begin{aligned}
y &= y_0 + (y_1-y_0) \cdot \left( \frac{(x-x_0)}{(x1-x_0)}\right)^2  \cdot \left(3 
- 2\cdot\frac{(x-x_0)}{(x_1-x_0)}\right)
\\
y &= y_0+(y_1-y_0) * \left(3\cdot \left( \frac{(x-x_0)}{(x_1-x_0)}\right)^2 
- 2\cdot \left( \frac{(x-x_0)}{(x_1-x_0)}\right)^3\right)
\\
y &= y_0+\left(
\left[ 3\cdot  \frac{(y_1-y_0)}{(x_1-x_0)^2}\right] \cdot (x-x_0)^2
-\left[ 2\cdot  \frac{(y_1-y_0)}{(x_1-x_0)^3}\right] \cdot (x-x_0)^3
\right)
\end{aligned}
$$



$$
\begin{aligned}
y &= y_0 + b \cdot (x-x_0)^2 - c \cdot (x-x_0)^3
\\
\\
b &= \left[ 3\cdot  \frac{(y_1-y_0)}{(x_1-x_0)^2}\right]
\\
c &= \left[ 2\cdot  \frac{(y_1-y_0)}{(x_1-x_0)^3}\right]
\end{aligned}
$$



Sigmodial





$$
y = y_0 + \frac{(y_1-y_0)}{1+e^{-a\cdot[(x-x_0)-\frac{(x1-x0)}{2}]}}
$$

$$
%         (y1-y0)
% y = -----------------------
%                         (x1-x0)
%     1+exp[-a*( (x-x0) - ------- )]

$$



![](C:\Users\tftbe1\AppData\Roaming\marktext\images\2022-01-26-15-53-55-image.png)
