% More practice with parametrizations
% Math 275 Multivariable Calculus
% November 18, 2013




# More practice with parametrizations

## Exam data




The average was $74.871$ ($n = 31$) with $\sigma = 12.5638$.
\begin{figure}[ht]
\begin{minipage}[m]{0.2\linewidth}
\begin{tabular}{cr}
    min & $47$ \\
    Q1 & $65.5$ \\
    Q2 & $76$ \\
    Q3 & $83.5$ \\
    max & $96$
\end{tabular}
\end{minipage} \hspace*{1em} 
\begin{minipage}[m]{0.6\linewidth}


\includegraphics[width=0.8\textwidth, height=0.8\textwidth]{figure/hist.pdf}
\end{minipage}
\end{figure}

## Warm-up

*Gluing parametrizations*. Let $P$, $Q$, and $R$ be the points $(1,0)$, $(0,1)$, and $(-1,0)$, respectively, and let $\gamma$ be the V-shaped path joining $P$ to $Q$ and thence to $R$ via segments.

- Parametrize $\gamma$ in such a way that $\gamma(0) = P$ and $\gamma(2) = R$.
- Answer: $\vec{r}(t) = \angl{1-t, t}$ if $0 \leq t \leq 1$ and $\vec{r}(t) = \angl{1-t, 2-t}$ if $1 \leq t \leq 2$.

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
