# Etimation Side Slip Angle (ESSA) lineraized model

(estimation side slip angle)

## Linearised Matrix $A_k, B_k, H_k$

### Matrix $A_k$

Build $A_{k,[i,j]} = \frac {\partial f_{[i]} (\hat x_{k-1},u_{k-1},())}{\partial x_{[j]}}$ with $x=\begin{bmatrix} v & \beta & \dot \Psi\end{bmatrix}^T$:

$$
\begin{aligned}

A_{k} &= T_0 \cdot
\begin{bmatrix} 
\frac {\partial f_{1,k} }{\partial v_{k}} & 
\frac {\partial f_{1,k} }{\partial \beta_{k}} & 
\frac {\partial f_{1,k} }{\partial \dot\Psi_{k}}
\\
\\
\frac {\partial f_{2,k} }{\partial v_{k}} & 
\frac {\partial f_{2,k} }{\partial \beta_{k}} & 
\frac {\partial f_{2,k} }{\partial \dot\Psi_{k}}
\\
\\
\frac {\partial f_{3,k} }{\partial v_{k}} & 
\frac {\partial f_{3,k} }{\partial \beta_{k}} & 
\frac {\partial f_{3,k} }{\partial \dot\Psi_{k}}
\end{bmatrix}
\end{aligned}
$$

With the derivation $\partial v_k$

$$
\begin{aligned}
\frac {\partial f_{1,k} }{\partial v_{k}} &= {1\over m}\cdot
\left( \cos \beta_k \cdot \frac {\partial \sum F_{X,k} }{\partial v_{k}}
+ \sin \beta_k \cdot \frac {\partial \sum F_{Y,k} }{\partial v_{k}}
\right) 
\\
\\
\frac {\partial f_{2,k} }{\partial v_{k}} &= 
{1\over { m\cdot v_k}}\cdot
\left( \left[ \cos \beta_k \cdot \frac {\partial \sum F_{Y,k} }{\partial v_{k}}
- \sin \beta_k \cdot \frac {\partial \sum F_{X,k} }{\partial v_{k}}\right]
\right)
\\&-{1\over { m\cdot v_k^2}}\cdot
\left( \left[ \cos \beta_k \cdot \sum F_{Y,k}
- \sin \beta_k \cdot \sum F_{X,k}\right]
\right)\\
\\
\frac {\partial f_{3,k} }{\partial v_{k}} &= 
\frac{l_V-\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VL}} }
                                         {\partial v_{k}} 
+
\frac{l_V+\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VR}} }
                                         {\partial v_{k}} 
+
\frac{-l_H-\frac{b_H}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{HL}} }
                                          {\partial v_{k}} 
\\&+
\frac{-l_H+\frac{b_H}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{HR}} }
                                          {\partial v_{k}} 
\\
\\
\\
\\
\end{aligned}
$$

derivation $\partial \beta_k$

$$
\begin{aligned}
\frac {\partial f_{1,k} }{\partial \beta_{k}} &= 
{1\over m}\cdot
\left( -\sin \beta_k \cdot \sum F_{X,k}
+ \cos \beta_k \cdot \sum F_{Y,k}
\right) 
\\&+{1\over m}\cdot
\left( \cos \beta_k \cdot \frac {\partial \sum F_{X,k} }{\partial \beta_{k}}
+ \sin \beta_k \cdot \frac {\partial \sum F_{Y,k} }{\partial v_{k}}
\right)
\\
\\
\frac {\partial f_{2,k} }{\partial \beta_{k}} &= 
{1\over{m\cdot v_k}}\cdot
\left( -\sin\beta_k \cdot \sum F_{Y,k}
- \cos \beta_k \cdot \sum F_{X,k}
\right) 
\\&+{1\over {m\cdot v_k}}\cdot
\left( \cos\beta_k \cdot \frac {\partial \sum F_{Y,k} }{\partial \beta_{k}}
- \sin\beta_k \cdot \frac {\partial \sum F_{X,k} }{\partial \beta_{k}}
\right)
\\
\\
\frac {\partial f_{3,k} }{\partial \beta_{k}} &= 
\frac{l_V-\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VL}} }
                                         {\partial \beta_{k}} 
+
\frac{l_V+\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VR}} }
                                         {\partial \beta_{k}} 
