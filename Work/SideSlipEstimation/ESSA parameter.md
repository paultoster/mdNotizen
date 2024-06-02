# Etimation Side Slip Angle (ESSA)

## Parameter

| Parameter                               | comment                                                        | Passat B8 Sim                       |
| --------------------------------------- | -------------------------------------------------------------- | ----------------------------------- |
| m                                       | [kg] vehicle mass                                              |                                     |
| $J_z$                                   | [kg m^2] moment of inertia vertical                            |                                     |
| $l_V$                                   | [m] distance FA to COG                                         |                                     |
| $l_H$                                   | [m] diatnce RA to COG                                          |                                     |
| $b_V$                                   | [m] track width front                                          |                                     |
| $b_H$                                   | [m] track width rear                                           |                                     |
| $r_{dyn}$                               | [m] dynamic radius tyre                                        | 0.312                               |
| $\lambda$                               | [-] forget factor                                              | 0.998                               |
| $k_{\alpha,max}$                        | [N/-]  maximum stiffness                                       | 150000                              |
| $k_{\alpha,min}$                        | [N/-]  minimum stiffness                                       | 10000                               |
| $F_{X,W_{ij},std}$  $_{ij=VL,VR,HL,HR}$ | [N] input $u_1$ ... $u_4$ standard deviation of measured value | 100                                 |
| $\delta_{H,std}$                        | [rad] input $u_5$ standard deviation measured valu             | $1°/16/(180/\pi)$ $\approx 1e^{-4}$ |
| $\dot \Psi_{std}$                      | [rad/s] std of measurement $z_1$ yaw rate                      | 0.1                                 |
| $a_{X,std}$                             | [m/s/s] std of measurement $z_2$  longitude acceleration       | 0.1                                 |
| $a_{Y,std}$                             | [m/s/s] std of measurement $z_3$latitude acceleration          | 0.1                                 |
| $\omega_{ij,std}$ $_{ij=VL,VR,HL,HR}$   | [1/s] std of measurement $z_4...z_7$ wheel speed               | 0.5                                 |
|                                         |                                                                |                                     |
|                                         |                                                                |                                     |
|                                         |                                                                |                                     |
|                                         |                                                                |                                     |
|                                         |                                                                |                                     |

## Systemblock

![](C:\Users\tftbe1\AppData\Roaming\marktext\images\2022-01-24-09-24-30-image.png)
