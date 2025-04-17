# Senkrechter Schnittpunkt auf räumlicher Pfad

![](C:\Users\tftbe1\AppData\Roaming\marktext\images\2022-02-25-13-36-51-image.png)

Task: Find related to a Point R the perpendicular Point on Path. For each Segment P(i),P(i+1) the perpendicular point on the Line will be searched.

first point on path: Pi($p_{i,x},p_{i,y},p_{i,z}$)

given point: R($r_x,r_y,r_z$)

second point on path:  Pi+1($p_{i+1,x},p_{i+1,y},p_{i+1,z}$)

searched point: Q($q_x,q_y,q_z$)

Description Q

$$
\begin{aligned}
q_x &= p_{i,x}+(p_{i+1,x}-p_{i,x})\cdot t\\
q_y &= p_{i,y}+(p_{i+1,y}-p_{i,y})\cdot t\\
q_z &= p_{i,z}+(p_{i+1,z}-p_{i,z})\cdot t\\
\end{aligned}
$$

Point product must be zero to get perpendicular point:

$$
0=(p_{i+1,x}-p_{i,x})\cdot(q_x-r_x)+(p_{i+1,y}-p_{i,y})\cdot(q_y-r_y)+(p_{i+1,z}-p_{i,z})\cdot(q_z-r_z)

$$

Inserting Q into the point product:

$$
t=\frac{(p_{i+1,z}-p_{i,z})\cdot r_z + ( p_{i+1,y} - p_{i,y}) \cdot r_y+ ( p_{i+1,z} - p_{i,z}) \cdot r_z}{(p_{i+1,z}-p_{i,z})^2+(p_{i+1,y}-p_{i,y})^2+(p_{i+1,x}-p_{i,x})^2}
$$