+
\frac{-l_H-\frac{b_H}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{HL}} }
                                          {\partial \beta_{k}} 
\\&+
\frac{-l_H+\frac{b_H}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{HR}} }
                                          {\partial \beta_{k}} 
\end{aligned}

$$

derivation $\partial \dot \Psi_k$

$$
\begin{aligned}
\frac {\partial f_{1,k} }{\partial \dot\Psi_{k}} &= {1\over m}\cdot
\left( \cos \beta_k \cdot \frac {\partial \sum F_{X,k} }{\partial \dot\Psi_{k}}
+ \sin \beta_k \cdot \frac {\partial \sum F_{Y,k} }{\partial \dot\Psi_{k}}
\right) 
\\
\\
\frac {\partial f_{2,k} }{\partial \dot \Psi_{k}} &= 
{1\over{m\cdot v_k}}\cdot
\left( \cos\beta_k \cdot \frac {\partial \sum F_{Y,k} }{\partial \dot\Psi_{k}}
- \sin \beta_k \cdot \frac {\partial \sum F_{X,k} }{\partial \dot\Psi_{k}}
\right) - 1
\\
\\
\frac {\partial f_{3,k} }{\partial \dot\Psi_{k}} &= 
\frac{l_V-\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VL}} }
                                         {\partial \dot\Psi_{k}} 
+
\frac{l_V+\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VR}} }
                                         {\partial \dot\Psi_{k}} 
+
\frac{-l_H-\frac{b_H}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{HL}} }
                                          {\partial \dot\Psi_{k}} 
\\&+
\frac{-l_H+\frac{b_H}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{HR}} }
                                          {\partial \dot\Psi_{k}} 
\end{aligned}



$$

with sum expantion

$$
\begin{aligned}
\frac {\partial \sum F_{X,k} }{\partial x_{i,k}} &=
\frac {\partial F_{X,V_{VL},k} }{\partial x_{i,k}}+
\frac {\partial F_{X,V_{VR},k} }{\partial x_{i,k}}+
\frac {\partial F_{X,V_{HL},k} }{\partial x_{i,k}}+
\frac {\partial F_{X,V_{HR},k} }{\partial x_{i,k}}+
\frac {\partial F_{Wx,k} }{\partial x_{i,k}}\\
\\
\\
\frac {\partial \sum F_{Y,k} }{\partial x_{i,k}} &=
\frac {\partial F_{Y,V_{VL},k} }{\partial x_{i,k}}+
\frac {\partial F_{Y,V_{VR},k} }{\partial x_{i,k}}+
\frac {\partial F_{Y,V_{HL},k} }{\partial x_{i,k}}+
\frac {\partial F_{Y,V_{HR},k} }{\partial x_{i,k}}
\end{aligned}
$$

The derivation of forces:

derivation $\partial x_i = [\partial v,\partial \beta, \partial \dot\Psi]$:

$$
\begin{aligned}
\frac {\partial F_{X,V_{VL}} }{\partial x_{i}} &= 
-\sin \delta_H  \cdot\frac {\partial F_{Y,W_{VL}}}{\partial x_{i}} 
\\
\\
\frac {\partial F_{X,V_{VR}} }{\partial x_{i}} &= 
-\sin \delta_H \cdot \frac {\partial F_{Y,W_{VR}}}{\partial x_{i}} 
\\
\\
\frac {\partial F_{X,V_{HL}} }{\partial x_{i}} &= 
\frac {\partial F_{X,W_{HL}} }{\partial x_{i}} =0
\\
\\
\frac {\partial F_{X,V_{HR}} }{\partial x_{i}} &= 
\frac {\partial F_{X,W_{HR}} }{\partial x_{i}} =0
\\
\\
\frac {\partial F_{Wx,k} }{\partial v} &= 2\cdot c^*_W \cdot v\,\,\,\, 
\frac {\partial F_{Wx,k} }{\partial \beta} = 
\frac {\partial F_{Wx,k} }{\partial \dot\Psi} = 0
\\
\\
\frac {\partial F_{Y,V_{VL}} }{\partial x_{i}} &= 
\cos \delta_H \cdot \frac {\partial F_{Y,W_{VL}}}{\partial x_{i}} 
\\
\\
\frac {\partial F_{Y,V_{VR}} }{\partial x_{i}} &= 
\cos \delta_H \cdot \frac {\partial F_{Y,W_{VR}}}{\partial x_{i}}
\\
\\
\frac {\partial F_{Y,V_{HL}} }{\partial x_{i}} &= 
\frac {\partial F_{Y,W_{HL}}}{\partial x_{i}} 
\\
\\
\frac {\partial F_{Y,V_{HR}} }{\partial x_{i}} &= 
\frac {\partial F_{Y,W_{HR}}}{\partial x_{i}}
\end{aligned}
$$

