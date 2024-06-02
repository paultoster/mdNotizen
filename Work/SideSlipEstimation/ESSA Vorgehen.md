# Estimation SSA Vorgehen

(estimation side slip angle)

## Model Equations

### State

$\begin{bmatrix}v_{k} & \beta_{k} & \dot \Psi_{k}\end{bmatrix}^T$

### Modelinput

$\begin{bmatrix} F_{X,W_{VL}} & F_{X,W_{VR}} & F_{X,W_{HL}} & F_{X,W_{HR}} & \delta_H\end{bmatrix}^T$

### Measurementinput

$\begin{bmatrix}\dot \Psi & a_{X} & a_{Y} & \omega_{VL} & \omega_{VR} & \omega_{HL} & \omega_{HR} & \end{bmatrix}^T$

### Model

$$
\begin{aligned}
\begin{bmatrix}
v_{k} \\ \beta_{k} \\ \dot \Psi_{k}
\end{bmatrix} 
&=
\begin{bmatrix}
v_{k-1} \\ \beta_{k-1} \\ \dot \Psi_{k-1}
\end{bmatrix} \\
&+ T_0 \cdot 
\begin{bmatrix}
{1\over m}\cdot \left(\cos \beta_{k-1} \cdot \sum F_{X,k-1} 
                    + \sin \beta_{k-1} \cdot \sum F_{Y,k-1}\right) 
\\
{1\over v\cdot m}\cdot \left(\cos \beta_{k-1} \cdot \sum F_{X,k-1} 
                           - \sin \beta_{k-1} \cdot \sum F_{Y,k-1}\right) 
                           - \dot \Psi_{k-1}
\\
f_3
\end{bmatrix} 
\\
\\
f_3 &= \frac{(F_{Y,V_{VL},k-1}+F_{Y,V_{VR},k-1})\cdot l_V
- (F_{Y,V_{HL},k-1}+F_{Y,V_{HR},k-1})\cdot l_H}
{J_Z} \\
&+ \frac{(F_{Y,V_{VR},k-1}-F_{Y,V_{VL},k-1})\cdot \frac{b_V}{2}
+ (F_{Y,V_{HR},k-1}-F_{Y,V_{HL},k-1})\cdot \frac{b_H}{2}}
{J_Z}

\end{aligned}
$$

### Measurement Model

$$
\begin{bmatrix}
\dot \Psi_k \\
a_{X,k} \\
a_{Y,k} \\
\omega_{VL,k} \\
\omega_{VR,k} \\
\omega_{HL,k} \\
\omega_{HR,k} \\
\end{bmatrix}
=
\begin{bmatrix}
\dot \Psi_k \\
\frac{F_{X,V_{VL},k}+F_{X,V_{VR},k}+F_{X,V_{HL},k}+F_{X,V_{HR},k}}
{m} \\
\frac{F_{Y,V_{VL},k-}+F_{Y,V_{VR},k}+F_{Y,V_{HL},k}+F_{Y,V_{HR},k}}
{m} \\
\frac{v_{X,W_{VL},k}}{r_{dyn}} \\
\frac{v_{X,W_{VR},k}}{r_{dyn}} \\
\frac{v_{X,W_{HL},k}}{r_{dyn}} \\
\frac{v_{X,W_{HR},k}}{r_{dyn}} \\
\end{bmatrix}
$$

## Velocity Defenition

vehicle velocities

$$
\begin{aligned}
v_{X,V_{VL}} &= v\cdot\cos(\beta) - \dot\Psi \cdot 0.5 \cdot b_V \\
v_{X,V_{VR}} &= v\cdot\cos(\beta) + \dot\Psi \cdot 0.5 \cdot b_V \\
v_{X,V_{HL}} &= v\cdot\cos(\beta) - \dot\Psi \cdot 0.5 \cdot b_H \\
v_{X,V_{HR}} &= v\cdot\cos(\beta) + \dot\Psi \cdot 0.5 \cdot b_H \\
\\
v_{Y,V_{VL}} &= v\cdot\sin(\beta) + \dot\Psi \cdot l_V \\
v_{Y,V_{VR}} &= v\cdot\sin(\beta) + \dot\Psi \cdot l_V \\
v_{Y,V_{HL}} &= v\cdot\sin(\beta) - \dot\Psi \cdot l_H \\
v_{Y,V_{HR}} &= v\cdot\sin(\beta) - \dot\Psi \cdot l_H \\



