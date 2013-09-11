% Workshop 01: Slicing spheres
% Math 251 Calculus 3
% September 11, 2013

# Workshop 01

This workshop will confirm what is, to varying degrees for various people, intuitively clear: that all the nonempty slices of a sphere by planes are circles (we adopt the severely reasonable convention that a circle of radius 0 is a point). Be ready to submit this paper on Friday. Workshop grades are mostly participation: if you appear in class, make an honest effort, and submit on time, you receive all or nearly all of the points.

## Warm-up

Recall that the *unit sphere* in $\mathbf{R}^3$ is the sphere of radius 1 centered at $(0,0,0)$. Its equation is
$$ x^2 + y^2 + z^2 = 1. $$

\begin{questions}

\question Give equations of all the planes parallel to the $(y,z)$-plane that miss the unit sphere. \emph{Hint.} Use an auxiliary variable.

\question How many planes parallel to the $(y,z)$-plane meet the sphere at one point? Give equations for all of them.
 
\end{questions}

## Brute force

You read in [Module 03][m03] that it is possible to prove algebraically that the intersection of a sphere and a plane is a circle (provided the intersection contains more than one point). After enough mental aerobics, this certainly seems *plausible*. But is it completely, unambiguously obvious that it's impossible to get an elliptical cross-section?

A completely coordinatized approach to this problem involves choosing a sphere with arbitrary center and radius and an arbitrary plane. Using a result about the classification of planes (we shall do this after we have more vector technology ready to deploy), this will involve solving a system of two simultaneous nonlinear equation in eight variables:

\begin{align*}
    (x - a)^2 + (y - b)^2 + (z - c)^2 &= r^2 \\
    Ax + By + Cz &= D 
\end{align*}

This approach is easy to set up, but a pain in the rear to work out the details, and not very illuminating. Instead, we'll unleash the kung fu of symmetry to deal with this complicated geometric situation.

## Symmetry and WLOG

The idea behind a symmetry argument is that a special case might not really be all that special. For us, the special case will be:

> The sphere is the unit sphere and the plane is of the form $z = A$.

It seems very special: after all, there are many, many spheres other than the unit sphere, and many planes that are not horizontal. But think of it like a videographer: the right angle and zoom turns any situation into this special one.

That's what we mean by symmetry, or the mathematical abbreviation WLOG. This stands for \textbf{W}ithout \textbf{L}oss \textbf{O}f \textbf{G}enerality. The phrase signifies the idea encapsulated above: that what appears to be a special case is in fact sufficiently general.

## The unit sphere and a horizontal plane

\begin{questions}

\question Draw a big, beautiful picture of the unit sphere sliced by a horizontal plane. Remember the drawing tips:
\begin{compactitem}
    \item Get the angles right. Make the parallelogram of your plane parallel to the $x$- and $y$-axes.
    \item Draw a \emph{big} picture. Big pictures have more room for labels.
    \item The $(x,y)$-plane itself does slice the sphere, but it's very special. Pick a more generic slicing plane.
    \item Don't be afraid to erase.
\end{compactitem}

\newpage

\question Now, we're still solving two equations. What are they? (Hint: one from the sphere and one from the slicing plane.)

\dwrspace{1}

\question Explain why this situation is algebraically preferable to the brute-force solution outlined above.

\dwrspace{1}

\question Write down two equations that all the points in the intersection of the sphere and the plane satisfy. (Hint: one equation involves $x$ and $y$ only, and the other involves $z$ only.) These aren't the same as the equations above, but they aren't too terribly different either.

\dwrspace{1}

\question Identify the flaw in this attempted use of WLOG.

\begin{quote}
    {\em Consider the cylinder of radius 1 with axis the $x$-axis and the $(y,z)$-plane. The intersection is evidently the circle of radius 1, centered at $(0,0,0)$, and contained in the $(y,z)$-plane. 

    Therefore, we can say that WLOG, whenever a cylinder is cut by a plane, the intersection is a circle. This is because we can always "rotate and zoom" to place the cylinder so that its radius is 1 and its axis is the $x$-axis.}
\end{quote}

\dwrspace{1}

\end{questions}