derivation side forces $\partial v$

$$
\begin{aligned}
&\frac {\partial F_{Y,W_{VL}}}{\partial v} \\
&=\frac
{ - \hat k_{alhpa,VL} \cdot
    \left[ 
         \sin \beta \cdot \left( \cos \beta \cdot v
                               - \frac{b_V \cdot \dot\Psi}{2} \right)
        -\cos \beta \cdot \left( \sin \beta \cdot v
                               + l_V \cdot \dot\Psi \right)
    \right]
}
{ \left( \cos \beta \cdot v
                               - \frac{b_V \cdot \dot\Psi}{2} \right)^2
  + \left( \sin \beta \cdot v
                               + l_V \cdot \dot\Psi \right)^2
}
\\
\\
&\frac {\partial F_{Y,W_{VR}}}{\partial v}  \\
&=\frac
{ - \hat k_{alhpa,VR} \cdot
    \left[ 
         \sin \beta \cdot \left( \cos \beta \cdot v
                               + \frac{b_V \cdot \dot\Psi}{2} \right)
        -\cos \beta \cdot \left( \sin \beta \cdot v
                               + l_V \cdot \dot\Psi \right)
    \right]
}
{ \left( \cos \beta \cdot v
                               + \frac{b_V \cdot \dot\Psi}{2} \right)^2
  + \left( \sin \beta \cdot v
                               + l_V \cdot \dot\Psi \right)^2
}
\\
\\
&\frac {\partial F_{Y,W_{HL}}}{\partial v} \\
&=\frac
{ - \hat k_{alhpa,HL} \cdot
    \left[ 
         \sin \beta \cdot \left( \cos \beta \cdot v
                               - \frac{b_H \cdot \dot\Psi}{2} \right)
        -\cos \beta \cdot \left( \sin \beta \cdot v
                               - l_H \cdot \dot\Psi \right)
    \right]
}
{ \left( \cos \beta \cdot v
                               - \frac{b_H \cdot \dot\Psi}{2} \right)^2
  + \left( \sin \beta \cdot v
                               - l_H \cdot \dot\Psi \right)^2
}
\\
\\
&\frac {\partial F_{Y,W_{HR}}}{\partial v} \\
&=\frac
{ - \hat k_{alhpa,HR} \cdot
    \left[ 
         \sin \beta \cdot \left( \cos \beta \cdot v
                               + \frac{b_H \cdot \dot\Psi}{2} \right)
        -\cos \beta \cdot \left( \sin \beta \cdot v
                               - l_H \cdot \dot\Psi \right)
    \right]
}
{ \left( \cos \beta \cdot v
                               + \frac{b_H \cdot \dot\Psi}{2} \right)^2
  + \left( \sin \beta \cdot v
                               - l_H \cdot \dot\Psi \right)^2
}
\end{aligned}
$$

derivation side forces $\partial \beta$

