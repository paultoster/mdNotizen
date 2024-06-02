# Estimation SSA Definitions

( Estimation side slip angle) 

## Velocity Definition

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

## Side Slip definition

side slip angle $\alpha_{ij}$ is calculated by

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
