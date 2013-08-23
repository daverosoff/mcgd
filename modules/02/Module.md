% Module 02:
  Contour maps and some common quadric surfaces
% Dr. Dave Rosoff
% Fall 2013

Welcome to Module 2. You should have been able to make some progress on 
WeBWorK assignment 1. In this module, we'll discuss the remaining topics 
you'll need to understand to complete it.

### Contour maps

The easiest way to visualize 2-variable functions is with *contour maps*. 
These are easily created in both R and Sage. The following R code 
initializes a random 2-variable function and includes its contour plot into 
the document.

**FIND SOME CODE**

Sage lacks a facility for machine-generated random functions (as far as I am 
aware), but it can plot a function the user provides quite readily.

**SAGE CODE GOES HERE**

In a contour plot, the points in the plane represent different values of the 
inputs. Here is a contour plot from the shopping example in 
[Module 01][Module 01].

**R CODE FOR LINEAR CONTOUR PLOT**

The points of the plane are grouped into different colors. The colors 
represent the different output values that are possible with our function. 
When two points share a color, they give the same value of the function, and 
when two points have different colors, they give different values of the 
function. 

For each fixed hue, the points that are colored with it form a curve (or 
several curves) in the plane, called a *contour*. Mathematicians also call 
them "level curves".

**ANOTHER FIGURE**

**Exercise**. What do you notice about the contours in the contour plot of \
the shopping function?

### Cross-sectional functions

If you read along a horizontal or vertical line in the plane, you can get an 
idea of how changes in either of the inputs affect the output. **MORE IS 
NEEDED**

### Surfaces and graphs

Returning to the abstract geometry of $\mathbf{R}^3$, it is time to consider 
the meaning of equations among the three variables $x$, $y$, and $z$.

It is important to remember that most equations are neither "true" or 
"false" without further context. For example, the equation
$$ a^2 + b^2 = c^2 $$
might be either, for certain $a$, $b$, or $c$, either true or false. Because 
of this, it lacks a truth-value without such context. The equations we graph 
in calculus are similar. It is just this vagueness that allows us to use 
equations to describe curves in the plane.

> An equation involving $x$ and $y$, but no other variables, describes a curve in the plane $\mathbf{R}^2$. A point of the plane is said to lie on this curve when its coordinates, when substituted in the curve's equation, yield truth. In this case, the pair $(x,y)$ is said to *be a solution* of the equation.

Just as above, an equation involving $x$, $y$, and $z$, but no other variables, describes a surface in $\mathbf{R}^3$. A particular point lies on the surface precisely when its coordinates are a solution of the equation.

In [Workshop 00][Workshop 00], you developed formulas giving the distance between any pair of points in $\mathbf{R}^3$ as well as the distance from any point to a coordinate plane or axis. These formulas suffice to construct all spheres, circular cylinders, and circular cones.

> **Exercise**. Remind yourself of formulas for the distance from an arbitrary point $(x,y,z)$ to the coordinate planes and axes. Can you think of a mnemonic trick to remember which is which?

Recall also from [Workshop 00][Workshop 00] that it is often very convenient to deal with *squares* of distances, rather than distances themselves.

The simplest curved surface to describe is a sphere. A sphere is easily described in terms of distance:

> A *sphere* is a closed surface whose interior has a special point, called the *center*, such that all the segments connecting the center with points of the sphere are equal in length. This length is called the *radius* of the sphere.

The definition implies that, for any point $(a,b,c)$ and any radius $r \geq 0$, there is a unique sphere with center $(a,b,c)$ and radius[^degen] $r$. If $(x,y,z)$ is a point on the sphere, the distance from it to the center must be $r$, and this observation yields the classical equation describing the coordinates of points on the sphere.

$$ (x-a)^2 + (y-b)^2 + (z-c)^2 = r^2 $$

As before, working with squares of distances minimizes how much we must put up with unpleasant square roots.

The other surfaces which concern us at present---the cones and the circular cylinders---are also obtained by the equating of various distances.

> A *circular cylinder* is a surface whose interior has a special line, called the *axis* of the cylinder, such that all points on the surface have the same distance to the axis. To nobody's surprise, this length is called the *radius* of the cylinder.

The best, most special lines in the plane are, of course, the coordinate axes. 

> Use the definition above and the formulas from [Workshop 00][Workshop 00] to write down an equation for the coordinates of points on a cylinder of radius $r$ whose axis is the $z$-axis.

The last class of surfaces we will discuss here is the circular cones[^right].

> A *circular cone with aperture $\pi/2 = \tau/4$* is a surface characterized by a line, called the *axis* of the cone, and a plane perpendicular to the axis. Points on the cone are equidistant from the axis and the plane.

As with cylinders, it is possible to find equations for arbitrary cones: those whose axes and perpendicular planes are completely random. But in general, it is not so useful to do so. It would be smarter to choose coordinates in a clever way, so that it is not even necessary.

> Use the definition above and the formulas from [Workshop 00][Workshop 00] to write down an equation for the coordinates of points on a circular cone.

### Slices of curved surfaces

Let us analyze the possible slices of a sphere. Here, we must make a choice: are we going to immediately slap coordinates on everything in sight, choosing centers and radii and so on, ending up with a huge pile of equations to solve? This is what we use to call the brute-force approach. It will succeed, with patience and stamina. But it is usually not illuminating. 

It is always best to use symmetry to our advantage and try to choose coordinates that will best allow us to exploit it. A sphere is a highly symmetric shape, and the center is the most symmetric point: it looks the same from each point of the sphere. Hence we should center our sphere at the origin. By adjusting the scale of the axes, we can also assume that it has radius 1. This sphere is called the "unit" sphere.

> It would be even better to just picture the sphere in a blank space, empty of axes and scale, but perhaps this is too disorienting for a first pass.

Now, let us imagine all the planes that are parallel to the $(y,z)$-plane as our knives, and see which slices of the sphere we get. Most such planes miss the sphere entirely, so one class of slice is "empty".

> *Exercise*. Give equations of all the planes parallel to the $(y,z)$-plane that miss the unit sphere.

What if the sphere and the plane do, in fact, meet? You can get a good idea of what the slices are by thinking "perturbatively". Imagine a plane that misses the sphere, and slide it closer and closer. At some time, they will touch for the first time. The slice at that instant is a point.

> *Exercise*. How many planes parallel to the $(y,z)$-plane meet the sphere at one point? Give equations for all of them.

Now push the plane *a little further* into the sphere. What is the intersection? You might not have a clear mental picture of it, or maybe you just have a guess you're not convinced is correct. In Workshop 01, we will use algebra (greatly simplified by our diligent attention to symmetry) to illuminate the situation.




<!--document ends; links past here-->

[Module 01]: ../01/Module.html
[Workshop 00]: ../00/Workshop.html 

[^degen]: We allow the case $r = 0$, even though the sphere degenerates to a single point. Such degenerate cases are harmless, and often useful.

[^right]: You may be listening, especially if you have taken certain standardized mathematics tests, for the phrases "right circular cylinder" and "right circular cone". The word "perpendicular" in the definition of the circular cone hints where it has gone; in the definition of the cylinder its absence is a different mystery.