$$
\begin{aligned}
&\frac {\partial F_{Y,W_{VL}}}{\partial \beta} \\
&=\frac
{ - \hat k_{alhpa,VL} \cdot
    \left[ 
         \cos \beta \cdot v \cdot \left( \cos \beta \cdot v
                               - \frac{b_V \cdot \dot\Psi}{2} \right)
        +\sin \beta \cdot v \cdot \left( \sin \beta \cdot v
                               + l_V \cdot \dot\Psi \right)
    \right]
}
{ \left( \cos \beta \cdot v
                               - \frac{b_V \cdot \dot\Psi}{2} \right)^2
  + \left( \sin \beta \cdot v
                               + l_V \cdot \dot\Psi \right)^2
}
\\
\\
&\frac {\partial F_{Y,W_{VR}}}{\partial \beta}  \\
&=\frac
{ - \hat k_{alhpa,VR} \cdot
    \left[ 
         \cos\beta \cdot v \cdot \left( \cos \beta \cdot v
                               + \frac{b_V \cdot \dot\Psi}{2} \right)
        +\sin \beta \cdot v \cdot \left( \sin \beta \cdot v
                               + l_V \cdot \dot\Psi \right)
    \right]
}
{ \left( \cos \beta \cdot v
                               + \frac{b_V \cdot \dot\Psi}{2} \right)^2
  + \left( \sin \beta \cdot v
                               + l_V \cdot \dot\Psi \right)^2
}
\\
\\
&\frac {\partial F_{Y,W_{HL}}}{\partial \beta} \\
&=\frac
{ - \hat k_{alhpa,HL} \cdot
    \left[ 
         \cos \beta \cdot v \cdot \left( \cos \beta \cdot v
                               - \frac{b_H \cdot \dot\Psi}{2} \right)
        +\sin \beta \cdot v \cdot \left( \sin \beta \cdot v
                               - l_H \cdot \dot\Psi \right)
    \right]
}
{ \left( \cos \beta \cdot v
                               - \frac{b_H \cdot \dot\Psi}{2} \right)^2
  + \left( \sin \beta \cdot v
                               - l_H \cdot \dot\Psi \right)^2
}
\\
\\
&\frac {\partial F_{Y,W_{HR}}}{\partial \beta} \\
&=\frac
{ - \hat k_{alhpa,HR} \cdot
    \left[ 
         \cos \beta \cdot v \cdot \left( \cos \beta \cdot v
                               + \frac{b_H \cdot \dot\Psi}{2} \right)
        +\sin \beta \cdot v \cdot \left( \sin \beta \cdot v
                               - l_H \cdot \dot\Psi \right)
    \right]
}
{ \left( \cos \beta \cdot v
                               + \frac{b_H \cdot \dot\Psi}{2} \right)^2
  + \left( \sin \beta \cdot v
                               - l_H \cdot \dot\Psi \right)^2
}
\end{aligned}
$$

derivation side forces $\partial \dot\Psi$

$$
\begin{aligned}
&\frac {\partial F_{Y,W_{VL}}}{\partial \dot\Psi} \\
&=\frac
{ - \hat k_{alhpa,VL} \cdot
    \left[ 
         l_V \cdot \left( \cos \beta \cdot v
                               - \frac{b_V \cdot \dot\Psi}{2} \right)
        +{\frac{b_V}{2}}\cdot \left( \sin \beta \cdot v
                               + l_V \cdot \dot\Psi \right)
    \right]
}
{ \left( \cos \beta \cdot v
                               - \frac{b_V \cdot \dot\Psi}{2} \right)^2
  + \left( \sin \beta \cdot v
                               + l_V \cdot \dot\Psi \right)^2
}
\\
\\
&\frac {\partial F_{Y,W_{VR}}}{\partial \dot\Psi}  \\
&=\frac
{ - \hat k_{alhpa,VR} \cdot
    \left[ 
         l_V \cdot \left( \cos \beta \cdot v
                               + \frac{b_V \cdot \dot\Psi}{2} \right)
        -{\frac{b_V}{2}} \cdot \left( \sin \beta \cdot v
                               + l_V \cdot \dot\Psi \right)
    \right]
}
{ \left( \cos \beta \cdot v
                               + \frac{b_V \cdot \dot\Psi}{2} \right)^2
  + \left( \sin \beta \cdot v
                               + l_V \cdot \dot\Psi \right)^2
}
\\
\\
&\frac {\partial F_{Y,W_{HL}}}{\partial \dot\Psi} \\
&=\frac
{ - \hat k_{alhpa,HL} \cdot
    \left[ 
         -l_H \cdot \left( \cos \beta \cdot v
                               - \frac{b_H \cdot \dot\Psi}{2} \right)
        +{\frac{b_H}{2}} \cdot \left( \sin \beta \cdot v
                               - l_H \cdot \dot\Psi \right)
    \right]
}
{ \left( \cos \beta \cdot v
                               - \frac{b_H \cdot \dot\Psi}{2} \right)^2
  + \left( \sin \beta \cdot v
                               - l_H \cdot \dot\Psi \right)^2
}
\\
\\
&\frac {\partial F_{Y,W_{HR}}}{\partial \dot\Psi} \\
&=\frac
{ - \hat k_{alhpa,HR} \cdot
    \left[ 
         -l_H \cdot \left( \cos \beta \cdot v
                               + \frac{b_H \cdot \dot\Psi}{2} \right)
        -{\frac{b_H}{2}} \cdot \left( \sin \beta \cdot v
                               - l_H \cdot \dot\Psi \right)
    \right]
}
{ \left( \cos \beta \cdot v
                               + \frac{b_H \cdot \dot\Psi}{2} \right)^2
  + \left( \sin \beta \cdot v
                               - l_H \cdot \dot\Psi \right)^2
}
\end{aligned}



