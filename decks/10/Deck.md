% Optimization of functions with closed and bounded domains
% Math 275 Multivariable Calculus
% October 14, 2013

# Optimization of functions with closed and bounded domains

## Setup

An analog of the intermediate value theorem tells us: if $f$ is a continuous real-valued function whose domain is closed and bounded, then

> - $f$ has a global maximum and $f$ has a global minimum.

If a global optimum is an *interior point* of the domain, it is also a local optimum. Hence the techniques of calculus will locate it.

If, on the other hand, it is an *edge point* of the domain, we must find it by less direct methods.

## Exercise 35



Let $f(x,y) = x + y - x^2 - y^2 - xy$, and suppose $f$ to be defined only on the square $0 \leq x \leq 2$, $0 \leq y \leq 2$. This function is smooth on its domain, so its critical points are stationary points.

A little computation yields $\nabla f = \angl{-2x - y + 1, -2y - x + 1}$. The stationary points of $f$ are thus the solutions (in the domain) of the system
\begin{align*}
    2x + y - 1 &= 0 \\
    x + 2y - 1 &= 0.
\end{align*}

## Solving for the stationary points

Multiplying the second equation by $-2$ yields
\begin{align*}
    2x + y - 1 &= 0 \\
    -2x - 4y + 2 &= 0, \\
\end{align*}
and therefore we find (by adding the equations)
\begin{equation*}
    -3y + 1 = 0.
\end{equation*}

## A unique interior stationary point

Hence, $y = 1/3$, and it is easy to see that $x = 1/3$ as well. We compute:
\begin{equation*}
    f(1/3, 1/3) = 1/3.
\end{equation*}

Note: this does *not* tell us whether $(1/3, 1/3)$ is a local optimum. We are just interested in the value. We'll have finitely many to compare it to, so we don't bother with the second derivative test.

## The edge

We must test the edge separately. In this case, the edge is actually four edges: the segments that make up the edge of the square.

> - $\{ (x,y) \in \R^2 : x = 0, 0 \leq y \leq 2 \}$ (the left)
> - $\{ (x,y) \in \R^2 : y = 0, 0 \leq x \leq 2 \}$ (the bottom)
> - $\{ (x,y) \in \R^2 : x = 2, 0 \leq y \leq 2 \}$ (the right)
> - $\{ (x,y) \in \R^2 : y = 2, 0 \leq x \leq 2 \}$ (the top)

Testing the edges is a routine exercise in slice curves and one-variable calculus.

## The left

On the left, our slice curve is $f(0, y) = y - y^2$. Its domain is the interval $0 \leq y \leq 2$. Since the slice curve is continuous on this closed interval, it possesses global optima.

- In your groups, find the global optima of the slice curve. (Remember to check the endpoints of the domain!)
- $f'(0,y) = 1 - 2y$
- Stationary at $y = 1/2$
- $f(0, 1/2) = 1/4$; $f(0,0) = 0$; $f(0,2) = -2$
- This shows that $f(0,y)$ is maximized at $(0,1/2)$ with value $1/4$
- and minimized at $(0,2)$ with value $-2$

## The bottom

On the bottom, our slice curve is $f(x, 0) = x - x^2$. Its domain is the interval $0 \leq x \leq 2$. Since the slice curve is continuous on this closed interval, it possesses global optima.

- In your groups, find the global max and min of this slice curve on the domain $0 \leq x \leq 2$.
- The function $f$ is symmetric is $x$ and $y$, so this was really easy. Usually, there will be a separate check for each curve segment of the edge.

## The top

On the top, our slice curve is $f(x, 2) = -x^2 - x - 2$, with domain $0 \leq x \leq 2$. 

- In your groups, find the global max and min of this slice curve.
- We have $f'(x,2) = -2x - 1$, so there is a stationary point at $x = -1/2$, not in the domain.
- Thus, the optima must occur at the endpoints: $f(0,2) = -2$, while $f(2,2) = -8$.

## The right

A similar symmetry argument disposes of the right edge of the square. Evidently, the maximum value of $f$ on this edge is $-2$, attained at $(2,0)$, while the minimum is $-8$, attained at $(2, 2)$. 

## Putting it all together

Considering all the edge pieces together, the maximum edge value is $1/4$, attained at $(0, 1/2)$ and $(1/2, 0)$, while the minimum edge value is $-8$, attained at $(2,2)$.

The only interior critical point was $(1/3, 1/3)$, with value $1/3$.

This shows that the global maximum of $f$ occurs at $(1/3, 1/3)$, while the global min occurs at $(2,2)$.

## Work together

Try problem 36 from 14.7:

Find the maximum of $f(x,y) = y^2 + xy - x^2$ on the square $0 \leq x \leq 2$, $0 \leq y \leq 2$.
