% Practice with parametrizing lines
% Math 275 Multivariable Calculus
% November 13, 2013

# Practice with parametrizing lines

## Starting point and direction vector

Just like the standard form of an equation of a plane, the easiest way to express a line involves a vector. Instead of a normal vector (which, in a way, tells which direction the plane *doesn't* go), we'll use a vector $\vv$ *parallel* to the line, called its direction vector.

If $(x_0, y_0, z_0)$ is a point in $\R^3$, there is exactly one line passing through it parallel to $\vv$. Evidently, these points are all obtained by adding multiples of $\vv$ to the vector $\vec{r}_0 = \angl{x_0, y_0, z_0}$.

## Parametrizing the line

A multiple of $\vv$ is a vector $t \vv$, where $t \in \R$. We usually think of $t$ as a time parameter and the expression
\begin{equation} \label{eq:vecline}
\vec{r}(t) = \vec{r}_0 + t \vv 
\end{equation}
as a moving point. Really it is a moving *vector*; we imagine it in standard position, so that the tail of $\vec{r}(t)$ is fixed at $(0,0,0)$ while the head traces the line through $\vec{r}_0$ parallel to $\vv$.

## The scalar form of the equations

If we write $\vv$ in coordinates $\vv = \angl{a,b,c}$, then we can decompose Equation \ref{eq:vecline} into a system of scalar equations. Write 
$$\vec{r}(t) = \angl{x_0 + at, y_0 + bt, z_0 + ct} = \angl{x(t), y(t), z(t)},$$ to obtain
\begin{align*}
    x(t) &= x_0 + at \\
    y(t) &= y_0 + bt \\
    z(t) &= z_0 + ct \\
\end{align*}
These are evidently equivalent to Equation \ref{eq:vecline} and are called  parametric equations of the line.

## Work together

Using the whiteboards, find vector equations for all of the following lines and scalar (parametric) equations for at least one of them.

> 1. The line passing through $(-5, 6, -1)$ parallel to $\angl{9, 0, -6}$.
> 2. The line passing through $(3, 2, -3)$ and $(-1, 4, 2)$.
> 3. The line passing through $(3, 2, -3)$ orthogonal to the plane $2x-y-z=3$.


## Answers

> 1. $\vec{r}(t) = \angl{-5 + 9t, 6, -1 - 6t}$.
> 2. $\vec{r}(t) = \angl{3, 2, -3} + t\angl{-4, 2, 5}$.
> 3. $\vec{r}(t) = \angl{3, 2, -3} + t\angl{2, -1, -1}$.

Scalar equations for 3 are
\begin{align*}
    x(t) &= 3 + 2t \\
    y(t) &= 2 - t \\
    z(t) &= -3 -t. 
\end{align*}

## Circles

The other kind of curve you should know how to parametrize is a circle. A circle in the plane determined by its center $(x_0, y_0)$ and its radius $r$. One parametrization is

$$\vec{r}(t) = \angl{x_0, y_0} + r \angl{\cos t, \sin t}.$$

Write down parametrizations for the following.

> 1. Unit circle
> 2. Radius $1$, center $(1,0)$
> 3. Radius $10$, center $(-3, -2)$

## Pasting parametrizations

Often, we will be interested in parametrizing curves made up of line segments and circular arcs. For example, consider the pseudotriangle whose boundary is the segment connecting $(0,0)$ to $(1,0)$, the segment from $(0,1)$ to $(0,0)$, and the arc of the unit circle lying in the first quadrant (which connects $(0,1)$ to $(1,0)$). Try to find a piecewise function $\vec{r}(t)$ that traces once around this path.

Start by parametrizing each boundary segment separately.