\end{aligned}
$$

$$
\begin{aligned}

v_{X,W_{VL}} &= v_{X,V_{VL}} \cdot \cos \delta_H 
             + v_{Y,V_{VL}} \cdot \sin \delta_H
\\
v_{Y,W_{VL}} &= -v_{X,V_{VL}} \cdot \sin \delta_H 
             + v_{Y,V_{VL}} \cdot \cos \delta_H
\\
v_{X,W_{VR}} &= v_{X,V_{VR}} \cdot \cos \delta_H 
             + v_{Y,V_{VR}} \cdot \sin \delta_H
\\
v_{Y,W_{VR}} &= -v_{X,V_{VR}} \cdot \sin \delta_H 
             + v_{Y,V_{VR}} \cdot \cos \delta_H
\\
v_{X,W_{HL}} &= v_{X,V_{HL}}
\\
v_{Y,W_{HL}} &= v_{Y,V_{HL}}
\\
v_{X,W_{HR}} &= v_{X,V_{HR}}
\\
v_{Y,W_{HR}} &= v_{Y,V_{HR}}

\end{aligned}
$$

## Derivation of state signals

Signals $\dot v$,$\dot \beta$,$\ddot\Psi$ must be derived a) by derivation and filtered

## Acceleration definition

$$
\begin{aligned}
a_{x} &= \dot v \cdot \cos\beta - v\cdot(\dot \beta + \dot \Psi)\cdot\sin\beta
\\
a_{y} &= \dot v \cdot \sin\beta + v\cdot(\dot \beta + \dot \Psi)\cdot\cos\beta
\end{aligned}
$$

## Estimation of vertical forces:

$$
\begin{aligned}
F_{Z,W_{VL}} &= m \cdot 
\left(\frac{l_h}{l}\cdot g - \frac{h_S}{l}\cdot a_x\right)\cdot
\left(\frac{1}{2} - \frac{h_S}{b_v}\cdot \frac{a_y}{g}\right)
\\
F_{Z,W_{VR}} &= m \cdot 
\left(\frac{l_h}{l}\cdot g - \frac{h_S}{l}\cdot a_x\right)\cdot
\left(\frac{1}{2} + \frac{h_S}{b_v}\cdot \frac{a_y}{g}\right)
\\
F_{Z,W_{HL}} &= m \cdot 
\left(\frac{l_v}{l}\cdot g + \frac{h_S}{l}\cdot a_x\right)\cdot
\left(\frac{1}{2} - \frac{h_S}{b_h}\cdot \frac{a_y}{g}\right)
\\
F_{Z,W_{HR}} &= m \cdot 
\left(\frac{l_v}{l}\cdot g + \frac{h_S}{l}\cdot a_x\right)\cdot
\left(\frac{1}{2} + \frac{h_S}{b_h}\cdot \frac{a_y}{g}\right)
\\
\end{aligned}
$$

## Side Slipe definition

side slip angle $\alpha_{ij}$ is calulated by

$$
\begin{aligned}
\alpha_{VL} &=  
\Bigg( \delta_H - \arctan \bigg( 
\frac{v_{Y,V_{VL}}}
     {v_{X,V_{VL}}}
\bigg) \Bigg) 
\\
\alpha_{VR} &=  
\Bigg( \delta_H - \arctan \bigg( 
\frac{v_{Y,V_{VR}}}
     {v_{X,V_{VR}}}
\bigg) \Bigg) 
\\
\alpha_{HL} &=  
\Bigg( - \arctan \bigg( 
\frac{v_{Y,V_{HL}}}
     {v_{X,V_{HL}}}
\bigg) \Bigg) 
\\
\alpha_{HR} &=  
\Bigg( - \arctan \bigg( 
\frac{v_{Y,V_{HR}}}
     {v_{X,V_{HR}}}
\bigg) \Bigg) 
\\
\end{aligned}
$$

## Estimation of measured side force

from linear one-track-model

