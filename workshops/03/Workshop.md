% Workshop 03: Cross products and planes
% Math 275 Calculus 3
% September 20, 2013

# Workshop 03

> \emph{Note: this version has been updated from the one handed out in class.
> In particular, item 2 in section 1.1 is omitted. You should skip
> item 2 in section 1.1 if you have the paper copy from class.}

In this workshop, you will accomplish the algebraic description of all the
planes of $\R^3$ by using the cross product and the rest of the vector
geometry we have developed so far.

\fullwidth{\subsection{Planes and normal vectors}}

We think of planes as being made up of \emph{points}, but in order to get a
classification of planes, it is easier to think in terms of vectors. Like
lines, we will use equations to classify planes, but while there are analogous
forms to the slope-intercept equation $y = mx + b$, we make use instead of the
analog of the more general linear equation $ax + by = c$.

The advantage of this form is that every line admits an equation (vertical lines
have no slope-intercept equation). A minor disadvantage is that such equations
are not unique: if a line satisfies the equation $ax + by = c$, it also
satisfies an equation $\lambda ax + \lambda by = \lambda c$ for each nonzero
$\lambda$.

\begin{questions}

\question Let's start with a plane $z = c$. Choose any two points in this plane
other than $(0,0,c)$, and write $\vv$ for the vector connecting these two
points. Thus the vector $\vv$ lies entirely in the plane. Check that $\vv \cdot
\langle 0, 0, 1 \rangle = 0$.

\fullwidth{\subsection{Attitude adjustment}

Imagine a generic plane through the origin---here, "generic" means only that it
is not any of the coordinate planes. So it is tilted with respect to the axes.
Planes through the origin are harder to draw, so hold off on the picture for a
bit.}

\question Explain why, if $P = (x_0, y_0, z_0)$ is a point on this plane, the
\emph{vector} $\angl{x_0, y_0, z_0}$ is emph{contained} in the plane.
Your explanation should consist of one or more complete and grammatically
standard sentences.

\question Add a detail to your mental picture of this tilted plane: a vector,
normal to the plane, in standard position. Since the plane passes through the
origin, putting the normal vector in standard position makes the vector stick
straight out from the plane. Say this normal vector is $\langle a, b, c
\rangle$.

\question  Without choosing specific values for anything, find the numeric value
of 
\begin{equation*}
    \langle x_0, y_0, z_0 \rangle \cdot \langle a, b, c \rangle.
\end{equation*}

\question Expand the dot product on the left-hand side to get a single equation
for the plane that involves no vector quantities.

\fullwidth{\subsection{The Classification of Planes}

It is a fact of classical geometry that any three points not all on the same
line \emph{determine} a unique plane; that is to say, only one plane contains
all three points. Let $P = (2, 0, 1)$, $Q = (1, 1, 0)$, and $R = (0, 0, 3)$, and
call the plane that contains them $\mathbf{P}$. You can draw pictures to
accompany this work if you want to.}

\question Find two vectors contained in $\mathbf{P}$ that contains $P$, $Q$,
and $R$, and call them $\vv$ and $\ww$.

\question Use the cross product to get a vector normal to $\mathbf{P}$. Call
this vector $\nn = \langle a, b, c \rangle$.

\question Suppose $(x, y, z)$ is a point in $\mathbf{P}$. Use it to construct
another vector contained $\mathbf{P}$. What is the dot product of this vector
with $\nn$?

\question Write down an equation satisfied by all the points of $\mathbf{P}$
that involves no vector quantities.

\end{questions}