$$

### Matrix $B_k$

Build $B_{k,[i,l]} = \frac {\partial f_{[i]} (\hat x_{k-1},u_{k-1},())}{\partial u_{[l]}}$  with

 $u_l=\begin{bmatrix} F_{X,W_{VL}} & F_{X,W_{VR}} & F_{X,W_{HL}} & F_{X,W_{HR}} & \delta_H\end{bmatrix}^T$:

$$
\begin{aligned}

B_{k} &= 
T_0 \cdot 
\begin{bmatrix} 
\frac {\partial f_{1,k} }{\partial F_{X,W_{VL}}} & 
\frac {\partial f_{1,k} }{\partial F_{X,W_{VR}}} & 
\frac {\partial f_{1,k} }{\partial F_{X,W_{HL}}} & 
\frac {\partial f_{1,k} }{\partial F_{X,W_{HR}}} & 
\frac {\partial f_{1,k} }{\partial \delta_{H}}
\\
\\
\frac {\partial f_{2,k} }{\partial F_{X,W_{VL}}} & 
\frac {\partial f_{2,k} }{\partial F_{X,W_{VR}}} & 
\frac {\partial f_{2,k} }{\partial F_{X,W_{HL}}} & 
\frac {\partial f_{2,k} }{\partial F_{X,W_{HR}}} & 
\frac {\partial f_{2,k} }{\partial \delta_{H}}
\\
\\
\frac {\partial f_{3,k} }{\partial F_{X,W_{VL}}} & 
\frac {\partial f_{3,k} }{\partial F_{X,W_{VR}}} & 
\frac {\partial f_{3,k} }{\partial F_{X,W_{HL}}} & 
\frac {\partial f_{3,k} }{\partial F_{X,W_{HR}}} & 
\frac {\partial f_{3,k} }{\partial \delta_{H}}
\end{bmatrix}
\end{aligned}
$$

$$
f(x_{k-1},u_{k-1})=\begin{bmatrix}
{1\over m}\cdot \left(\cos \beta_{k-1} \cdot \sum F_{X,k-1} 
                    + \sin \beta_{k-1} \cdot \sum F_{Y,k-1}\right) 
\\
{1\over v\cdot m}\cdot \left(\cos \beta_{k-1} \cdot \sum F_{Y,k-1} 
                           - \sin \beta_{k-1} \cdot \sum F_{X,k-1}\right) 
                           - \dot \Psi_{k-1}
\\
\frac{(F_{Y,V_{VL},k-1}+F_{Y,V_{VR},k-1})\cdot l_V
- (F_{Y,V_{HL},k-1}+F_{Y,V_{HR},k-1})\cdot l_H}
{J_Z} \\
+ \frac{(F_{Y,V_{VR},k-1}-F_{Y,V_{VL},k-1})\cdot \frac{b_V}{2}
+ (F_{Y,V_{HR},k-1}-F_{Y,V_{HL},k-1})\cdot \frac{b_H}{2}}
{J_Z}
\end{bmatrix} 
$$

derivation $\partial f_1$

$$
\begin{aligned}
{\partial f_{1,k}}\over{\partial F_{X,W_{VL,VR}}} &=
{1\over m}\cdot\left(\cos \beta\cdot{{\partial \sum F_X}
\over{\partial\,F_{X,W_{VL,VR}}}} +
 \sin \beta\cdot\frac{\partial \sum F_Y}{\partial\,F_{X,W_{VL,VR}}}\right)