$$
\begin{aligned}
\tilde F_{Y,W_{VA}} &= \frac{1}{\cos \delta_H}
\cdot\left[
\frac{J_z\cdot \ddot\Psi
     +(m\cdot v\cdot(\dot\beta+\dot\Psi)\cos\beta+m\cdot\dot v\sin\beta)\cdot l_H}
     {l} - F_{X,W_{VA}}\cdot \sin\delta_H
\right]
\\
\tilde F_{Y,W_{HA}} &= \frac{-J_z\cdot \ddot\Psi
     +(m\cdot v\cdot(\dot\beta+\dot\Psi)\cos\beta+m\cdot\dot v\cdot\sin\beta)\cdot l_V}
     {l}

\end{aligned}
$$

$$
\begin{aligned}
\tilde F_{Y,W_{VL}} &= \tilde F_{Y,W_{VA}}\cdot
                       \frac{F_{Z,W_{VL}}}
                            {F_{Z,W_{VL}}+F_{Z,W_{VR}}}
\\
\tilde F_{Y,W_{VR}} &= \tilde F_{Y,W_{VA}}\cdot
                       \frac{F_{Z,W_{VR}}}
                            {F_{Z,W_{VL}}+F_{Z,W_{VR}}}
\\
\tilde F_{Y,W_{HL}} &= \tilde F_{Y,W_{HA}}\cdot
                       \frac{F_{Z,W_{HL}}}
                            {F_{Z,W_{HL}}+F_{Z,W_{HR}}}
\\
\tilde F_{Y,W_{HR}} &= \tilde F_{Y,W_{HA}}\cdot
                       \frac{F_{Z,W_{HR}}}
                            {F_{Z,W_{HL}}+F_{Z,W_{HR}}}
\\
\end{aligned}
$$

## Estimation side force factor

Least Square Estimation of $k_{\alpha}$

$$
\begin{aligned}
\gamma w(k) &= \frac{P_{w,ij}(k-1)\cdot \alpha_{ij}(k)} 
   {\alpha_{ij}(k) \cdot P_{w,ij}(k-1)\cdot \alpha_{ij}(k)+ \lambda} \\
\hat k_{\alpha,ij}(k) &= \hat k_{\alpha,ij}(k-1) + 
   \gamma w(k) \cdot\big[\tilde F_{Y,W_{ij}}(k)-\alpha_{ij}(k-1)\cdot \hat k_{\alpha,ij}(k-1)\big] \\
P_{w,ij}(k) &= \big[I - \gamma w(k)\cdot \alpha_{ij}(k) \big] 
   \cdot \frac{P_{w,ij}(k-1)}{\lambda} \\
\small ij &= VL,VR,HL,HR
\end{aligned}
$$

The forget factor was set to $\lambda=0.998$

Limitation for $k_{\alpha} = \min(k_{\alpha,max},\max(\hat k_{alpha},k_{\alpha,min})) $

## Side force definition

$$
\begin{aligned}
F_{Y,W_{VL}} &= \hat{k}_{\alpha,VL} \cdot 
\Bigg( \delta_H - \arctan \bigg( 
\frac{v \cdot \sin\beta + \dot\Psi \cdot l_V}
     {v\cdot \cos\beta - \dot\Psi \cdot 0.5 \cdot b_V}
\bigg) \Bigg) 
\\
F_{Y,W_{VR}} &= \hat{k}_{\alpha,VR} \cdot 
\Bigg( \delta_H - \arctan \bigg( 
\frac{v\cdot \sin\beta + \dot\Psi \cdot l_V}
     {v\cdot \cos\beta + \dot\Psi \cdot 0.5 \cdot b_V}
\bigg) \Bigg) 
\\
F_{Y,W_{HL}} &= \hat{k}_{\alpha,HL} \cdot 
\Bigg( - \arctan \bigg( 
\frac{v\cdot \sin\beta - \dot\Psi \cdot l_H}
     {v\cdot \cos\beta - \dot\Psi \cdot 0.5 \cdot b_H}
\bigg) \Bigg) 
\\
F_{Y,W_{HR}} &= \hat{k}_{\alpha,HR} \cdot 
\Bigg( - \arctan \bigg( 
\frac{v\cdot \sin\beta - \dot\Psi \cdot l_H}
     {v\cdot \cos\beta + \dot\Psi \cdot 0.5 \cdot b_H}
\bigg) \Bigg) 
\\
\end{aligned}
$$

