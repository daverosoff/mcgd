% Module 02:
  Contour maps, some common surfaces, and displacement vectors
% Dr. Dave Rosoff
% Fall 2013

Welcome to Module 2. You should have been able to make some progress on WeBWorK assignment 1. In this module, we'll discuss the remaining topics you'll need to understand to complete it.

* contour maps and cross-sectional functions
* spheres, cylinders, and cones
* intersections of some common surfaces
* detect whether two vectors in $\mathbf{R}^3$ are parallel
* displacement vectors as differences of positions
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

If you read along a horizontal or vertical line in the plane, you can get an idea of how changes in either of the inputs affect the output.

[Module 01]: ../01/Module.html