% Module 10:
  Polar coordinates
% Math 251 Calculus 3
% October 29, 2013







\newcommand{\angl}[1]{\langle #1 \rangle}
\newcommand{\norm}[1]{\lVert #1 \rVert}
\newcommand{\abs}[1]{\lvert #1 \rvert}
\newcommand{\Angl}[1]{\left\langle #1 \right\rangle}
\newcommand{\Norm}[1]{\left\lVert #1 \right\rVert}
\newcommand{\Abs}[1]{\left\lvert #1 \right\rvert}

> Note to the reader: in this module, I have adopted a new and experimental convention for angles in radian measure. Namely, we let $\tau = 2\pi$ and express most angles as multiples of $\tau$ rather than $\pi$. Thus, for example, a right angle is $\tau/4$. Think of $\tau$ as "one turn" (it's Greek "t", after all) and you're good.

### What are coordinates?

Many people  are surprised to learn that coordinates are a relatively recent mathematical innovation, even though we associate them with the name of Descartes&nbsp;(1596--1650 CE). Their use was unknown, for example, to Archimedes&nbsp;(287--212 BCE), though he was able to establish the familiar formula $V = 2\tau r^3/3$ for the volume of a sphere in terms of its radius. Archimedes did this and much more using techniques that prefigure calculus but anticipate it by more than 18 centuries, and altogether without the aid of algebra or coordinate geometry (only the "synthetic" geometry of Euclid).

We moderns, however, are so thoroughly trained in the use of cartesian[^honor] coordinates that it is difficult to imagine a plane without imagining it being pocked with an origin, ruled with axes and gridlines. But there is nothing *canonical*, nothing *god-given*, about this way of using numbers to locate or index points in the geometric plane. We can use the familiar cartesian system to construct new coordinate systems, on oblong or curved "grids".

[^honor]: Some say the Fields Medal and the Abel Prize are the highest honors awarded by mathematicians, but the true immortals are those whose names have become *uncapitalized* adjectives (there are a handful of other examples: e.g., noetherian rings, gaussian curves, abelian varieties, euclidean domains, archimedean fields). I suppose highest of all comes having only part of one's name made an uncapitalized adjective.

You will have noticed that I postponed our discussion of this topic to after half the semester has passed, when if we followed Rogawski's Table of Contents we would have discussed polar coordinates in Week 2. This is because I think they are very well motivated by questions that arise in the study of double integrals.

Do we really have to limit ourselves to slicing parallel to the $x$- and $y$-axes? It's very unnatural for circular regions, say. The expressions you found (in [Workshop 09][w09]) for the limits are unpleasant.

What if we could slice in a circular way, and then total up all the circular contributions? This might simplify our calculations a great deal.

Clever choices of coordinates are no stranger to students of physics. It shouldn't be surprising that choosing an appropriate coordinate *system* can also make your life better. Many physical situations have a rotational symmetry that makes polar coordinates particularly appealing. Nature is full of circles, but lines are usually made by humans.

There are many, many other systems of coordinates (see for example [this listing from Wikipedia](http://en.wikipedia.org/wiki/Category:Coordinate_systems)), but in the plane, only the polar system concerns us here. 

### The idea of polar coordinates

In ordinary cartesian coordinates, we label points with a pair of signed distances: the signed distances to the $y$- and $x$-axes become the $x$- and $y$-coordinates (respectively; make sure you have read this sentence carefully). The curves $x = a$ and $y = b$ for various $a$ and $b$ form the cartesian grid. Polar coordinates are easier to understand if you make an analogy between them and the familiar setup. 

In fact, I think you should regard these curves---the *coordinate curves*---as fundamental. The point $(a,b)$ is properly regarded as "the unique point lying in the intersection of the coordinate curves $x = a$ and $y = b$" rather than the grade-school formulation "start at the origin and move $a$ units in the $x$-direction,...".

We begin with a plane that includes the origin, the unit circle, and the positive $x$-axis. Instead of labeling a point $P$ relative to the $x$- and $y$-axes, we label it by its *radial coordinate* or *radius* $r$. This is the (unsigned) distance from $P$ to the origin. Already we have some coordinate curves analogous to the cartesian gridlines: for $r_0 \geq 0$, the curve $r = r_0$ is a circle centered at the origin of radius $r_0$. Each point in the plane lies on exactly one such circle.

The second coordinate is not a distance, but an angle: the *angular coordinate* or *azimuth* $\theta$. It is defined in the following way: draw the ray from the origin to $P$, and the positive $x$-axis. The azimuth of $P$ is the angle formed by these rays in the counterclockwise direction. Thus we may always choose $\theta$ to lie in the interval $[0, \tau)$. If we do so, then points in the upper half-plane have $0 < \theta < \tau/2$, while points in the lower half-plane have $\tau/2 < \theta < \tau$.

The coordinate curves $\theta = \theta_0$ are *rays* emanating from the origin: $\theta = 0$ is the positive $x$-axis, $\theta = \tau/8$ is the part of the line $y = x$ lying in the first quadrant, and so on.

#### Indeterminacy of azimuth

Of course, the radian measure of an angle is not unique. We may add any integer multiple of $\tau$ without changing the angle. This has a perhaps unfortunate consequence: points in the polar coordinate system have more than one coordinate address.

$$ \cdots = (2, -11\tau/6) = (2, -5\tau/6) = (2, \tau/6) = (2, 7\tau/6) = (2, 13\tau/6) =  \cdots $$

We are so accustomed to this *indeterminacy* that it seems OK to let it into our new coordinate world. Thus each point of the plane, with one exception, has infinitely many coordinate representations, one for each multiple of $\tau$.

The exception is the origin, for which $r = 0$. Any angle at all will do for a polar representation of this point, which causes some difficulty later.

> Note that this means the definition of *equality* is different from before. In the cartesian world, two points $P = (x_0,y_0)$ and $Q = (x_1,y_1)$ are equal exactly when their coordinates are equal: when $x_0 = x_1$ and $y_0 = y_1$. But because of the indeterminacy of azimuth, we can have $\theta_0 \ne \theta_1$, yet $(r_0, \theta_0)$ and $(r_0, \theta_1)$ are the same point.

#### Negative radial coordinate

Since we are unable to avoid indeterminacy of azimuth, we may as well not restrict the radius to be nonnegative either. We can make coherent sense of negative radial coordinates in a very "vectorish" way, by declaring $(-r_0, \theta_0) = (r_0, \theta_0 + \tau/2)$: go the same distance $\abs{r_0}$ along the opposite ray $\theta = \theta_0 + \tau/2$.

Note that with this convention it is possible that $r_0 \ne r_1$ and $\theta_0 \ne \theta_1$, yet $(r_0, \theta_0)$ and $(r_1, \theta_1)$ are the same point.

#### The polar phase space

If we draw a new *cartesian* plane, with axes labeled $r$ for the horizontal and $\theta$ for the vertical, we may plot the region $\{ (r, \theta) : r \geq 0, 0 \leq \theta < \tau \}$. It is a strip of height $\tau$, extending infinitely to the right, whose upper edge is deleted. This strip is called a fundamental region for the polar coordinate system; I also call it a phase space. You might think of the polar coordinate system as a mapping or transformation between this region and the whole plane. 

The mapping referred to above takes the vertical segments in phase space (the segments $r = r_0$) to the coordinate circles $r = r_0$ in polar coordinates. It takes the horizontal rays $\theta = \theta_0$ in phase space to the coordinate rays $\theta = \theta_0$ in polar coordinates.

We'll have more to say about this later.

### Interlude: polar coordinates and double integrals

You can already see the utility of these ideas. What we would like to be able to do is transform the whole idea of the double integral into these new coordinates, so that instead of integrating over an area element $dA = dx \; dy$ or $dy \; dx$, we can use one related[^jacobian] to $dr \; d\theta$. Then suitable limits of integration for the unit disk might be $r = 0$ to $r = 1$ (the contribution of a typical ray from the origin to the edge of the disk) and $\theta = 0$ to $\theta = \tau$ (totaling up the contributions of all such rays).

No variables in the limits? This is a real improvement over the technology of [Worksheet 09][w09].

[^jacobian]: It's not exactly $dr \; d\theta$; we'll see why very soon. In brief, this happens because the length of the circular arc subtended by a fixed angle $\theta$ depends linearly on the radius of the circle, and therefore is not constant.

### The polar coordinate transformation

If you know a point's polar coordinates, it is easy to get its cartesian coordinates, via the following formulas:

$$ x = r \cos{\theta}, \quad y = r \sin{\theta} $$

These equations together are called the *polar coordinate transformation*. Notice how they are arranged: with $x$ and $y$ alone on the left-hand sides. Use them when you have $r$ and $\theta$ and you want $x$ and $y$.

To go the other way is uglier. It is pretty easy to find $r$, since $r$ is the distance from your point $(x,y)$ to the origin. Let's write it this way, and keep the possibility that $r < 0$:

$$ r^2 = x^2 + y^2 $$

The angle formula is written $\tan{\theta} = y/x$. **Resist the urge to rewrite this using the arctangent function.** In practice we do use the arctangent to find $\theta$, but if $\theta$ is in the second or third quadrants, arctangent will give us the partner angle instead.

### Functions in polar coordinates

Most of the time, it makes more sense to think of $\theta$ as the independent variable and write $r = f(\theta)$. We have seen that constant functions are circles centered at the origin.

> *Example.* What is the shape of the function $r = a \cos\theta$? If we have the bright idea to multiply both sides by $r$, we find
> $$ r^2 = a r \cos\theta, $$
> which according to the polar coordinate transformation has the cartesian representation $x^2 + y^2 = ax$. Completing the square in $x$ then yields $x^2 - ax + (a^2/4) + y^2 = a^2/4$, or equivalently
> $$ (x - a/2)^2 + y^2 = (a/2)^2. $$ 
> Evidently, $r = a \cos\theta$ is a circle of radius $a/2$ centered at $(a/2, 0)$.

In general most polar functions are not recognizable, and those that are require clever tricks like in the example. I encourage you to play with the graphing calculator utility [Desmos](http://www.desmos.com/calculator), which understands that equations involving $r$ and $\theta$ are to be plotted in the polar sense. 

[w09]: ../../workshops/09/Workshop.pdf