## Vehicle Forces

$$
\begin{aligned}

F_{X,V_{VL}} &= F_{X,W_{VL}} \cdot \cos \delta_H 
             - F_{Y,W_{VL}} \cdot \sin \delta_H
\\
F_{Y,V_{VL}} &= F_{X,W_{VL}} \cdot \sin \delta_H 
             + F_{Y,W_{VL}} \cdot \cos \delta_H
\\
F_{X,V_{VR}} &= F_{X,W_{VR}} \cdot \cos \delta_H 
             - F_{Y,W_{VR}} \cdot \sin \delta_H
\\
F_{Y,V_{VR}} &= F_{X,W_{VR}} \cdot \sin \delta_H 
             + F_{Y,W_{VR}} \cdot \cos \delta_H
\\
F_{X,V_{HL}} &= F_{X,W_{HL}}
\\
F_{Y,V_{HL}} &= F_{Y,W_{HL}}
\\
F_{X,V_{HR}} &= F_{X,W_{HR}}
\\
F_{Y,V_{HR}} &= F_{Y,W_{HR}}

\end{aligned}
$$

## Build linearised matrix Ak

### Derivation side forces

derivation $\partial v $:

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

derivation $\partial \beta$:

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

derivation $\partial \dot\Psi$:

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

### Derivation long and lat  forces vehicle:

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

### Sum expantion

$$
\begin{aligned}
\frac {\partial \sum F_{X,k} }{\partial x_{i,k}} &=
\frac {\partial F_{X,V_{VL},k} }{\partial x_{i,k}}+
\frac {\partial F_{X,V_{VR},k} }{\partial x_{i,k}}+
\frac {\partial F_{X,V_{HL},k} }{\partial x_{i,k}}+
\frac {\partial F_{X,V_{HR},k} }{\partial x_{i,k}}-
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

### $f1$ derivation $\partial v_k$

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
\left( \left[ \cos \beta_k \cdot \frac {\partial \sum F_{X,k} }{\partial v_{k}}
- \sin \beta_k \cdot \frac {\partial \sum F_{Y,k} }{\partial v_{k}}\right]
\right)
\\&-{1\over { m\cdot v_k^2}}\cdot
\left( \left[ \cos \beta_k \cdot \sum F_{X,k}
- \sin \beta_k \cdot \sum F_{Y,k}\right]
\right)
\\
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

### $f2$ derivation $\partial \beta_k$

