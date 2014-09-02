% Cross products; classifying planes
% Math 275 Calculus 3
% September 20, 2013 <!-- day 08 -->

# Another take on computation

## Distributing and the cyclic relation

Remember: $\ii \times \jj = \kk$, $\jj \times \kk = \ii$, and $\kk \times \ii = \jj$. Plus, scalars operate as expected. So,

\begin{align*}
    (\ii + \jj + \kk) &\times (2 \ii + 3 \jj + 4 \kk) \\
    &= \ii \times (2 \ii + 3 \jj + 4 \kk) + \jj \times (2 \ii + 3 \jj + 4 \kk) \\
    &\qquad + \kk \times (2 \ii + 3 \jj + 4 \kk) \\
    &= 2 \ii \times \ii + 3 \ii \times \jj + 4 \ii \times \kk \\
    &+ 2 \jj \times \ii + 3 \jj \times \jj + 4 \jj \times \kk \\
    &+ 2 \kk \times \ii + 3 \kk \times \jj + 4 \kk \times \kk \\
    &= (3-2)(\ii \times \jj) + (2-4)(\kk \times \ii) + (4-3)(\jj \times \kk) \\
    &= \kk - 2 \jj + \ii = \angl{1, -2, 1}.
\end{align*}

## Warm-up, II

Find the cross products:

> - $\angl{2, 1, 3} \times \angl{4, 2, 1}$
> - $\angl{-1, 0, 1} \times \angl{2, -1, 5}$

## Some setup for classifying planes

Recall:

- Each ordered pair of points in $\R^3$ determines a vector. How is this vector determined? How do you get its entries?
    - Subtract the tail from the head.

New fact/definition:

- If $\vv$ is a vector in $\R^3$ and $\mathbf{P}$ is a plane, we say that $\vv$ is \emph{normal} to $\mathbf{P}$ if, for each vector $\ww$ contained in $\mathbf{P}$, we have $\vv \dot \ww  = 0$.

- A vector is \emph{contained} in $\mathbf{P}$ if both its head and its tail (and hence, all the point on the vector's "body") are in $\mathbf{P}$.

## Warm-up for Workshop 03

- Choose a pair of orthogonal vectors and draw them in standard position. Your vectors must not be multiples of $\ii$ or $\jj$, but I would advise you to choose vectors with $z$-entry $0$---then, you can get away with drawing $\R^{3}$ as a plane viewed along the positive $z$-axis. \emph{Hint.} Use the dot product to make sure your vectors really are perpendicular.

- Because your vectors are orthogonal, there is a rectangle based on these vectors (draw two more sides). Use the cross product--sine formula to verify that the area of the rectangle is equal to the length of the cross product of your vectors.

## General parallelogram

- Start a new picture, and draw a new pair of vectors in standard position. Make sure that the angle between them is \emph{not} a multiple of $\pi/2 = \tau/4$. Use the dot product--cosine formula to do this.

- Having ensured your angle is not a multiple of $\pi/2 = \tau/4$, you know that your new pair of vectors forms a nonrectangular parallelogram. Use trigonometry to express the area of this parallelogram in terms of the vector lengths.

- Check that the length of the cross product yields the area of the parallelogram in this case also.

## Wrap-up

Together with the orientation and complementarity properties, the cross product--sine formula \emph{uniquely determines the cross product}. This means that, for any pair of vectors $\vv$ and $\ww$, there is only one vector $\uu$ satifying all three. No matter how it is obtained, it must be equal to the cross product $\vv \times \ww$.

> - Use the cross product--sine formula and the orientation property of the cross product to \emph{derive} the rule $\jj \times \ii = -\kk$.