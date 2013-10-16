% Lagrange multipliers
% Math 251 Calculus 3
% October 16, 2013

# Lagrange multipliers

## Setup

We wish to find optimum values of some *objective function* $f(x,y,z)$ subject to the *constraint* $g(x,y,z) = 0$. 

Last time, you worked on an example of building a box of volume $\SI{12}{m^3}$ of minimum cost, if the front costs $\$10$ per square meter and the rest of the faces $\$5$ per square meter. 

## Approach via multiplier

Each triple $(x,y,z)$ of real numbers corresponds to a box. Not all of the triples correspond to realistic boxes (negative or zero volumes). The constraint that the volume be 12 restricts the set of boxes of interest. We only care about boxes for which $xyz = 12$; a suitable constraint function would be $g(x,y,z) = xyz - 12$.

Here, the cost function is $C(x, y, z) = 10xy + 10xz + 15yz$. 

We saw yesterday that we should find a level surface of $C$ that is tangent to the constraint surface. We recognize this tangency by comparing $\nabla C$ with $\nabla g$.

## The Lagrange equations

Equating two gradients gives us three scalar equations. We must try to solve $\nabla C = \lambda \nabla g$, or

\begin{align*}
    10y + 10z &= \lambda yz \\
    10x + 15z &= \lambda xz \\
    10x + 15y &= \lambda xy,
\end{align*}
along with the original constraint equation $xyz = 12$.

The parameter $\lambda$ is the Lagrange multiplier. Without trying to interpret it too directly, observe that it evidently carries units: its dimension is the inverse of length, so $\lambda$ is measured in $\si{m^{-1}}$.

## Clarification from class

I got a little confused about the units when discussing $\lambda$. The coefficients in the LHS of the Lagrangian equations are all in units of dollars per square meter. Each of $x$, $y$, and $z$ is a length, so the unit of, e.g., $10y + 10z$ is dollars per meter.

On the other hand, the unit of $xz$ is $\si{m^2}$. Hence, $\lambda$ must carry units of dollars per cubic meter.

Observe that this is the same as we would expect were we to calculate the derivative of the cost function with respect to volume. This matter will be explored in a future module.

## One good technique

Solving nonlinear equations is difficult and there are no general techniques. One technique particular to this situation is to solve each of the Lagrange equations for $\lambda$. We obtain

$$ \lambda = \frac{10y + 10z}{yz} = \frac{10x + 15z}{xz} = \frac{10x + 15y}{xy} $$

or equivalently

$$ \frac{10}{z} + \frac{10}{y} = \frac{10}{z} + \frac{15}{x} = \frac{10}{y} + \frac{15}{x}. $$

Thus: $y = z$ and $y = \frac{2}{3}x$. Because $xyz = 12$, this gives $x = 3, y = z = 2$.

## Work together

> 1. Optimize the function $f(x,y) = xy$ on the ellipse $x^2 + 4y^2 = 16$. (The level curves of $xy$ are hyperbolas centered at $(0,0)$.)

> Solution: The maximum value is $4$, attained at $(2 \sqrt 2, \sqrt{2})$ and $(-2 \sqrt 2, -\sqrt{2})$. The minimum value is $-4$, attained at $(-2 \sqrt 2, \sqrt{2})$ and $(2 \sqrt 2, -\sqrt{2})$.

> 2. Show that among all rectangles with perimeter $P$, the one of maximal area is a square.

> Hint: Represent a rectangle by its dimensions $x$ and $y$. Then $2x + 2y - P = 0$ is the constraint equation. 