$$
\begin{aligned}
\frac {\partial f_{1,k} }{\partial \beta_{k}} &= 
{1\over m}\cdot
\left( -\sin \beta_k \cdot \sum F_{X,k}
+ \cos \beta_k \cdot \sum F_{Y,k}
\right) 
\\&+{1\over m}\cdot
\left( \cos \beta_k \cdot \frac {\partial \sum F_{X,k} }{\partial \beta_{k}}
+ \sin \beta_k \cdot \frac {\partial \sum F_{Y,k} }{\partial \beta_{k}}
\right)
\\
\\
\frac {\partial f_{2,k} }{\partial \beta_{k}} &= 
{1\over{m\cdot v_k}}\cdot
\left( -\cos\beta_k \cdot \sum F_{X,k}
- \sin \beta_k \cdot \sum F_{Y,k}
\right) 
\\&+{1\over {m\cdot v_k}}\cdot
\left( -\sin\beta_k \cdot \frac {\partial \sum F_{X,k} }{\partial \beta_{k}}
+ \cos\beta_k \cdot \frac {\partial \sum F_{Y,k} }{\partial \beta_{k}}
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

### $f3$ derivation $\partial \dot \Psi_k$

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
\left( -\sin\beta_k \cdot \frac {\partial \sum F_{X,k} }{\partial \dot\Psi_{k}}
+ \cos \beta_k \cdot \frac {\partial \sum F_{Y,k} }{\partial \dot\Psi_{k}}
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

## Build linearised matrix Bk

derivation $\partial F_X$ and $\partial F_Y$:

$$
\begin{aligned}
\frac {\partial F_{X,V_{VL,VR}} }{\partial \delta_{H}} &=
-\sin \delta_H \cdot F_{X,W_{VL,VR}}
-\cos \delta_H\cdot F_{Y,W_{VL,VR}}
-\sin \delta_H\cdot {{\partial F_{Y,W_{VL,VR}}}\over{\partial \delta_H}}
\\
\frac {\partial F_{Y,V_{VL,VR}} }{\partial \delta_{H}} &=
\cos \delta_H \cdot F_{X,W_{VL,VR}}
-\sin \delta_H\cdot F_{Y,W_{VL,VR}}
+\cos \delta_H\cdot {{\partial F_{Y,W_{VL,VR}}}\over{\partial \delta_H}}
\\
\frac {\partial F_{X,V_{HL,HR}} }{\partial \delta_{H}} &=
\frac {\partial F_{X,W_{HL,HR}} }{\partial \delta_{H}} =
\frac {\partial F_{Y,V_{HL,HR}} }{\partial \delta_{H}} =
\frac {\partial F_{Y,W_{HL,HR}} }{\partial \delta_{H}} = 0
\\
\frac {\partial F_{Y,W_{VL,VR}} }{\partial \delta_{H}} &= 
\hat k_{\alpha,VL,VR} 
\end{aligned}
$$

derivation $\partial \sum F_X$ and $\partial \sum F_Y$:

$$
\begin{aligned}
{{\partial \sum F_X}\over{\partial\,\delta_H}} &=
\frac {\partial F_{X,V_{VL}} }{\partial \delta_{H}}+
\frac {\partial F_{X,V_{VR}} }{\partial \delta_{H}}
\\
{{\partial \sum F_Y}\over{\partial\,\delta_H}} &=
\frac {\partial F_{Y,V_{VL}} }{\partial \delta_{H}}+
\frac {\partial F_{Y,V_{VR}} }{\partial \delta_{H}}


\end{aligned}
$$

### Derivation $\partial f_1\over{\partial u_i}​​$

$$
\begin{aligned}
{\partial f_{1,k}}\over{\partial F_{X,W_{VL,VR}}} &=
{1\over m}\cdot\left(\cos \beta\cdot\cos \delta_H +
 \sin \beta\cdot\sin \delta_H\right)
\\
{\partial f_{1,k}}\over{\partial F_{X,W_{HL,HR}}} &=
{1\over m}\cdot\cos\beta
\\
{\partial f_{1,k}}\over{\partial\, \delta_{H}} &=
{1\over m} \cdot
\left(\cos \beta \cdot {{\partial \sum F_X}\over{\partial\,\delta_H}}
+ \sin \beta\cdot {{\partial \sum F_Y}\over{\partial\,\delta_H}}\right)

\end{aligned}
$$

### Derivation $\partial f_2\over{\partial u_i}$

$$
\begin{aligned}
{\partial f_{2,k}}\over{\partial F_{X,W_{VL,VR}}} &=
{1 \over {m\cdot v}}\cdot\left(\cos \beta\cdot\cos \delta_H +
 \sin \beta\cdot\sin \delta_H\right)
\\
{\partial f_{2,k}}\over{\partial F_{X,W_{HL,HR}}} &=
{1\over {m\cdot v}}\cdot\cos\beta
\\
{\partial f_{2,k}}\over{\partial\, \delta_{H}} &=
{1\over {m\cdot v}} \cdot
\left(\cos \beta \cdot {{\partial \sum F_X}\over{\partial\,\delta_H}}
- \sin \beta\cdot {{\partial \sum F_Y}\over{\partial\,\delta_H}}\right)

\end{aligned}
$$

### Derivation $\partial f_3\over{\partial u_i}$

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

## Build linearised matrix Hk

### Derivations

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

### Matrix $H_k$

To build $H_{[i,j]} = \frac {\partial h_{[i]}(\tilde x_k,())}{\partial x_{[j]}}$ with $x=\begin{bmatrix} v_{X} & v_{Y} & \dot \Psi\end{bmatrix}^T $

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