\\
{\partial f_{1,k}}\over{\partial F_{X,W_{HL,HR}}} &=
{1\over m}\cdot\left(\cos \beta\cdot{{\partial \sum F_Y}
\over{\partial\,F_{X,W_{HL,HR}}}} +
 \sin \beta\cdot\frac{\partial \sum F_X}{\partial\,F_{X,W_{HL,HR}}}\right)
\\
{\partial f_{1,k}}\over{\partial\, \delta_{H}} &=
{1\over m} \cdot
\left(\cos \beta \cdot {{\partial \sum F_X}\over{\partial\,\delta_H}}
+ \sin \beta\cdot {{\partial \sum F_Y}\over{\partial\,\delta_H}}\right)

\end{aligned}
$$

derivation $\partial f_2$

$$
\begin{aligned}
{\partial f_{2,k}}\over{\partial F_{X,W_{VL,VR}}} &=
{1 \over {m\cdot v}}\cdot\left(\cos \beta\cdot{{\partial \sum F_Y}
\over{\partial\,F_{X,W_{VL,VR}}}} -
 \sin \beta\cdot\frac{\partial \sum F_X}{\partial\,F_{X,W_{VL,VR}}}\right)
\\
{\partial f_{2,k}}\over{\partial F_{X,W_{HL,HR}}} &=
{1\over {m\cdot v}}\cdot\left(\cos \beta\cdot{{\partial \sum F_Y}
\over{\partial\,F_{X,W_{HL,HR}}}} -
 \sin \beta\cdot\frac{\partial \sum F_X}{\partial\,F_{X,W_{HL,HR}}}\right)
\\
{\partial f_{2,k}}\over{\partial\, \delta_{H}} &=
{1\over {m\cdot v}} \cdot
\left(\cos \beta \cdot {{\partial \sum F_Y}\over{\partial\,\delta_H}}
- \sin \beta\cdot {{\partial \sum F_X}\over{\partial\,\delta_H}}\right)

\end{aligned}
$$

derivation $\partial f_3$

$$
\begin{aligned}
{\partial f_{3,k}}\over{\partial F_{X,W_{VL}}} &=
\frac{l_V-\frac{b_V}{2}}{J_Z}\cdot \sin \delta_H
\\
{\partial f_{3,k}}\over{\partial F_{X,W_{VR}}} &=
\frac{l_V+\frac{b_V}{2}}{J_Z}\cdot \sin \delta_H
\\
{\partial f_{3,k}}\over{\partial F_{X,W_{HL,HR}}} &=
0
\\
{\partial f_{3,k}}\over{\partial\, \delta_{H}} &=
\frac{l_V-\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VL}} }
                                         {\partial \delta_{H}} 
+
\frac{l_V+\frac{b_V}{2}}{J_Z}\cdot \frac {\partial F_{Y,V_{VR}} }
                                         {\partial \delta_{H}}
\end{aligned}
$$

derivation $\partial \sum F_X$ and $\partial \sum F_Y$:

