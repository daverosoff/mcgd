% Cross product, II
% Math 251 Calculus 3
% September 20, 2013 <!-- day 08 -->

# Another take on computation

## Distributing and the cyclic relation

## Warm-up, II

Compute some cross prods

## Some setup for classifying planes

Recall:

- Each ordered pair of points in $\R^3$ determines a vector. How is this vector determined? How do you get its entries?
    - Subtract the tail from the head.

New fact/definition:

- If $\vv$ is a vector in $\R^3$ and $\mathcal{P}$ is a plane, we say that $\vv$ is \emph{normal} to $\mathcal{P}$ if, for each vector $\ww$ contained in $\mathcal{P}$, we have $\vv \dot \ww  = 0$.

- A vector is \emph{contained} in $\mathcal{P}$ if both its head and its tail (and hence, all the point on the vector's "body") are in $\mathcal{P}$.

## Warm-up for Workshop 03

- Choose a pair of orthogonal vectors and draw them in standard position. Your vectors must not be multiples of $\ii$ or $\jj$, but I would advise you to choose vectors with $z$-entry $0$---then, you can get away with drawing $\R^{3}$ as a plane viewed along the positive $z$-axis. \emph{Hint.} Use the dot product to make sure your vectors really are perpendicular.

- Because your vectors are orthogonal, there is a rectangle based on these vectors (draw two more sides). Use the cross product--sine formula to verify that the area of the rectangle is equal to the length of the cross product of your vectors.

- Start a new picture, and draw a new pair of vectors in standard position. Make sure that the angle between them is \emph{not} a multiple of $\pi/2 = \tau/4$. Use the dot product--cosine formula to do this.

- Having ensured your angle is not a multiple of $\pi/2 = \tau/4$, you know that your new pair of vectors forms a nonrectangular parallelogram. Use trigonometry to express the area of this parallelogram in terms of the vector lengths.

- Check that the length of the cross product yields the area of the parallelogram in this case also.

- Use the cross product--sine formula and the orientation property of the cross product to show that $\jj \times \ii = -\kk$.