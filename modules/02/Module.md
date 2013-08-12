% Module 02:
  Contour maps, some common surfaces, and displacement vectors
% Dr. Dave Rosoff
% Fall 2013

Welcome to Module 2. You should have been able to make some progress on WeBWorK assignment 1. In this module, we'll discuss the remaining topics you'll need to understand to complete it.

* contour maps and cross-sectional functions
* spheres, cylinders, and cones
* intersections of some common surfaces
* displacement vectors as differences of positions
* detect whether two vectors in $\mathbf{R}^3$ are parallel
* graphical depiction of linear relations among vectors

### Contour maps

The easiest way to visualize 2-variable functions is with *contour maps*. These are easily created in both R and Sage. The following R code  initializes a random 2-variable function and includes its contour plot into the document.

**FIND SOME CODE**

Sage lacks a facility for machine-generated random functions (as far as I am aware), but it can plot a function the user provides quite readily.

**SAGE CODE GOES HERE**

In a contour plot, the points in the plane represent different values of the inputs. Here is a contour plot from the shopping example in [Module 01][Module 01].

**R CODE FOR LINEAR CONTOUR PLOT**

The points of the plane are grouped into different colors. The colors represent the different output values that are possible with our function. When two points share a color, they give the same value of the function, and when two points have different colors, they give different values of the function. 

For each fixed hue, the points that are colored with it form a curve (or several curves) in the plane, called a *contour*. Mathematicians also call them "level curves".

**ANOTHER FIGURE**

**Exercise**. What do you notice about the contours in the contour plot of the shopping function?

### Cross-sectional functions

If you read along a horizontal or vertical line in the plane, you can get an idea of how changes in either of the inputs affect the output. **MORE IS NEEDED**

### Surfaces and graphs

Returning to the abstract geometry of $\mathbf{R}^3$, it is time to consider the meaning of equations among the three variables $x$, $y$, and $z$.

It is important to remember that most equations are neither "true" or "false" without further context. For example, the equation
$$ a^2 + b^2 = c^2 $$
might be either, for certain $a$, $b$, or $c$, either true or false. Because of this, it lacks a truth-value without such context. The equations we graph in calculus are similar. It is just this vagueness that allows us to use equations to describe curves in the plane.

> An equation involving $x$ and $y$, but no other variables, describes a 
> curve in the plane. A point of the plane is said to lie on this curve when 
> its coordinates, when substituted in the curve's equation, yield truth. In 
> this case, the pair $(x,y)$ is said to *be a solution* of the equation.

### Displacement numbers

When we are considering motion that is confined to a single line, one number 
suffices to describe a movement---that is, after we have agreed on the units 
of the length dimension and the origin of the line. Once these are settled, 
every pair of positions gives rise to a number: the distance between them. 
Conventionally, the distance between two positions on a line is always a 
nonnegative number, but it is convenient to use our notion of negativity as 
well. This leads to the notion of displacement, which we might also call 
"directed distance" or "signed distance". The idea is that we no longer 
regard the two positions as equivalent. Instead, one is the "initial" and one 
is the "final" position. We agree, once and for all, that displacements are 
calculated by subtracting the initial position from the final one:

    displacement = pos_final - pos_initial

With these ideas firmly in place, it is not too hard to generalize them to the case of motion in a plane. We will assume that the origin and suitable coordinate axes and units are already agreed upon.

Notice that displacement numbers don't depend on a particular starting (or ending) position. The $3$ you get by moving from $2$ to $5$ is identical to the one you get moving from $-166$ to $-163$.

But what distinguishes the *position* $3$ from the *displacement* $3$?

### Displacement vectors

The framework of vectors arises from the desire to be able to compute displacements by subtracting points in the plane, just like in the one-dimensional case described above. 

In the one-dimensional case, positions and displacements seem like the same kind of object. Only context allows us to really determine whether a particular $3$ is a position or a displacement between positions. Keep this in mind as you continue reading.

Here is a plot of a few paths connecting the points $(1,1)$ and $(2,3)$ in the plane.

```{r}
plot(c(1,1),c(3,3),xlab="x",ylab="y")
arrows(1,1,2,2, angle=45, col="red")
arrows(2,2,2,3, angle=45, col="red")
arrows(1,1,2,3, angle=45,col="blue")
```

A moment's reflection shows that, no matter how you walk from $(1,1)$ to $(2,3)$, your net change in the $x$-direction is $1$ and likewise for $y$. If we start out at $(2,3)$ and end at $(1,1)$, these changes become negative.

The idea of a displacement *vector* is to bind these two separate numbers together into one mathematical object. We say the displacement from initial position $(1,1)$ to final position $(2,3)$ is $\langle 1,1 \rangle$.

<!--document ends; links past here-->

[Module 01]: ../01/Module.html