$$
\begin{aligned}
\frac{\partial \sum F_X}{\partial\,F_{X,W_{VL,VR}}} &=
\frac {\partial F_{X,V_{VL}} }{\partial F_{X,W_{VL,VR}}}+
\frac {\partial F_{X,V_{VR}} }{\partial F_{X,W_{VL,VR}}}+
\frac {\partial F_{X,V_{HL}} }{\partial F_{X,W_{VL,VR}}}+
\frac {\partial F_{X,V_{HR}} }{\partial F_{X,W_{VL,VR}}}
\\
\frac{\partial \sum F_X}{\partial\,F_{X,W_{HL,HR}}} &=
\frac {\partial F_{X,V_{VL}} }{\partial F_{X,W_{HL,HR}}}+
\frac {\partial F_{X,V_{VR}} }{\partial F_{X,W_{HL,HR}}}+
\frac {\partial F_{X,V_{HL}} }{\partial F_{X,W_{HL,HR}}}+
\frac {\partial F_{X,V_{HR}} }{\partial F_{X,W_{HL,HR}}}
\\
\frac{\partial \sum F_Y}{\partial\,F_{X,W_{VL,VR}}} &=
\frac {\partial F_{Y,V_{VL}} }{\partial F_{X,W_{VL,VR}}}+
\frac {\partial F_{Y,V_{VR}} }{\partial F_{X,W_{VL,VR}}}+
\frac {\partial F_{Y,V_{HL}} }{\partial F_{X,W_{VL,VR}}}+
\frac {\partial F_{Y,V_{HR}} }{\partial F_{X,W_{VL,VR}}}
\\
\frac{\partial \sum F_Y}{\partial\,F_{X,W_{HL,HR}}} &=
\frac {\partial F_{Y,V_{VL}} }{\partial F_{X,W_{HL,HR}}}+
\frac {\partial F_{Y,V_{VR}} }{\partial F_{X,W_{HL,HR}}}+
\frac {\partial F_{Y,V_{HL}} }{\partial F_{X,W_{HL,HR}}}+
\frac {\partial F_{Y,V_{HR}} }{\partial F_{X,W_{HL,HR}}}
\\
{{\partial \sum F_X}\over{\partial\,\delta_H}} &=
\frac {\partial F_{X,V_{VL}} }{\partial \delta_{H}}+
\frac {\partial F_{X,V_{VR}} }{\partial \delta_{H}}+
\frac {\partial F_{X,V_{HL}} }{\partial \delta_{H}}+
\frac {\partial F_{X,V_{HR}} }{\partial \delta_{H}}
\\
{{\partial \sum F_Y}\over{\partial\,\delta_H}} &=
\frac {\partial F_{Y,V_{VL}} }{\partial \delta_{H}}+
\frac {\partial F_{Y,V_{VR}} }{\partial \delta_{H}}+
\frac {\partial F_{Y,V_{HL}} }{\partial \delta_{H}}+
\frac {\partial F_{Y,V_{HR}} }{\partial \delta_{H}}

\end{aligned}
$$

derivation $\partial F_X$ and $\partial F_Y$:

$$
\begin{aligned}
\frac {\partial F_{X,V_{VL,VR}} }{\partial F_{X,W_{VL,VR}}} &=
\cos \delta_H
\\
\frac {\partial F_{X,V_{HL,HR}} }{\partial F_{X,W_{VL,VR}}} &=
0
\\
\frac {\partial F_{X,V_{VL,VR}} }{\partial F_{X,W_{HL,HR}}} &=
0
\\
\frac {\partial F_{X,V_{HL,HR}} }{\partial F_{X,W_{HL,HR}}} &=
1
\\
\frac {\partial F_{Y,V_{VL,VR}} }{\partial F_{X,W_{VL,VR}}} &=
\sin \delta_H
\\
\frac {\partial F_{Y,V_{HL,HR}} }{\partial F_{X,W_{VL,VR}}} &=
0
\\
\frac {\partial F_{Y,V_{VL,VR}} }{\partial F_{X,W_{HL,HR}}} &=
0
\\
\frac {\partial F_{Y,V_{HL,HR}} }{\partial F_{X,W_{HL,HR}}} &=
0
\\
\frac {\partial F_{X,V_{VL,VR}} }{\partial \delta_{H}} &=
-\sin \delta_H \cdot F_{X,W_{VL,VR}}
-\cos \delta_H\cdot F_{Y,W_{VL,VR}}
-\sin \delta_H\cdot {{\partial F_{Y,W_{VL,VR}}}\over{\partial \delta_H}}
\\
\frac {\partial F_{X,V_{HL,HR}} }{\partial \delta_{H}} &=
\frac {\partial F_{X,W_{HL,HR}} }{\partial \delta_{H}} = 0
\\
\frac {\partial F_{Y,V_{VL,VR}} }{\partial \delta_{H}} &=
\cos \delta_H \cdot F_{X,W_{VL,VR}}
-\sin \delta_H\cdot F_{Y,W_{VL,VR}}
+\cos \delta_H\cdot {{\partial F_{Y,W_{VL,VR}}}\over{\partial \delta_H}}
\\
\frac {\partial F_{Y,V_{HL,HR}} }{\partial \delta_{H}} &=
\frac {\partial F_{Y,W_{HL,HR}} }{\partial \delta_{H}} = 0
\\
\frac {\partial F_{Y,W_{VL,VR}} }{\partial \delta_{H}} &= 
\hat k_{\alpha,VL,VR} 
\end{aligned}
$$

### Matrix $H_k$

To build $H_{[i,j]} = \frac {\partial h_{[i]}(\tilde x_k,())}{\partial x_{[j]}}$ with $x=\begin{bmatrix} v & \beta & \dot \Psi\end{bmatrix}^T $

