# Correct and Clear Explanation of Linearization of Dynamical Systems

![admin](https://secure.gravatar.com/avatar/07e18b34ed28ddf59977dadc373c2ff0?s=96&d=mm&r=g)by [admin](https://aleksandarhaber.com/author/admin/)[April 13, 2023](https://aleksandarhaber.com/correct-and-clear-explanation-of-linearization-of-dynamical-systems/)

In this tutorial, we provide a clear and correct 
explanation of the linearization of dynamical systems. The motivation 
for creating this tutorial comes from the fact that online we can find a
 number of tutorials that do not correctly or clearly explain the 
linearization process of dynamical systems. Consequently, this tutorial 
aims to provide a clear, concise, and correct explanation of the 
linearization process. The YouTube tutorial accompanying this post is 
given below.

## Motivational example

We consider [a simple gravity pendulum](https://en.wikipedia.org/wiki/Pendulum) shown in the figure below.

![](https://aleksandarhaber.com/wp-content/uploads/2023/04/pendulum-1-613x1024.png)

A ball (red color in the figure) with a mass of ![m](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-6b41df788161942c6f98604d37de8098_l3.svg "Rendered by QuickLaTeX.com") is attached by using a massless rod to the pivot point ![Q](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-2c758bec4c272382411b95fc0e7ee250_l3.svg "Rendered by QuickLaTeX.com"). We assume that the force ![F](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-2510519bbe1660dfdffb4195c7287343_l3.svg "Rendered by QuickLaTeX.com") is acting at the ball. The length of the rod is ![l](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-502276c66966e5a861539c7de60c26c0_l3.svg "Rendered by QuickLaTeX.com"). The force is always perpendicular to the rod. In the figure above, ![g](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-d208fd391fa57c168dc0f151de829fee_l3.svg "Rendered by QuickLaTeX.com") is the gravitational acceleration constant. We assume that the mass of 
the rod is significantly smaller than the mass of the ball and 
consequently, we can neglect it. The free-body diagram is shown in the 
figure below.

![](https://aleksandarhaber.com/wp-content/uploads/2023/04/free_body_pendulum-1024x852.png)

In the figure above, ![N](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-5793832f979c2268e3694c246d53b1bb_l3.svg "Rendered by QuickLaTeX.com") is the normal reaction force exerted by the rod on the ball, ![mg](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-4a1230a8d24890106e97d0dd836af1f5_l3.svg "Rendered by QuickLaTeX.com") is the gravitational force, ![F](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-2510519bbe1660dfdffb4195c7287343_l3.svg "Rendered by QuickLaTeX.com") is the control force, ![n](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-b170995d512c659d8668b4e42e1fef6b_l3.svg "Rendered by QuickLaTeX.com") is the normal unit vector in the direction of the rod, and ![\tau](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-13197f4653c1fd428a291609eb1e3b87_l3.svg "Rendered by QuickLaTeX.com") is the tangent unit vector perpendicular to the rod (tangent to the circle describing the trajectory of the ball). Note that ![n](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-b170995d512c659d8668b4e42e1fef6b_l3.svg "Rendered by QuickLaTeX.com") and ![\tau](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-13197f4653c1fd428a291609eb1e3b87_l3.svg "Rendered by QuickLaTeX.com") define two perpendicular axes. From Newton’s law, we obtain

(1)   ![\begin{align*}m\vec{a}=\vec{N}+\vec{F}+m\vec{g}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-bf17f35d4637d701bdf9cfb9a2c2b5d4_l3.svg "Rendered by QuickLaTeX.com")

where ![\vec{a}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-3b955d57f52c537ae0837fb60776ee05_l3.svg "Rendered by QuickLaTeX.com") is the acceleration vector. By scalarly multiplying this equation with ![\vec{\tau}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-783a05b0bca171823daa0a7299eaee1e_l3.svg "Rendered by QuickLaTeX.com") unit vector, we obtain the projection of this equation onto the ![\tau](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-13197f4653c1fd428a291609eb1e3b87_l3.svg "Rendered by QuickLaTeX.com") axis (tangent axis):

(2)   ![\begin{align*}ma_{\tau} = F- mg\sin(\theta)\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-b5eeb924b3fc3bbe50bb9de0020d5757_l3.svg "Rendered by QuickLaTeX.com")

On the other hand, the tangential acceleration is given by

(3)   ![\begin{align*}a_{\tau}=l\ddot{\theta} \end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-f98749aff91144db327c179b4e902451_l3.svg "Rendered by QuickLaTeX.com")

where ![\ddot{\theta}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a0512f46cbbd7676fd2dab10ae8360ec_l3.svg "Rendered by QuickLaTeX.com") is the second time derivative of ![\theta](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-356a08e839ab6974a16448e16e56745d_l3.svg "Rendered by QuickLaTeX.com"). The variable ![\ddot{\theta}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a0512f46cbbd7676fd2dab10ae8360ec_l3.svg "Rendered by QuickLaTeX.com") is called the angular acceleration. By substituting this expression in the previous equation, we obtain

(4)   ![\begin{align*}ml\ddot{\theta} =F- mg\sin(\theta)\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-651c04b2e7ff2848f584cc369ac0a53d_l3.svg "Rendered by QuickLaTeX.com")

From this equation, we obtain

(5)   ![\begin{align*}\ddot{\theta}+\frac{g}{l}\sin(\theta) =\frac{1}{ml}F\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-8a6024a2fef30a2d8603ac82310fe2a3_l3.svg "Rendered by QuickLaTeX.com")

For simplicity, we assume that the control force ![F](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-2510519bbe1660dfdffb4195c7287343_l3.svg "Rendered by QuickLaTeX.com") is equal to

(6)   ![\begin{align*}F=u^{2}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-64665427e9819d65f15b9837328bbe44_l3.svg "Rendered by QuickLaTeX.com")

where ![u](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-43fe27dc3e528266a619764d90fce60b_l3.svg "Rendered by QuickLaTeX.com") is the **control input**. Consequently, the final model of the system has the following form

(7)   ![\begin{align*}\ddot{\theta}+\frac{g}{l}\sin(\theta) =\frac{1}{ml}u^2\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-08c56a7f814bd2911baebec423b7f097_l3.svg "Rendered by QuickLaTeX.com")

Obviously, this system is nonlinear since

1. It nonlinearly depends on the dependent variable ![\theta](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-356a08e839ab6974a16448e16e56745d_l3.svg "Rendered by QuickLaTeX.com").
2. It nonlinearly depends on the input ![u](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-43fe27dc3e528266a619764d90fce60b_l3.svg "Rendered by QuickLaTeX.com").

Let us write the ordinary differential equation ([7](https://aleksandarhaber.com/correct-and-clear-explanation-of-linearization-of-dynamical-systems/#id2826097846)) in the state-space form. First, we introduce the state-space variables

(8)   ![\begin{align*}x_{1}=\theta \\x_{2}=\dot{\theta}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-11df7fe99763bed78d1af93f32745195_l3.svg "Rendered by QuickLaTeX.com")

By differentiating the last two equations, we obtain

(9)   ![\begin{align*}\dot{x}_{1}& =\dot{\theta}=x_{2} \\\dot{x}_{2}& =\ddot{\theta}=-\frac{g}{l}\sin(\theta)+\frac{1}{ml}u^2=-\frac{g}{l}\sin(x_{1})+\frac{1}{ml}u^2\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-b824ac61e3999cd537e8cac9261efb12_l3.svg "Rendered by QuickLaTeX.com")

Consequently, the state-space model has the following form

(10)   ![\begin{align*}\begin{bmatrix} \dot{x}_{1} \\ \dot{x}_{2}  \end{bmatrix} =\begin{bmatrix} x_{2} \\ -\frac{g}{l}\sin(x_{1})+\frac{1}{ml}u^2  \end{bmatrix}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-202fa4b37ac7f5465ca3c1feb843ea99_l3.svg "Rendered by QuickLaTeX.com")

Usually, we compactly write this state-space model as follows

(11)   ![\begin{align*}\dot{\mathbf{x}}=\mathbf{f}(\mathbf{x},\mathbf{u})\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-60e846edabcb41b4e321262f017697ee_l3.svg "Rendered by QuickLaTeX.com")

where ![\mathbf{x}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-bcda923e732ff6e429d93d0fa7ea8a47_l3.svg "Rendered by QuickLaTeX.com") is the state vector, ![\mathbf{u}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-30ffdb1dc31cf5412c9382e1a8a11c61_l3.svg "Rendered by QuickLaTeX.com") is the control input vector, and ![\mathbf{f}(\cdot)](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-d4479b32a2f2716a42e44587b4dceec6_l3.svg "Rendered by QuickLaTeX.com") is a nonlinear vector function of the state vector and input vector. In
 the general case, these quantities are defined as follows

(12)   ![\begin{align*}\mathbf{x}=\begin{bmatrix}x_{1}\\x_{2}\\ \vdots \\ x_{n}  \end{bmatrix},\;\; \mathbf{u}=\begin{bmatrix}u_{1}\\u_{2}\\ \vdots \\ u_{m}  \end{bmatrix} ,\;\; \mathbf{f}=\begin{bmatrix} f_{1}(\mathbf{x},\mathbf{u}) \\ f_{2}(\mathbf{x},\mathbf{u}) \\ \vdots \\ f_{n}(\mathbf{x},\mathbf{u}) \end{bmatrix},\;\; \end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-d5515e584b381c088f694b97ec21c934_l3.svg "Rendered by QuickLaTeX.com")

In our case, we have

(13)   ![\begin{align*}& \mathbf{x}=\begin{bmatrix}x_{1}\\x_{2}  \end{bmatrix}, \;\; \mathbf{u}=u, \\& f_{1}(\mathbf{x}) = x_{2},\;\; f_{2}(\mathbf{x})=-\frac{g}{l}\sin(x_{1})+\frac{1}{ml}u^2.  \end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-4f45b88426b5bd7dd9d97c27a52c3785_l3.svg "Rendered by QuickLaTeX.com")

Later in this tutorial, we will get back to our nonlinear model. Next, we explain the linearization process.

## Linearization Procedure

Consider the figure shown below.

![](https://aleksandarhaber.com/wp-content/uploads/2023/04/state_diagram-1024x820.png)

The quantities in this figure are

- ![\mathbf{x}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-bcda923e732ff6e429d93d0fa7ea8a47_l3.svg "Rendered by QuickLaTeX.com") is the state vector of the nonlinear system

- ![\mathbf{x}^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a81b14eed2f30180141131c8cde3ffdd_l3.svg "Rendered by QuickLaTeX.com") is the state around which we linearize the system

- ![\Delta \mathbf{x}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-eae3bc548bd7e02194fe97d940e03c8a_l3.svg "Rendered by QuickLaTeX.com") is defined by  
  
  (14)   ![\begin{align*}\Delta \mathbf{x} = \mathbf{x} - \mathbf{x}^{*}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-fe74fa8fc4b1620b7f08cf85fa373c65_l3.svg "Rendered by QuickLaTeX.com")

The vector ![\Delta \mathbf{x}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-eae3bc548bd7e02194fe97d940e03c8a_l3.svg "Rendered by QuickLaTeX.com") is the vector of new variables. This vector is the state vector of the 
linearized system. However, since the input applied to the system can be
 nonlinear, we need to linearize the system with respect to the input. 
Consequently, we introduce

(15)   ![\begin{align*}\Delta \mathbf{u} = \mathbf{u} - \mathbf{u}^{*}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-65e6aa0509abdc885fec0467da1bdfa0_l3.svg "Rendered by QuickLaTeX.com")

Where ![\mathbf{u}^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-7397905c7e83f30effe4b15c68ecb6cd_l3.svg "Rendered by QuickLaTeX.com") is the vector of control inputs around which we linearize the dynamics, and ![\Delta \mathbf{u}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-390e18d054b617c24b3dc83b02e91010_l3.svg "Rendered by QuickLaTeX.com") is the control vector in new variables. The vector ![\Delta \mathbf{u}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-390e18d054b617c24b3dc83b02e91010_l3.svg "Rendered by QuickLaTeX.com") is the control input vector of the linearized system.

When linearizing the dynamics, we have the freedom of choice to choose the vector ![\mathbf{x}^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a81b14eed2f30180141131c8cde3ffdd_l3.svg "Rendered by QuickLaTeX.com"). Typical choices are:

1. **The equilibrium point of the system.** That is, the equilibrium point ![\mathbf{x}^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a81b14eed2f30180141131c8cde3ffdd_l3.svg "Rendered by QuickLaTeX.com") is defined as follows  
   
   (16)   ![\begin{align*}& \dot{\mathbf{x}}^{*}=\mathbf{f}(\mathbf{x}^{*},\mathbf{u}=0)=0\\& \dot{\mathbf{x}}^{*}=\mathbf{f}(\mathbf{x}^{*})=0 \\& \mathbf{f}(\mathbf{x}^{*})=0\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-5f01ada0766f83f387337cad3c50d998_l3.svg "Rendered by QuickLaTeX.com")
   
   Note here, that the equilibrium points are computed for ![\mathbf{u}=0](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-b5afdf0fc9eeaddbaa8ee5dad86edd00_l3.svg "Rendered by QuickLaTeX.com"). That is, by assuming that the control input is not affecting the system dynamics.

2. **The steady state of the system.** Let us assume that there is a constant input vector ![\mathbf{u}^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-7397905c7e83f30effe4b15c68ecb6cd_l3.svg "Rendered by QuickLaTeX.com") that produces the steady-state ![\mathbf{x}^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a81b14eed2f30180141131c8cde3ffdd_l3.svg "Rendered by QuickLaTeX.com"). The vectors ![\mathbf{x}^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a81b14eed2f30180141131c8cde3ffdd_l3.svg "Rendered by QuickLaTeX.com") and ![\mathbf{u}^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-7397905c7e83f30effe4b15c68ecb6cd_l3.svg "Rendered by QuickLaTeX.com") satisfy the following equation  
   
   (17)   ![\begin{align*}\mathbf{f}(\mathbf{x}^{*},\mathbf{u}^{*})=0\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-beef8e49469a2aab976308c6b46c0d43_l3.svg "Rendered by QuickLaTeX.com")
   
   since both ![\mathbf{x}^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a81b14eed2f30180141131c8cde3ffdd_l3.svg "Rendered by QuickLaTeX.com") and ![\mathbf{u}^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-7397905c7e83f30effe4b15c68ecb6cd_l3.svg "Rendered by QuickLaTeX.com") are constants.

3. **The nominal trajectory.** Instead of 
   selecting the linearization state vector as a steady-state vector or an 
   equilibrium point, the state vector can be selected as a point on a 
   state trajectory. In this case, we have  
   
   (18)   ![\begin{align*}\mathbf{x}^{*}=\mathbf{x}^{*}(t),\;\; \mathbf{u}^{*}=\mathbf{u}^{*}(t)\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-e10ec0913f2d0a27f7d69d85e5cc2f0d_l3.svg "Rendered by QuickLaTeX.com")
   
   For a known ![\mathbf{u}^{*}(t)](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-c9142c3e9f8df8d5549f8ffe32cbef5e_l3.svg "Rendered by QuickLaTeX.com"), the state vector ![\mathbf{x}^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a81b14eed2f30180141131c8cde3ffdd_l3.svg "Rendered by QuickLaTeX.com") satisfies the following equation  
   
   (19)   ![\begin{align*}\dot{\mathbf{x}}^{*}=\mathbf{f}(\mathbf{x}^{*},\mathbf{u}^{*})\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-fd776fe4f19ac8bd9e9d1358f58af32b_l3.svg "Rendered by QuickLaTeX.com")
   
   The solution ![\mathbf{x}^{*}=\mathbf{x}^{*}(t)](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-644994708a31a311d969dc7f8fee7cdd_l3.svg "Rendered by QuickLaTeX.com") is the nominal state trajectory around which the dynamics is linearized. This type of linearization is shown below.

![](https://aleksandarhaber.com/wp-content/uploads/2023/04/trajectory_nominal-1024x720.png)

Besides these selections, we can also approximate the dynamics around other states and inputs.

### The general idea of Linearization

First, let us recall the linearization procedure of nonlinear algebraic functions. Consider the following scalar function ![f(x)](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a7ee323bc5a3f73ad5e066b13bed5504_l3.svg "Rendered by QuickLaTeX.com") of a scalar argument. This function is illustrated in the figure below.

![](https://aleksandarhaber.com/wp-content/uploads/2023/04/linearization-1024x617.png)

Let us assume that we want to approximate the function ![f(x)](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a7ee323bc5a3f73ad5e066b13bed5504_l3.svg "Rendered by QuickLaTeX.com") around the point ![x^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-305f5ecf9e2524573d074eccd5ec1c75_l3.svg "Rendered by QuickLaTeX.com"). We use the Taylor expansion of the first-order to approximate the function:

(20)   ![\begin{align*}f(x)\approx f(x^{*})+\frac{df}{dx}\Bigg|_{x^{*}}\underbrace{(x-x^{*})}_{\Delta x}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-f437929649012e657af691018c323a7b_l3.svg "Rendered by QuickLaTeX.com")

The right-hand side of the last equation is an equation of a tangent line through the point ![(x^{*},f(x^{*}))](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-9c3f4cb74d1943371573c610195b4f36_l3.svg "Rendered by QuickLaTeX.com"). This equation has the following mathematical form

(21)   ![\begin{align*}y=f(x^{*})+\frac{df}{dx}\Bigg|_{x^{*}}\underbrace{(x-x^{*})}_{\Delta x}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-687943926452fad4c66da8697d3db85f_l3.svg "Rendered by QuickLaTeX.com")

Let us consider the following example

(22)   ![\begin{align*}f(x)=x^2\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-6059d6dbdd624bc15267ce7e1dbf7eba_l3.svg "Rendered by QuickLaTeX.com")

Let us approximate this function at the point ![(1,1)](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-5193c882fad1bced9ad1e35b92fe7913_l3.svg "Rendered by QuickLaTeX.com"). We have

(23)   ![\begin{align*}f(x)\approx f(1)+\frac{df}{dx}\Bigg|_{x^{*}=1}(x-1)=1+2(x-1)=2x-1\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-fd901ace8d53e26f502a000f76743ee4_l3.svg "Rendered by QuickLaTeX.com")

The linearization of nonlinear state-space models is similar
 in spirit to the linearization of scalar nonlinear functions. In the 
sequel, we explain the linearization procedure of state-space models.

We approximate the nonlinear function ![\mathbf{f}(\mathbf{x},\mathbf{u})](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-292edf52c732c40a25dbbcb6c229d714_l3.svg "Rendered by QuickLaTeX.com") around the point ![(\mathbf{x}^{*},\mathbf{u}^{*})](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-830954f80758f75b2b5b0bc76072b0b2_l3.svg "Rendered by QuickLaTeX.com") by using the Taylor expansion

(24)   ![\begin{align*}\dot{\mathbf{x}}& =\mathbf{f}(\mathbf{x},\mathbf{u}) \approx \mathbf{f}(\mathbf{x}^{*},\mathbf{u}^{*})+\frac{\partial \mathbf{f} }{\partial \mathbf{x}}\Bigg|_{\mathbf{x}^{*},\mathbf{u}^{*}}\cdot \Delta \mathbf{x}+\frac{\partial \mathbf{f} }{\partial \mathbf{u}}\Bigg|_{\mathbf{x}^{*},\mathbf{u}^{*}}\cdot \Delta \mathbf{u}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-f0958691025fc18c8e88bef6e83ad33a_l3.svg "Rendered by QuickLaTeX.com")

where

(25)   ![\begin{align*}\Delta \mathbf{x}= \mathbf{x} - \mathbf{x}^{*} ,  \;\;\; \Delta \mathbf{u}= \mathbf{u} - \mathbf{u}^{*},\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-f77b3fc0d2e4162fe95e4c6f8480d3a5_l3.svg "Rendered by QuickLaTeX.com")

and where

(26)   ![\begin{align*}\frac{\partial \mathbf{f} }{\partial \mathbf{x}}=\begin{bmatrix} \frac{\partial f_{1}}{\partial x_{1}}  & \frac{\partial f_{1}}{\partial x_{2}} & \ldots & \frac{\partial f_{1}}{\partial x_{n}} \\  \frac{\partial f_{2}}{\partial x_{1}}  & \frac{\partial f_{2}}{\partial x_{2}} & \ldots & \frac{\partial f_{2}}{\partial x_{n}} \\ \vdots & \vdots  &  & \vdots  \\ \frac{\partial f_{n}}{\partial x_{1}}  & \frac{\partial f_{n}}{\partial x_{2}} & \ldots & \frac{\partial f_{n}}{\partial x_{n}} \end{bmatrix},\;\; \frac{\partial \mathbf{f} }{\partial \mathbf{u}}=\begin{bmatrix}  \frac{\partial f_{1}}{\partial u_{1}}  & \frac{\partial f_{1}}{\partial u_{2}} & \ldots & \frac{\partial f_{1}}{\partial u_{m}} \\  \frac{\partial f_{2}}{\partial u_{1}}  & \frac{\partial f_{2}}{\partial u_{2}} & \ldots & \frac{\partial f_{2}}{\partial u_{m}} \\ \vdots & \vdots  &  & \vdots  \\ \frac{\partial f_{n}}{\partial u_{1}}  & \frac{\partial f_{n}}{\partial u_{2}} & \ldots & \frac{\partial f_{n}}{\partial u_{m}} \end{bmatrix},\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-202d1a68c62a4736e2c538b050f9c56f_l3.svg "Rendered by QuickLaTeX.com")

The vertical lines in ([24](https://aleksandarhaber.com/correct-and-clear-explanation-of-linearization-of-dynamical-systems/#id3567624401)) mean that the matrices are evaluated at the points ![\mathbf{x}^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a81b14eed2f30180141131c8cde3ffdd_l3.svg "Rendered by QuickLaTeX.com") and ![\mathbf{u}^{*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-7397905c7e83f30effe4b15c68ecb6cd_l3.svg "Rendered by QuickLaTeX.com") These matrices of partial derivatives with respect to the state and input are called the **Jacobian matrices**. From ([24](https://aleksandarhaber.com/correct-and-clear-explanation-of-linearization-of-dynamical-systems/#id3567624401)), we obtain

(27)   ![\begin{align*}\dot{\mathbf{x}} - \mathbf{f}(\mathbf{x}^{*},\mathbf{u}^{*}) \approx \frac{\partial \mathbf{f} }{\partial \mathbf{x}}\Bigg|_{\mathbf{x}^{*},\mathbf{u}^{*}}\cdot \Delta \mathbf{x}+\frac{\partial \mathbf{f} }{\partial \mathbf{u}}\Bigg|_{\mathbf{x}^{*},\mathbf{u}^{*}}\cdot \Delta \mathbf{u}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-2fbe8599814296d4153ecca86a8fbdb1_l3.svg "Rendered by QuickLaTeX.com")

On the other hand, from ([25](https://aleksandarhaber.com/correct-and-clear-explanation-of-linearization-of-dynamical-systems/#id690648652)), we obtain

(28)   ![\begin{align*}\frac{d}{dt}\Delta \mathbf{x}=\Delta \dot{\mathbf{x}} = \dot{\mathbf{x}}- \dot{\mathbf{x}}^{*} =\dot{\mathbf{x}} - \mathbf{f}(\mathbf{x}^{*},\mathbf{u}^{*}) \end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-3bfb22246eba89261627b46010cc5414_l3.svg "Rendered by QuickLaTeX.com")

Consequently, from ([27](https://aleksandarhaber.com/correct-and-clear-explanation-of-linearization-of-dynamical-systems/#id3834483306)) and ([28](https://aleksandarhaber.com/correct-and-clear-explanation-of-linearization-of-dynamical-systems/#id3750101499)), we obtain  

(29)   ![\begin{align*}\Delta \dot{\mathbf{x}}  \approx \frac{\partial \mathbf{f} }{\partial \mathbf{x}}\Bigg|_{\mathbf{x}^{*},\mathbf{u}^{*}}\cdot \Delta \mathbf{x}+\frac{\partial \mathbf{f} }{\partial \mathbf{u}}\Bigg|_{\mathbf{x}^{*},\mathbf{u}^{*}}\cdot \Delta \mathbf{u}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-caeaa79b117e6f524f8e873fdad37786_l3.svg "Rendered by QuickLaTeX.com")

By replacing the approximation with equality, we obtain

(30)   ![\begin{align*}\Delta \dot{\mathbf{x}} = \frac{\partial \mathbf{f} }{\partial \mathbf{x}}\Bigg|_{\mathbf{x}^{*},\mathbf{u}^{*}}\cdot \Delta \mathbf{x}+\frac{\partial \mathbf{f} }{\partial \mathbf{u}}\Bigg|_{\mathbf{x}^{*},\mathbf{u}^{*}}\cdot \Delta \mathbf{u}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-72ee9f40b4f0968825d235b69f6786cc_l3.svg "Rendered by QuickLaTeX.com")

Let us introduce a new notation

(31)   ![\begin{align*}A=\frac{\partial \mathbf{f} }{\partial \mathbf{x}}\Bigg|_{\mathbf{x}^{*},\mathbf{u}^{*}},\;\; B=\frac{\partial \mathbf{f} }{\partial \mathbf{u}}\Bigg|_{\mathbf{x}^{*},\mathbf{u}^{*}},\;\;   \mathbf{z}=\Delta \mathbf{x},\;\;   \mathbf{w}=\Delta \mathbf{u}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-0f26a78284180659695d28c231a12a04_l3.svg "Rendered by QuickLaTeX.com")

From ([30](https://aleksandarhaber.com/correct-and-clear-explanation-of-linearization-of-dynamical-systems/#id2987071565)) and ([31](https://aleksandarhaber.com/correct-and-clear-explanation-of-linearization-of-dynamical-systems/#id2106896589)), we **obtain the linearized model**

(32)   ![\begin{align*}\dot{\mathbf{z}}=A\mathbf{z}+B\mathbf{w}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a71f26a35a73e328ccbd2669473ce21c_l3.svg "Rendered by QuickLaTeX.com")

where

- The system matrices ![A](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-25b206f25506e6d6f46be832f7119ffa_l3.svg "Rendered by QuickLaTeX.com") and ![B](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-770fd1447ccf2fc229801b486b0d8f8a_l3.svg "Rendered by QuickLaTeX.com") are defined as follows

(33)   ![\begin{align*}A=\frac{\partial \mathbf{f} }{\partial \mathbf{x}}\Bigg|_{\mathbf{x}^{*},\mathbf{u}^{*}}, \;\; B=\frac{\partial \mathbf{f} }{\partial \mathbf{u}}\Bigg|_{\mathbf{x}^{*},\mathbf{u}^{*}}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-4776f0faaa52eba28d50aa0176a818ea_l3.svg "Rendered by QuickLaTeX.com")

- The linearized state vector and linearized input vector are defined by

(34)   ![\begin{align*}\mathbf{z}=\Delta \mathbf{x}=\mathbf{x} - \mathbf{x}^{*} ,  \;\;\; \mathbf{w}=\Delta \mathbf{u}= \mathbf{u} - \mathbf{u}^{*}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-13c5631c19be1bf1bac093a4146e5714_l3.svg "Rendered by QuickLaTeX.com")

**It
 should be kept in mind that the linearization produces a reliable 
approximation of the nonlinear system only for relatively small values 
of** ![\mathbf{z}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-99cf613a035549e818807a37bbcac148_l3.svg "Rendered by QuickLaTeX.com") .

## Linearization of Nonlinear Pendulum Equations

The nonlinear state-space model is given by the following equation

(35)   ![\begin{align*}\begin{bmatrix} \dot{x}_{1} \\ \dot{x}_{2}  \end{bmatrix} =\begin{bmatrix} x_{2} \\ -\frac{g}{l}\sin(x_{1})+\frac{1}{ml}u^2  \end{bmatrix}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-42204d399e86afc1c927733633bf446e_l3.svg "Rendered by QuickLaTeX.com")

From this equation, we obtain

(36)   ![\begin{align*}f_{1}&=x_{2} \\ f_{2}&=-\frac{g}{l}\sin(x_{1})+\frac{1}{ml}u^2  \end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-2dd902f3c58a96590d07202e48651941_l3.svg "Rendered by QuickLaTeX.com")

The Jacobian matrix with respect to the state is defined by

(37)   ![\begin{align*}\frac{\partial \mathbf{f}}{\partial \mathbf{x} } =\begin{bmatrix} \frac{\partial f_{1}}{\partial x_{1}} & \frac{\partial f_{1}}{\partial x_{2}} \\ \frac{\partial f_{2}}{\partial x_{1}} & \frac{\partial f_{2}}{\partial x_{2}} \end{bmatrix}=\begin{bmatrix} 0 & 1\\ -\frac{g}{l}cos(x_{1}) & 0 \end{bmatrix}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-24a8feb0267128c344e9c21f817ff4f0_l3.svg "Rendered by QuickLaTeX.com")

The Jacobian matrix with respect to the control input is defined by

(38)   ![\begin{align*}\frac{\partial \mathbf{f}}{\partial \mathbf{u} } =\begin{bmatrix} \frac{\partial f_{1}}{\partial u} \\  \frac{\partial f_{2}}{\partial u}\end{bmatrix} =\begin{bmatrix} 0 \\ \frac{2}{ml} u\end{bmatrix}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-39179aad7059edf91458743a70840dc5_l3.svg "Rendered by QuickLaTeX.com")

We approximate the nonlinear system at the state and input

(39)   ![\begin{align*}\mathbf{x}^{*}=\begin{bmatrix} 0 \\ 0 \end{bmatrix},\;\; u^{*}=1,\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a90278a4c467d2e23eabc2544fafd68d_l3.svg "Rendered by QuickLaTeX.com")

For this selection of the state and input, we obtain

(40)   ![\begin{align*}A=\frac{\partial \mathbf{f}}{\partial \mathbf{x} }\Bigg|_{\mathbf{x}^{*}}=\begin{bmatrix} 0 & 1\\ -\frac{g}{l} & 0 \end{bmatrix}\\B=\frac{\partial \mathbf{f}}{\partial \mathbf{u} }\Bigg|_{u^{*}}=\begin{bmatrix} 0 \\ \frac{2}{ml} \end{bmatrix}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-eab74dc00fcbb25cf6dec2b1f8dfb9fd_l3.svg "Rendered by QuickLaTeX.com")

The final linearized model is given by

(41)   ![\begin{align*}\dot{\mathbf{z}}=\begin{bmatrix} 0 & 1\\ -\frac{g}{l} & 0 \end{bmatrix}\mathbf{z}+\begin{bmatrix} 0 \\ \frac{2}{ml} \end{bmatrix}w\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-286f5979ca5181e51ab21bf03d35c953_l3.svg "Rendered by QuickLaTeX.com")
