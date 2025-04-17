# Introduction to Feedback Linearization

![admin](https://secure.gravatar.com/avatar/07e18b34ed28ddf59977dadc373c2ff0?s=96&d=mm&r=g)by [admin](https://aleksandarhaber.com/author/admin/)[April 21, 2023](https://aleksandarhaber.com/introduction-to-feedback-linearization/)

In this tutorial, we provide an introduction to feedback 
linearization, and how this method can be used to elegantly derive 
controllers of dynamical systems. We also provide Simulink block 
diagrams that simulate the closed-loop system. The YouTube video 
accompanying this tutorial is given below.

Our teaching philosophy is to explain the main ideas of an approach 
by using examples. Only in the later stage, the theory should be 
explained. That is, students should first obtain a strong hands-on 
knowledge of a concept, and in the later stage, they should enlarge and 
deepen their knowledge by studying the theory. Accordingly, by following
 this approach we explain the feedback linearization by using an 
example.

Let us consider a pendulum system shown in the figure below.

![](https://aleksandarhaber.com/wp-content/uploads/2023/04/pendulum-1-613x1024.png)

In our previous tutorial, [which can be found here](https://aleksandarhaber.com/correct-and-clear-explanation-of-linearization-of-dynamical-systems/), we derived an equation of motion of this system. The equation of motion is given below

(1)   ![\begin{align*}\ddot{\theta}+\frac{g}{l}sin(\theta)=F\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-72537793a2314b95cb08baa54a1e3153_l3.svg "Rendered by QuickLaTeX.com")

where ![g](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-d208fd391fa57c168dc0f151de829fee_l3.svg "Rendered by QuickLaTeX.com") is the gravitational acceleration constant, ![m](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-6b41df788161942c6f98604d37de8098_l3.svg "Rendered by QuickLaTeX.com") is the mass of the ball, ![l](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-502276c66966e5a861539c7de60c26c0_l3.svg "Rendered by QuickLaTeX.com") is the length of the rod, and ![F](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-2510519bbe1660dfdffb4195c7287343_l3.svg "Rendered by QuickLaTeX.com") is the external force acting on the ball. This force ![F](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-2510519bbe1660dfdffb4195c7287343_l3.svg "Rendered by QuickLaTeX.com") is perpendicular to the rod. Here, we assume that the force ![F](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-2510519bbe1660dfdffb4195c7287343_l3.svg "Rendered by QuickLaTeX.com") is a control force. Consequently, we can express this force as follows

(2)   ![\begin{align*}F=k\cdot u\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-7dbb42245d80b62198301f90b6969f79_l3.svg "Rendered by QuickLaTeX.com")

where ![k](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-3422b6bb5c160593658b7c39425d9880_l3.svg "Rendered by QuickLaTeX.com") is a constant and ![u](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-43fe27dc3e528266a619764d90fce60b_l3.svg "Rendered by QuickLaTeX.com") is the control input. From the previous two equations, we have

(3)   ![\begin{align*}\ddot{\theta}+\frac{g}{l}sin(\theta)=k\cdot u\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-ad2e76e2c6730c7fc5e51f420cd564b6_l3.svg "Rendered by QuickLaTeX.com")

We rewrite this equation as follows

(4)   ![\begin{align*}\ddot{\theta}=- \frac{g}{l}sin(\theta) + k\cdot u \end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-c051717ebfaf446f5553bfc8c8fdf3c4_l3.svg "Rendered by QuickLaTeX.com")

Next, we introduce the state-space variables

(5)   ![\begin{align*}x_{1}=\theta \\x_{2}=\dot{\theta} \end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-1f074a33546a4234b7cec4f3c702cf3e_l3.svg "Rendered by QuickLaTeX.com")

[In our previous tutorial](https://aleksandarhaber.com/correct-and-clear-explanation-of-linearization-of-dynamical-systems/), we explained how to derive the state space model. The state-space model has the following form

(6)   ![\begin{align*}\begin{bmatrix} \dot{x}_{1} \\ \dot{x}_{2}  \end{bmatrix}=\begin{bmatrix} x_{2} \\ - \frac{g}{l}\sin(x_{1})+ku\end{bmatrix}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-8fc24c8e1cff83525db7f483de83e86a_l3.svg "Rendered by QuickLaTeX.com")

This is a nonlinear state-space model because of the term ![\sin(x_{1})](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-f4c4d97848ac4af8699d9e7eb7ee9240_l3.svg "Rendered by QuickLaTeX.com").
 This term significantly complicates the control system design. If we 
would be able somehow to cancel this term, then we would significantly 
simplify the control system design.

**In a nutshell, the main idea of feedback linearization is to determine a control input ![u](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-43fe27dc3e528266a619764d90fce60b_l3.svg "Rendered by QuickLaTeX.com") that will**

1. **Cancel the nonlinear term**

(7)   ![\begin{align*}\frac{g}{l}\sin(x_{1}) \end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-9edf1459fe18bf51060a60f20faa2da6_l3.svg "Rendered by QuickLaTeX.com")

**on the right-hand side of the equation ([6](https://aleksandarhaber.com/introduction-to-feedback-linearization/#id4038921383)).**

2. **Assign (place) the poles of the feedback-linearized 
   closed-loop system to desired locations such that the system is 
   stabilized around the desired point.**

In our case, we are interested in asymptotic stabilization of the control system around the stable equilibrium point ![x_{1}=\theta=0](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-59e7ff6789d822454ca80791e12a47b5_l3.svg "Rendered by QuickLaTeX.com").
 Of course, the feedback linearization approach can easily be 
generalized for the case of set-point tracking. That is, we can select 
any point around which we want to stabilize the system. This will be 
explained in future tutorials. For the time being, in order not to blur 
the main ideas of feedback linearization with too many details, we focus
 on the simplest possible case. That is, we focus on stabilization 
around the equilibrium point ![x_{1}=\theta=0](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-59e7ff6789d822454ca80791e12a47b5_l3.svg "Rendered by QuickLaTeX.com").

**Here is the main idea of feedback linearization. We want the right-hand side of the second state-equation to be**

(8)   ![\begin{align*} - \frac{g}{l}\sin(x_{1})+ku=-c_{0}x_{1}-c_{1}x_{2}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-b53ff8dc3465e368f5a224a8e242bd2c_l3.svg "Rendered by QuickLaTeX.com")

where ![c_{1}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-d5b560e0f3eaec5ddf46aef5499db178_l3.svg "Rendered by QuickLaTeX.com") and ![c_{2}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-ba70aa0b4484a25e7d06836764ac9056_l3.svg "Rendered by QuickLaTeX.com") are control parameters that we need to design such that the system is asymptotically stable. From the last equation, we obtain

(9)   ![\begin{align*}u=\frac{1}{k}\Big(\frac{g}{l}\sin(x_{1})-c_{0}x_{1}-c_{1}x_{2} \Big)\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-04a3b916de0aa224bfe4979ba48ad118_l3.svg "Rendered by QuickLaTeX.com")

**The equation ([9](https://aleksandarhaber.com/introduction-to-feedback-linearization/#id1607237686)) is our feedback control law.** Note
 that this is a state feedback control law that will “exactly” linearize
 the closed loop system. Although the closed-loop system will become 
linear, the feedback control law is still nonlinear. Let us substitute 
the control law ([9](https://aleksandarhaber.com/introduction-to-feedback-linearization/#id1607237686)) in our state-space model ([6](https://aleksandarhaber.com/introduction-to-feedback-linearization/#id4038921383)). As the result, we obtain

(10)   ![\begin{align*}\begin{bmatrix} \dot{x}_{1} \\ \dot{x}_{2}  \end{bmatrix} & =\begin{bmatrix} x_{2} \\ - \frac{g}{l}\sin(x_{1})+k\cdot \frac{1}{k}\Big(\frac{g}{l}\sin(x_{1})-c_{0}x_{1}-c_{1}x_{2} \Big) \end{bmatrix} \\& =\begin{bmatrix} x_{2} \\ - \frac{g}{l}\sin(x_{1})+\frac{g}{l}\sin(x_{1})-c_{0}x_{1}-c_{1}x_{2} \end{bmatrix}  \\& =\begin{bmatrix} x_{2} \\ -c_{0}x_{1}-c_{1}x_{2} \end{bmatrix}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-1fdfe213161f482439dec9302e499b69_l3.svg "Rendered by QuickLaTeX.com")

and consequently, we obtained a linear closed-loop system. That is, we have “exactly” linearized the nonlinear system.

The next task is to find the control system parameters ![c_{0}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-3270d6445df765705e9b6427770645ae_l3.svg "Rendered by QuickLaTeX.com") and ![c_{1}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-d5b560e0f3eaec5ddf46aef5499db178_l3.svg "Rendered by QuickLaTeX.com") that will render the closed-loop system asymptotically stable. There 
are many ways to do that. Let us follow a textbook approach that is 
based on pole placement and computation of the characteristic 
polynomial.

The closed loop system can be written in the following form

(11)   ![\begin{align*}\begin{bmatrix} \dot{x}_{1} \\ \dot{x}_{2}  \end{bmatrix}  & =\begin{bmatrix}0  & 1 \\ -c_{0} & -c_{1}  \end{bmatrix} \begin{bmatrix} x_{1} \\ x_{2} \end{bmatrix} \\\begin{bmatrix} \dot{x}_{1} \\ \dot{x}_{2}  \end{bmatrix}  & = A  \begin{bmatrix} x_{1} \\ x_{2} \end{bmatrix}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-147382e0b9a78804a93cc25a1a7b1d53_l3.svg "Rendered by QuickLaTeX.com")

where the matrix ![A](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-25b206f25506e6d6f46be832f7119ffa_l3.svg "Rendered by QuickLaTeX.com") is defined by

(12)   ![\begin{align*}A=\begin{bmatrix}0  & 1 \\ -c_{0} & -c_{1}  \end{bmatrix} \end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-d0e8bdef9d8f489c0ab3c98c185c5091_l3.svg "Rendered by QuickLaTeX.com")

The characteristic polynomial is given as

(13)   ![\begin{align*}q(s)=\text{det}\big(sI - A \big)\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-3f5c3d313fda9e49b2298e6ed030150f_l3.svg "Rendered by QuickLaTeX.com")

where

(14)   ![\begin{align*}sI - A =\begin{bmatrix} s & 0 \\ 0 & s  \end{bmatrix}- \begin{bmatrix} 0  & 1 \\ -c_{0} & -c_{1}  \end{bmatrix} =\begin{bmatrix}  s & -1 \\ c_{0} & s+c_{1}\end{bmatrix}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-2b165a9fcd56bbdba2e84ad4c1f8c315_l3.svg "Rendered by QuickLaTeX.com")

Consequently, the characteristic polynomial is

(15)   ![\begin{align*}q(s)=s(s+c_{1})+c_{0}=s^{2}+c_{1}s+c_{0}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-bfe7343dba372799a317cfe3edd05bbb_l3.svg "Rendered by QuickLaTeX.com")

Let us place the closed-loop poles at the following locations

(16)   ![\begin{align*}s_{1}=-2,\;\; s_{2}=-4\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-2cd4de4d5097a666cd2629c46be6150e_l3.svg "Rendered by QuickLaTeX.com")

Consequently, the desired closed-loop characteristic polynomial is

(17)   ![\begin{align*}q_{\text{des}}=(s-s_{1})(s-s_{2})=(s+2)(s+4)=s^{2}+6s+8\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-9e929ab558d21b49c5d750315dc002c4_l3.svg "Rendered by QuickLaTeX.com")

The desired polynomial should be equal to the parametrized characterized polynomial. That is, the equation ([15](https://aleksandarhaber.com/introduction-to-feedback-linearization/#id175399514)) and the equation ([17](https://aleksandarhaber.com/introduction-to-feedback-linearization/#id2984156737)) should be equal. Consequently, we have

(18)   ![\begin{align*}& q_{\text{des}}=q(s) \\& s^{2}+6s+8=s^{2}+c_{1}s+c_{0}\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-fd0e09329df26d201eaa018d00f7114a_l3.svg "Rendered by QuickLaTeX.com")

From this equation, we obtain the parameters ![c_{0}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-3270d6445df765705e9b6427770645ae_l3.svg "Rendered by QuickLaTeX.com") and ![c_{1}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-d5b560e0f3eaec5ddf46aef5499db178_l3.svg "Rendered by QuickLaTeX.com"):

(19)   ![\begin{align*}c_{0}=8,\;\; c_{1}=6\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-febf9d8b2496accb8802d9b0bca90594_l3.svg "Rendered by QuickLaTeX.com")

Next, we explain how to simulate the system in Simulink. First, we 
simulate the system without any control. That is we simulate the 
equation:

(20)   ![\begin{align*}\ddot{\theta}=-\frac{g}{l}\sin(\theta)\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-cf345c8840cb63034d121d5d04810025_l3.svg "Rendered by QuickLaTeX.com")

The parameters for the simulation are

(21)   ![\begin{align*}g=9.81,\;\; l=1\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-27f359717cc3b34642513111435372cc_l3.svg "Rendered by QuickLaTeX.com")

with the initial conditions

(22)   ![\begin{align*}\theta_{0}=\pi/6,\;\; \dot{\theta}_{0}=0\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a19f31171907246194c3999162bf04ae_l3.svg "Rendered by QuickLaTeX.com")

The Simulink block diagram is given in the figure below.

![](https://aleksandarhaber.com/wp-content/uploads/2023/04/bloc_diagram-1024x438.png)

Figure: Simulink block diagram of the equation ([20](https://aleksandarhaber.com/introduction-to-feedback-linearization/#id2114928608)).

This block diagram solves the differential equation. The solution is shown in the figure below.

![](https://aleksandarhaber.com/wp-content/uploads/2023/04/theta_no_control.png)

Next, we add a control input, and simulate the scaled step response. The equation we simulate is given below.

(23)   ![\begin{align*}\ddot{\theta}=-\frac{g}{l}\sin(\theta)+k\cdot u\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-a1522364dfdc74de296abf782180ced0_l3.svg "Rendered by QuickLaTeX.com")

where we assume that

(24)   ![\begin{align*}g=9.81,\;\; l=1,\;\; \theta_{0}=\pi/6,\;\; \dot{\theta}_{0}=0,\;\; u=6\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-049052ce83716fec98de23216c6e770b_l3.svg "Rendered by QuickLaTeX.com")

![](https://aleksandarhaber.com/wp-content/uploads/2023/04/bloc_diagram_step-1024x412.png)

The simulation results are given below.

![](https://aleksandarhaber.com/wp-content/uploads/2023/04/theta_feedback.png)

Next, we simulate the feedback linearization control law. The control parameters ([19](https://aleksandarhaber.com/introduction-to-feedback-linearization/#id1925717883)) produce the following control law

(25)   ![\begin{align*}u& =\frac{1}{k}\Big(\frac{g}{l}\sin(x_{1})-8x_{1}-6x_{2} \Big) \\u& =\frac{1}{k}\Big(\frac{g}{l}\sin(\theta )-8\theta-6\dot{\theta} \Big)\end{align*}](https://aleksandarhaber.com/wp-content/ql-cache/quicklatex.com-73a35bd07458e97acc50e12ef9de24da_l3.svg "Rendered by QuickLaTeX.com")

The block diagram corresponding to this control law is given below.

![](https://aleksandarhaber.com/wp-content/uploads/2023/04/feedback-1024x389.png)

The response of the system is given below (theta variable).

![](https://aleksandarhaber.com/wp-content/uploads/2023/04/feedback_control.png)

As we can observe, the system is asymptotically stabilized. That is, 
the closed-loop system is asymptotically stabilized by the feedback 
nonlinear control law.
