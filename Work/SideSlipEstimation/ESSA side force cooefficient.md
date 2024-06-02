# Estimation Side Slip Angle (ESSA) Force Coefficient

From Matthias Schorn "Quer- und Längsregelung eines Personenkraftwagens für ein Fahrerassistenzsystem zur Unfallvermeidung, IAT, 2007"

## Least Square Estimation of $k_{\alpha}$

Based on the Least Square-procedure (RLS) (Isermann 1992) the Side force coofficients $k_{\alpha,ij}$ are estimated seperately

equation 4.35,4.36,4.37

$$
\begin{aligned}
\gamma w(k) &= \frac{P_{w}(k-1)\cdot \psi(k)} 
   {\psi^T(k) \cdot P_{w}(k-1)\cdot \psi(k)+ \lambda} \\
\hat \theta(k) &= \hat \theta(k-1) + 
   \gamma w(k) \cdot\big[ y(k)-\psi^T(k)\cdot \hat \theta(k)\big] \\
P_{w}(k) &= \big[I - \gamma w(k)\cdot \psi^T(k) \big] 
   \cdot \frac{P_{w}(k-1)}{\lambda}
\end{aligned}
$$

With input  of side slip angle $\psi=\alpha_{ij}$,      $ij=VL,VR,HL,HR$ 

and measurement $y=F_{Y,W_{ij}}$ 

and estimated side force coefficient $\hat \theta_{\alpha,ij}=\hat k_{\alpha,ij}$ 

rewritten:

$$
\begin{aligned}
\gamma w(k) &= \frac{P_{w,ij}(k-1)\cdot \alpha_{ij}(k)} 
   {\alpha_{ij}(k) \cdot P_{w,ij}(k-1)\cdot \alpha_{ij}(k)+ \lambda} \\
\hat k_{\alpha,ij}(k) &= \hat k_{\alpha,ij}(k-1) + 
   \gamma w(k) \cdot\big[ \tilde F_{Y,W_{ij}}(k)-\alpha_{ij}(k)\cdot \hat k_{\alpha,ij}(k)\big] \\
P_{w,ij}(k) &= \big[I - \gamma w(k)\cdot \alpha_{ij}(k) \big] 
   \cdot \frac{P_{w,ij}(k-1)}{\lambda} \\
\small ij &= VL,VR,HL,HR
\end{aligned}
$$

The forget factor was set to $\lambda=0.998$

side slip angle $\alpha_{ij}$ is calulated by

equation 3.44

$$
\alpha_{ij}=\delta_{ij} - \arctan\big( \frac{v_{Y,V_{ij}}}{v_{X,V_{ij}}}\big)
$$

Limitation for $k_{\alpha} = \min(k_{\alpha,max},\max(\hat k_{alpha},k_{\alpha,min})) $

The side force $\tilde F_{Y,W_{ij}}$ could not be measured and must will be build by an estimation. This could be done out of one-track-model. The one-track model gathers the side force based on axle and will be distributed to each wheel. 

equation 4.10, 4.11

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

Signals $\dot v$,$\dot \beta$,$\ddot\Psi$ must be derived a) by derivation and filtered

or derive from e.g. two-track model:

$$
\begin{aligned}

\dot v &= {1\over m}\cdot \left(\cos \beta \cdot \sum F_{X} 
                    + \sin \beta \cdot \sum F_{Y}\right)
\\
\\
\dot \beta &= {1\over v\cdot m}\cdot \left(\cos \beta \cdot \sum F_{X} 
                           - \sin \beta \cdot \sum F_{Y}\right) 
                           - \dot \Psi
\\
\\
\ddot \Psi &= \frac{(F_{Y,V_{VL}}+F_{Y,V_{VR}})\cdot l_V
- (F_{Y,V_{HL}}+F_{Y,V_{HR}})\cdot l_H}
{J_Z} 
\\
\\
\end{aligned}
$$

The axle side force is distributed based on the vertical force estimation

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

Estimation of vertical forces:

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

Accelerations:

$$
\begin{aligned}
a_{x} &= \dot v \cdot \cos\beta - v\cdot(\dot \beta + \dot \Psi)\cdot\sin\beta
\\
a_{y} &= \dot v \cdot \sin\beta - v\cdot(\dot \beta + \dot \Psi)\cdot\cos\beta
\end{aligned}
$$