$z_k=\begin{bmatrix}\dot \Psi_k & a_{X,k} & a_{Y,k} & \omega_{VL,k} & \omega_{VR,k} & \omega_{HL,k} & \omega_{HR,k} \end{bmatrix}^T$

$$
\begin{aligned}
H_k &=
\begin{bmatrix}
0 & 0 & 1 \\
\\
h_{21} &
h_{22} &
h_{23} \\
\\
h_{31} &
h_{32} &
h_{33} \\
\\
h_{41} &
h_{42} &
h_{43} \\
\\
h_{51} &
h_{52} &
h_{53} \\
\\
h_{61} &
h_{62} &
h_{63} \\
\\
h_{71} &
h_{72} &
h_{73} 
\end{bmatrix}
\end{aligned}
$$

Derivations

$$
\begin{aligned}
h_{21} &= \frac{1}{m} \cdot 
            \big( \frac {\partial F_{X,V_{VL},k}}{\partial v_k} +
                  \frac {\partial F_{X,V_{VR},k}}{\partial v_k} 
            \big)
\\
h_{22} &= \frac{1}{m} \cdot 
            \big( \frac {\partial F_{X,V_{VL},k}}{\partial \beta_k} +
                  \frac {\partial F_{X,V_{VR},k}}{\partial \beta_k}  
            \big)
\\
h_{23} &= \frac{1}{m} \cdot 
            \big( \frac {\partial F_{X,V_{VL},k}}{\partial \dot \Psi_k} +
                  \frac {\partial F_{X,V_{VR},k}}{\partial \dot \Psi_k}  
            \big)
\\
h_{31} &= \frac{1}{m} \cdot 
            \big( \frac {\partial F_{Y,V_{VL},k}}{\partial v_k} +
                  \frac {\partial F_{Y,V_{VR},k}}{\partial v_k} +
                  \frac {\partial F_{Y,V_{HL},k}}{\partial v_k} +
                  \frac {\partial F_{Y,V_{HR},k}}{\partial v_k} 
            \big)
\\
h_{32} &= \frac{1}{m} \cdot 
            \big( \frac {\partial F_{Y,V_{VL},k}}{\partial \beta_k} +
                  \frac {\partial F_{Y,V_{VR},k}}{\partial \beta_k} +
                  \frac {\partial F_{Y,V_{HL},k}}{\partial \beta_k} +
                  \frac {\partial F_{Y,V_{HR},k}}{\partial \beta_k} 
            \big)

\\
h_{33} &= \frac{1}{m} \cdot 
            \big( \frac {\partial F_{Y,V_{VL},k}}{\partial \dot \Psi_k} +
                  \frac {\partial F_{Y,V_{VR},k}}{\partial \dot \Psi_k} +
                  \frac {\partial F_{Y,V_{HL},k}}{\partial \dot \Psi_k} +
                  \frac {\partial F_{Y,V_{HR},k}}{\partial \dot \Psi_k} 
            \big)
\\
h_{4,1} &= {{\cos\beta_k\cdot\cos\delta_H+\sin\beta_k\cdot\sin\delta_H}
\over{r_{dyn}}}
\\
h_{42} &= {{{-v_k\cdot\sin\beta_k\cdot\cos\delta_H
+v_k\cdot\cos\beta_k\cdot\sin\delta_H}\over{r_{dyn}}}}
\\
h_{43} &= {{(-{b_V\over2}\cdot\cos\delta_H+l_V\cdot\sin\delta_H)}
\over{r_{dyn}}}
\\
h_{5,1} &= h_{4,1}
\\
h_{52} &= h_{4,2}
\\
h_{53} &= {{({b_V\over2}\cdot\cos\delta_H+l_V\cdot\sin\delta_H)}
\over{r_{dyn}}}
\\
h_{6,1} &= {{\cos\beta_k}\over{r_{dyn}}}
\\
h_{62} &= {{{-v_k\cdot\sin\beta_k}\over{r_{dyn}}}}
\\
h_{63} &= {{-{b_H\over2}}
\over{r_{dyn}}}

\\
h_{7,1} &=  h_{6,1}
\\
h_{72} &=  h_{6,2}
\\
h_{73} &= {{{b_H\over2}}
\over{r_{dyn}}}
\\


\end{aligned}
$$
