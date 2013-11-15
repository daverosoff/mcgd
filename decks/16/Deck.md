% Pasting parametrizations
% Math 251 Calculus 3
% November 15, 2013

# Pasting parametrizations

## Warm-up

- Parametrize the arc of the circle of radius $3$ centered at $(0,0)$ in the left half of the plane, in the positive direction. (Feel free to use multiples of $\tau = 2\pi$ in your parametrization. It may be easier to think about this way.)

## Piecewise paths

We are very often interested in parametrizations of curves with corners, such as squares and rectangles. The easiest way to parametrize such a curve is to paste together smaller parametrizations of its pieces. To do this, we need to be able to shift parametrizations in time.

Let $\vec{r}(t)$ be a parametrized curve, say for $a \leq t \leq b$. We can *shift* the "time" domain of the parametrization so that $t$ runs over whatever interval we choose. For example, define $\vec{s}(t) = \vec{r}(t - t_0)$, for some real number $t_0$. (The transformation $t \mapsto t - t_0$ is called a *translation*.)

This shifts the time domain of $\vec{r}$ into the future, since $a \leq t - t_0 \leq b$ if and only if $a + t_0 \leq t \leq b + t_0$.

## Reparametrize

Can you adjust your parametrization of the circular arc to begin at $t = 0$? 

## Adjusting the speed

We can also speed up or slow down our parametrizations, by scaling in the time domain. Suppose $\vec{r}(t)$ is a parametrization over the interval $[0, k]$. Observe that 
\begin{equation*}
    0 \leq t \leq k \quad \text{if and only if} \quad 0 \leq 2t \leq 2k.
\end{equation*}
The transformation $t \mapsto 2t$ is called a *scaling* or *dilation*. Evidently, it slows down the motion of our moving particle, doubling the time it takes to traverse its path.

- Can you adjust your parametrization of the circular arc to begin at $t = 0$ and end at $t = 1$?

## Gluing parametrizations

Let $C$ be the boundary of the unit square: so $C$ consists of four segments connecting the four points $(0,0)$, $(0,1)$, $(1,0)$, and $(1,1)$. Let the four segments beginning with the bottom and proceeding counterclockwise be called $C_1$ up through $C_4$.

- Parametrize each of the four segments. Don't worry for now about the time intervals; we can always scale and translate later. Just do it in the way that seems easiest to write down. Often this means starting at $t = 0$. You should have four different vector-valued functions $\vec{r}_i(t)$, one for each $C_i$.
- Now *glue* your parametrizations for $C_1$ and $C_2$. This means to adjust $\vec{r}_2(t)$ so that it begins at the same $t$-value at which $\vec{r}_1(t)$ ends.
- Glue the rest of your parametrizations in the same way to parametrize the whole square.

## Smoothness of parametrizations

We won't talk much about limits or continuity for parametrized curves, but it seems like the square is not very smooth. However, your glued parametrization is continuous, and while it is not differentiable, it is *piecewise* differentiable, which in practice is good enough.

## Parametrizing graphs

If a curve comes to you as the graph of some function $y = f(x)$, it is easy to come up with a parametrization. 

- Let $t = x$. 
- Then $\vec{r}(t) = \angl{t, f(t)}$. 
- Boom.

## Some parametrized curves of more exotic type

The MAA (Mathematical Association of America) has provided really excellent applets for playing with parametrically described families of curves.

[This text, while not underlined, is a clickable link to the applets.](http://www.maa.org/publications/periodicals/loci/resources/the-beauty-of-parametric-curves-the-applets)

## Tangent vectors, velocity, speed, and arclength

If $\vec{r}(t)$ is a vector function, we say it is continuous if all its entries are continuous functions. Same thing for differentiable. We think of $\vec{r}(t)$ as a position function, because at each time $t$ it shows how to get to our particle from the origin. Then its derivative $\vec{r}'(t)$ turns out to be the instantaneous velocity vector of the moving particle.

- If exactly at time $t$ you detach the moving particle from the function $\vec{r}$ and let it move in the exact direction and speed it had at that moment, then at time $t+1$ it has moved by exactly $\vec{r}'(t)$.
- How do we differentiate? One entry at a time. $\vec{r}'(t) = \angl{x'(t), y'(t)}$ and so on.

## Velocity as a vector

Velocity has always been a vector. You know that speed is nonnegative, while in one dimension velocity carries a sign. This is information about the direction of travel, just as meaningful as the speed itself. Since motion in a plane isn't confined to a backward and a forward direction, we need the complete generality of vectors in the plane to describe the possible velocities a moving particle might have.

Usually, when we draw parametrized curves, we don't actually draw the vectors $\vec{r}(t)$. Instead we draw the trajectory: the collection of endpoints of $\vec{r}(t)$. But we frequently will draw the vector $\vv(t) = \vec{r}'(t)$ attached to the curve, with its tail at the endpoint of $\vec{r}(t)$. It's a moving tangent vector!

## Speed as the length of velocity

The entries of the velocity vector (tangent vector---same thing) tell you the velocities in each of the coordinate directions. But the speed is something else. It is the magnitude of the velocity vector. In two dimensions,
\begin{equation*}
    \frac{ds}{dt} = \norm{\angl{x'(t), y'(t)}} = \sqrt{x'(t)^2 + y'(t)^2}
\end{equation*}

## Arc length

We can obtain the length of a parametrized curve (not the same thing as the length of its time domain or parameter interval) by integrating speed over the parameter interval $[a,b]$:
\begin{equation*}
    s = \int_a^b \frac{ds}{dt} \; dt = \int_a^b \sqrt{\left( \frac{dx}{dt} \right)^2 + \left( \frac{dy}{dt} \right)^2} \; dt
\end{equation*}

## Practice translating, scaling, gluing

> - Circle, center at origin, traced once counterclockwise, starting at $(0,3)$ with $t \in [0,1]$.
> - Circle, center at $(a,b)$, traced once counterclockwise, starting at $(a+r, b)$ with $t \in [0, 2\pi] = [0, \tau]$.
> - Circle, center at origin, traced once *clockwise*, starting at $(1,0)$.
> - Pseudotriangle with boundary the segments from $(0,1)$ to $(0,0)$, from $(0,0)$ to $(1,0)$, and the arc of the unit circle connecting $(1,0)$ to $(0,1)$. Traverse counterclockwise with time interval $[0,1]$.
