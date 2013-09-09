% Squares of distances and 2-variable functions
% Math 352 Calculus 3
% September 9, 2013 <!-- day 02 -->

# Squares of distances

## Distances in the plane

- Find the distance between $(x_1, y_1), (x_2, y_2)$ in the plane:

$$ d((x_1, y_1), (x_2, y_2)) = \sqrt{(y_2 - y_1)^2 + (x_2 - x_1)^2} $$

Works because $(x_1, y_1), (x_2, y_2)$ are the endpoints of the hypotenuse of a right triangle. 

## Cleaning up the square root

- Often better to work with squares of distances

- This is because there are no square roots involved

$$ d^2 = (y_2 - y_1)^2 + (x_2 - x_1)^2 $$

- Because two positive numbers are equal if and only if their squares are equal. 


# Distance from a point to an axis

## Coordinate planes and axes

- Planes $x = 0$, $y = 0$, $z = 0$ are called the *coordinate* planes: the $(y,z)$-plane, $(x,z)$-plane, and $(x,y)$-plane, respectively

- Intersect any pair of coordinate planes, we get a line. 

Intersection of the $(x,z)$-plane with the $(y,z)$-plane is a line whose points evidently all satisfy $y = x = 0$. This line is called the $z$-axis.

## Workshop 00: Distances to axes in the plane

Measuring  distance from a point to an *arbitrary* line sucks, but if the line is a coordinate axis, it's easy.

- What's the distance from $(-4,3)$ to the $x$-axis?
- The $y$-axis?

## Distances in space

If coordinates of a point in $\mathbf{R}^2$ measure distances to axes, what do coordinates of $(2,1,3)$ measure?

> The distance from the complementary plane.

## Distances from axes

It's fine that coordinates tell us distances from the coordinate planes, but what about from the axes? 

> Axes are a more familiar way of picturing points' "addresses"

Imagine looking straight down at the $(x,y)$-plane, so that the positive $z$-axis goes right between your eyes.

## Right between the eyes

This looks just like the ordinary plane! Here is the most important metamathematical technique there is. You have used it hundreds of times already.

> Replace your problem by an easier problem that has the same solution.

That's what we're doing when we visualize the ordinary plane as a cross-section of space this way.

## The distance to the $z$-axis

Now what's the distance to the $z$-axis? Think in terms of the cross-sectional picture.

> Notice how the formula has no $z$ in it.

## 2-variable functions 

A 2-variable function is a rule $f$ that associates a number, called $f(x,y)$, to each point $(x,y)$ in the ordinary plane. 

    cost = trip_cost + s*(shirt_price) + t*(trou_price)
    bill = 10 + 4/100*(pages)*(copies) + 75/100*(copies)

$$ f(x,y) = x + yx^4 $$

## Contour plots

One way to visualize 2-variable functions is with contour plots. 

- Each $(x,y)$ gets a value $f(x,y)$
- Connect points whose values are the same
- The "contours" are the connecting lines

> In regions where contours are far apart, the values change slowly. If contours are closely spaces, values are changing rapidly.

