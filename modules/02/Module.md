% Module 02:
  Contour maps, some common surfaces, and displacement vectors
% Dr. Dave Rosoff
% Fall 2013

Welcome to Module 2. You should have been able to make some progress on 
WeBWorK assignment 1. In this module, we'll discuss the remaining topics 
you'll need to understand to complete it.

* contour maps and cross-sectional functions
* spheres, cylinders, and cones
* intersections of some common surfaces
* displacement vectors as differences of positions
* detect whether two vectors in $\mathbf{R}^3$ are parallel
* graphical depiction of linear relations among vectors

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

In Workshop 01, you developed formulas giving the distance between any pair of points in $\mathbf{R}^3$ as well as the distance from any point to a coordinate plane or axis. These formulas suffice to construct all spheres, circular cylinders, and circular cones.

**MORE ON THE QUADRICS PROMISED**

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

With these ideas firmly in place, it is not too hard to generalize them to 
the case of motion in a plane. We will assume that the origin and suitable 
coordinate axes and units are already agreed upon.

Notice that displacement numbers don't depend on a particular starting (or 
ending) position. The $3$ you get by moving from $2$ to $5$ is identical to 
the one you get moving from $-166$ to $-163$.

But what distinguishes the *position* $3$ from the *displacement* $3$?

### Displacement vectors

The framework of vectors arises from the desire to be able to compute 
displacements by subtracting points in the plane, just like in the one-
dimensional case described above. 

In the one-dimensional case, positions and displacements seem like the same 
kind of object. Only context allows us to really determine whether a 
particular $3$ is a position or a displacement between positions. Keep this 
in mind as you continue reading.

Here is a plot of a few paths connecting the points $(1,1)$ and $(2,3)$ in 
the plane.

```{r}
plot(c(1,1),c(3,3),xlab="x",ylab="y")
arrows(1,1,2,2, angle=45, col="red")
arrows(2,2,2,3, angle=45, col="red")
arrows(1,1,2,3, angle=45,col="blue")
```

A moment's reflection shows that, no matter how you walk from $(1,1)$ to $(2,3)$, your net change in the $x$-direction is $1$. In the $y$-direction, it is evidently $2$. If we start out at $(2,3)$ and end at $(1,1)$, these changes become negative.

The idea of a displacement *vector* is to bind these two separate numbers, which we might call $\Delta x$ and $\Delta y$, together into one mathematical object. We say the displacement from initial position $(1,1)$ to final position $(2,3)$ is $\langle 1, 2 \rangle$.

> Just like a point in the plane, a displacement vector is specified as a pair of numbers. We distinguish between the two by using round brackets for points $(3,-2)$ and angle brackets for vectors $\langle 3, -2 \rangle$. If we don't want to refer to the coordinates separately, we give the vector a letter name and use an arrow decoration, like $\vec{v}$.

For any particular initial and final point, there's only one displacement between them. But there are many paths between them, which we can visualize as chains of vectors. For example, in the figure above, the points $(1,1)$ and $(2,3)$ are linked via the intermediate point $(2,2)$.

> What are the displacements incurred with initial point $(1,1)$ and final point $(2,2)$? With initial point $(2,2)$ and final point $(2,3)$?

Notice that these displacements add appropriately! Their "sum", adding coordinate-wise, is the overall displacement incurred in moving from $(1,1)$ to $(2,3)$. For this reason, we define the *sum* of two vectors to be the vector whose entries are the sums of the corresponding entries:

$$ \langle x_1, y_1 \rangle + \langle x_2, y_2 \rangle =
     \langle x_1 + x_2, y_1 + y_2 \rangle $$

Observe that the *zero vector* $\langle 0, 0 \rangle$ behaves appropriately under this conception. If adding vectors corresponds to accumulating displacements, adding \langle 0, 0 \rangle should be an operation with no effect---and indeed, it is.

What about subtracting vectors? Well, if we make sense of the *negative* of a vector we will be free to regard $\vec{v} - \vec{w}$ as an abbreviation for $\vec{v} + (-\vec{w})$. A negative displacement has a clear physical meaning: the same distance, but the opposite direction. Therefore negation and subtraction are accomplished coordinate-wise, just like addition.

### Parallel vectors: a simple test

Much of the time we are concerned just with the *direction* of a motion, and not as much with its distance ("magnitude"). We'll need a test to see whether two vectors, described in coordinates, point in the same direction in the plane. This is the subject of [Workshop 02][Workshop 02]. For now, let us discuss the subtleties of the concept of "parallel" in our new context of vectors.

Since lines in the plane are not directed, we don't need a word to describe this situation in ordinary geometry:

```{r}
plot(c(1,1),c(3,3),xlab="x",ylab="y")
arrows(1,1,2,2, angle=45, col="red")
arrows(3,3,2,2, angle=45, col="blue")
```

Are the vectors parallel, or not? Reasonable people can disagree, and in fact there is not universal agreement on the terminology. We will establish the convention that vectors as pictured above are indeed parallel. Some authors reserve the term "anti-parallel" for this situation.

### Linear relations among vectors

Suppose that $\vec{u}$, $\vec{v}$, $\vec{w}$, and $\vec{z}$ are vectors in the plane. What kind of equations involving them might we consider? We haven't defined most familiar algebraic operations, like multiplication, logarithms, exponents... seems like all we can build are linear equations, like this one:

$$ 2 \vec{u} + 5 \vec{v} = -3 \vec{w} + \vec{z} $$

Regarded as an equation of displacements, it is easy to interpret: the equation states that the overall displacement incurred by following $\vec{u}$ twice and $\vec{v}$ five times is equal to that incurred by following $\vec{w}$ backwards three times and $\vec{z}$ once (forward).

Any such linear equation can be converted, by the standard rules of algebra, into an equation with the zero vector on the right-hand side. Such an equation states that a particular combination of displacements cancels out exactly, that the overall $x$- and $y$-displacements are both $0$.

<!--document ends; links past here-->

[Module 01]: ../01/Module.html
