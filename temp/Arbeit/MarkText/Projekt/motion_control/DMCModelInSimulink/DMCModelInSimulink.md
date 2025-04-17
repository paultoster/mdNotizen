# DMCModelInSimulink

## 1. Inputsetting

### WHEEL_TICK_EVENT_COUNTS

For each wheel input wheel tick count it will be feed from input wheel rotational speeds ( LoDMCSimInp.wheel_omega_fl, *fr, *_rl, *_rr)

arc length, number  of wheel ticks, residual arc length in one step $t = t_i$ with residual arc length from last step

$$

\Delta \varphi_i = 0.5 * (\omega_{j,i}+\omega_{j,i-1}) \cdot \Delta t_i + \Delta \varphi_{res,i-1},  \> \> \> j = fl,fr, rl,rr \> \> \>  i = t_i\\
n_{ticks,i} = floor(\frac{\Delta \varphi_i \cdot n_{teeth}}{2 \cdot \pi})\\
\Delta \varphi_{res,i} = \Delta \varphi_i - \frac{n_{ticks,i} \cdot 2 \cdot \pi}{ n_{teeth} }
$$
