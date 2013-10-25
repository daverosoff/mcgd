% Module 10:
  Polar coordinates
% Math 251 Calculus 3
% October 29, 2013







\newcommand{\angl}[1]{\langle #1 \rangle}
\newcommand{\norm}[1]{\lVert #1 \rVert}
\newcommand{\Angl}[1]{\left\langle #1 \right\rangle}
\newcommand{\Norm}[1]{\left\lVert #1 \right\rVert}

### What are coordinates?

Many students are surprised to learn that coordinates are a relatively recent mathematical innovation, even though we associate them with the name of Descartes&nbsp;(1596--1650 CE). Their use was unknown, for example, to Archimedes&nbsp;(287--212 BCE), though he was able to establish the familiar formula $V = 4\pi r^3/3$ for the volume of a sphere in terms of its radius using techniques that prefigure calculus but anticipate it by more than 18 centuries.

We moderns, however, are so thoroughly trained in the use of cartesian[^honor] coordinates that it is difficult to imagine a plane without imagining it being pocked with an origin, ruled with axes and gridlines. But there is nothing *canonical*, nothing *god-given*, about this way of using numbers to locate or index points in the geometric plane. We can use the familiar cartesian system to construct new coordinate systems, on oblong or curved "grids".

[^honor]: Some say the Fields Medal and the Abel Prize are the highest honors awarded by mathematicians, but the true immortals are those whose names have become *uncapitalized* adjectives (there are a handful of other examples: e.g., noetherian rings, gaussian curves, abelian varieties, euclidean domains, archimedean fields). I suppose highest of all comes having only part of one's name made an uncapitalized adjective.

You will have noticed that I postponed our discussion of this topic to after half the semester has passed, when if we followed Rogawski's Table of Contents we would have discussed polar coordinates in Week 2. This is because I think they are very well motivated by questions that arise in the study of double integrals.

Do we really have to limit ourselves to slicing parallel to the $x$- and $y$-axes? It's very unnatural for circular regions, say. The expressions you found for the limits are unpleasant.

What if we could slice in a circular way, and then total up all the circular contributions?

### The idea of polar coordinates

In ordinary cartesian coordinates, we label points with a pair of signed distances: the signed distances to the $y$- and $x$-axes become the $x$- and $y$-coordinates (respectively; make sure you have read this sentence carefully). The curves $x = a$ and $y = b$ for various $a$ and $b$ form the cartesian grid. Polar coordinates are easier to understand if you make an analogy between them and the familiar setup.

We begin with a plane that includes the origin, the unit circle, and the positive $x$-axis. Instead of labeling a point $P$ relative to the $x$- and $y$-axes, we label it by its *radial coordinate* or *radius* $r$. This is the (unsigned) distance from $P$ to the origin. Already we have some analogous coordinate curves: for $a \geq 0$, the curve $r = a$ is a circle centered at the origin of radius $a$. Each point in the plane lies on exactly one such circle.

The second coordinate is not a distance, but an angle: the *angular coordinate* or *azimuth* $\theta$. It is defined in the following way: draw the ray from the origin to $P$, and the positive $x$-axis. The azimuth of $P$ is the angle formed by these rays in the counterclockwise direction. Thus we may always choose $\theta$ to lie in the interval $[0, 2\pi)$. If we do so, then points in the upper half-plane have $0 < \theta < \pi$, while points in the lower half-plane have $\pi < \theta < 2\pi$.

The coordinate curves $\theta = \theta_0$ are *rays* emanating from the origin: $\theta = 0$ is the positive $x$-axis, $\theta = \pi/4$ is the part of the line $y = x$ lying in the first quadrant, and so on.

#### Indeterminacy of angle

Of course, the radian measure of an angle is not unique. We may add any integer multiple of $2\pi$ without changing the angle. This has a perhaps unfortunate consequence: points in the polar coordinate system have more than one coordinate address.

$$ \cdots = (2, -11\pi/3) = (2, -5\pi/3) = (2, \pi/3) = (2, 7\pi/3) = (2, 13\pi/3) =  \cdots $$

We are so accustomed to this *indeterminacy* that it seems OK to let it into our new coordinate world. Thus each point of the plane, with one exception, has infinitely many coordinate representations, one for each multiple of $2\pi$.

The exception is the origin, for which $r = 0$. Any angle at all will do for a polar representation of this point, which causes some difficulty later.

#### The polar phase space

If we draw a new *cartesian* plane, with axes labeled $r$ for the horizontal and $\theta$ for the vertical, we may plot the region $\{ (r, \theta) : r \geq 0, 0 \leq \theta < 2 \pi \}$. It is a strip of height $2\pi$, extending infinitely to the right, whose upper edge is deleted. This strip is called a fundamental region for the polar coordinate system; I also call it a phase space. You might think of the polar coordinate system as a mapping or transformation between this region and the whole plane. 

The mapping referred to above takes the vertical segments in phase space (the segments $r = r_0$) to the coordinate circles $r = r_0$ in polar coordinates. It takes the horizontal rays $\theta = \theta_0$ in phase space to the coordinate rays $\theta = \theta_0$ in polar coordinates.

We'll have more to say about this later.

### Interlude: polar coordinates and double integrals

You can already see the utility of these ideas. What we would like to be able to do is transform the whole idea of the double integral into these new coordinates, so that instead of integrating over an area element $dA = dx \; dy$ or $dy \; dx$, we can use one related[^jacobian] to $dr \; d\theta$. Then suitable limits of integration for the unit disk might be $r = 0$ to $r = 1$ (the contribution of a typical ray from the origin to the edge of the disk) and $\theta = 0$ to $\theta = 2\pi$ (totaling up the contributions of all such rays).

[^jacobian]: It's not exactly $dr \; d\theta$; we'll see why very soon. In brief, it is because the length of the circular arc subtended by a fixed angle $\theta$ depends linearly (and is not constant) on the radius of the circle.
