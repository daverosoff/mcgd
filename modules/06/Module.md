% More on cross product; classification of planes
% Math 251 Calculus 3
% September 18, 2013 <!-- day 07 -->

$\newcommand{\R}{\mathbf{R}}$
$\newcommand{\vv}{\vec{v}}$
$\newcommand{\nn}{\vec{n}}$

### Classifying planes with cross products

As you prepare to read section 12.5 on the classification of planes, the discussion here may provide some useful context. 

### Dimension and direction

What is it that we mean when we say a space is $n$-dimensional?

Usually, we mean that it is possible to give addresses of points in the space using $n$ coordinates---that is to say, $n$ numbers. Cartesian coordinates in $\R^1$ and $\R^2$ are one example, but so are latitude and longitude on the globe of the earth.

Since each point on the earth is uniquely[^unique] addressable with these two coordinates, we say the Earth's surface is $2$-dimensional. It is embedded in the larger $3$-dimensional space of the cosmos, but that does not affect the surface's intrinsic dimension.

Let us now confine our discussion to the Euclidean space $\R^3$. Imagine a vector $\vv_1$ in standard position. There is a unique line containing this vector (the line through the origin and the vector's head). 

This line is a $1$-dimensional space, but our choice of $\vv_1$ endows it with new structure: effectively, we can make this space into a new *axis*. What I mean is that we can coordinatize the line containing $\vv_1$ by using the length and direction of $\vv_1$ to measure distances along it.

For example, the origin receives the coordinate $0$. The head of $\vv_1$ itself (in standard position) receives the coordinate $1$. A point twice as far from the origin as $\vv_1$ receives the coordinate $2$. Points measured along our line in the direction opposite to $\vv_1$ receive negative coordinates.

> We thus express each point on the line as a multiple of $\vv_1$ in a unique way, as $a_1 \vv_1$ for some real number $a_1$. The points on the line correspond exactly to the real numbers $a_1$.

Make sure you understand that $a_1$ is not measuring distance from the origin in the usual way, but with a yardstick of length $\lVert \vv_1 \rVert$.

It is quite clear that most points in $\R^3$ cannot be addressed in this way, because they do not lie on the line spanned by $\vv_1$.

### General 2-dimensional coordinates

Now let us add a second vector $\vv_2$, not a multiple of $\vv_1$. This condition ensures that, in standard position, there is a *unique* plane containing both $\vv_1$ and $\vv_2$. (If $\vv_2$ were a multiple of $\vv_1$, there would be many planes containing both, not just one.) Our choice of these two vectors coordinatizes the plane containing them.

Even if $\vv_1$ and $\vv_2$ are not perpendicular, or have different lengths, they still "address" every point in the plane they span. This means that each point in the plane they span is reachable by traveling some (possibly negative) distance in the $\vv_1$-direction and then traveling again in the $\vv_2$-direction. The canonical example of this is the $(x,y)$-plane itself with the usual coordinates, coordinatized by the standard unit vectors

$$ \hat{\imath} = \langle 1, 0, 0 \rangle, \quad \hat{\jmath} = \langle 0, 1, 0 \rangle. $$

It is possible, and perhaps not hard, to prove that such an address is unique. We omit the proof here and assume the result.

> We thus express each point on the plane containing $\vv_1$ and $\vv_2$ in a unique way, as a linear combination $a_1 \vv_1 + a_2 \vv_2$, where $a_1$ and $a_2$ may be any real numbers. The points on the plane correspond exactly to the pairs $(a_1, a_2)$.

Again, we are using the $a_i$ to measure distance in units of $\lVert \vv_i \rVert$. 

Returning to the general situation of $\vv_1$ and $\vv_2$, it is still clear that most points of $\R^3$ are not addressable by a pair as above, because they do not lie on the plane spanned by $\vv_1$ and $\vv_2$.

### The complementary dimension

Any third vector $\vv_3$ not on the plane (that is, not of the form $a_1 \vv_1 + a_2 \vv_2$) allows us to construct addresses for all of the points in $\R^3$, a fact we do not prove here. 

The meaning of this fact is that if $\vv_3$ is chosen so as not to be contained in the plane spanned by $\vv_1$ and $\vv_2$, then every point in $\R^3$ is addressable as a linear combination

$$ a_1 \vv_1 + a_2 \vv_2 + a_3 \vv_3 $$

for appropriate choices of the $a_i$.

The cross product provides a natural choice of $\vv_3$, namely $\vv_3 = \vv_1 \times \vv_2$. This is what is meant by the "complementarity" property of the cross product, described in the initial [cross product presentation][d05].

### Normal vectors to planes

We have seen that the choice of two vectors lying in a plane through the origin naturally determines a third, complementary vector, their cross product. 

Interestingly, if we restrict our attention to planes *passing through the origin*, a vector also determines a plane, in the following way. Let $\nn$ be any vector, again in standard position. Let us examine the set of vectors

$$ \{ \vv \in \R^3: \vv \cdot \nn = 0 \}. $$

This is the set of vectors orthogonal to $\nn$. A moment's reflection will convince you that this set is a plane. That is, if the vectors orthogonal to $\nn$ are all placed in standard position, their heads are arranged in a geometric plane. Moreover, the entire plane is *normal* (perpendicular) to $\nn$. 

This geometric arrangement---a plane and a vector normal to it---will allow us to classify all planes in $\R^3$, similarly to how the lines in $\R^2$ are classified by their slopes and intercepts.

[^unique]: With the exceptions of the two poles, which do not possess a well-defined longitude. 

[d05]: ../../decks/05/Deck.pdf
