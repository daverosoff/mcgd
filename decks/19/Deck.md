% Flux, conservativity, and the idea of Green's theorem
% Math 251 Calculus 3
% November 22, 2013




# Flux, conservativity, and the idea of Green's theorem

## Warm-up

(problem 2 from WeBWorK 13)

## Integration along vs. across

The vector line integral $\int_{\mathcal{C}} \vec{F} \cdot d\vec{s}$ is the total contribution of the vector field at each point along the curve. The phrase "along the curve" is very important to the interpretation, because we use the tangent vectors to the curve to define the integral. The particulars have been stated here for curves in $\R^2$; see the text for the complete details.

We can also define a vector line integral using *normal vectors to the curve* if we confine ourselves to $\R^2$. Thus we're somehow measuring the contribution of the vector field *across* the curve instead of *along* it.

The resulting integral computes what is called the "flux" of the vector field across the curve.

## What is flux?

Loosely speaking it's the "amount" of something flowing across the curve. Its value depends on the strength of the field, the length of the curve, and how they are oriented relative to one another.

A flux integral is similar to the vector line integrals considered previously, which we might call "flow" integrals in comparison. The difference is that we use a unit *normal* vector where in the flow integral we used a unit *tangent* vector.

\begin{equation*}
    \text{Flux across $\mathcal{C}$} = \int_{\mathcal{C}} (\vec{F} \cdot \vec{e}_n) \; ds = \int_{\mathcal{C}} \vec{F}(\vec{r}(t)) \cdot \vec{n}(t) \; dt,
\end{equation*}

where $\vec{n}(t) = \angl{-y'(t), x'(t)}$ and $\vec{e}_n = \vec{n}/\norm{\vec{n}}$.

## Normal vectors and orientation

The unit tangent vector to a parametrized curve is *canonical*, meaning there is only one sensible choice. This is the normalized derivative $\vec{r}'(t)/\norm{\vec{r}'(t)}$. However, there are two good choices for the unit normal vector at each point. The choice $\vec{n} = \angl{-y(t), x(t)}$ is not canonical, but a convention.

> If $\mathcal{C}$ is a closed curve parametrized by $\vec{r}(t)$ in such a way that the "inside" of $\mathcal{C}$ is always to the left, then $\vec{n}$ points outward from the region enclosed by $\mathcal{C}$.

We leave this topic and the idea of flux for now.

## Conservative fields

One source of many examples of vector fields are the *gradient* vector fields. Choose your favorite smooth function $V \colon \R^2 \to \R$ (or $\R^3 \to \R$). Then $\nabla V$ is a vector field on $\R^2$ (or $\R^3$).

Most vector fields can be seen not to be gradients. In fact, gradients have a very special property. Let us call such vector fields "conservative". If the vector field $\vec{F}$ is conservative, then there is some function $V$ such that $\nabla V = \vec{F}$. Such a function is called a *potential function* for $\vec{F}$.

## Integration of conservative fields

If $\vec{F}$ admits a potential function, then line integrals of $\vec{F}$ are easy to compute.

> *Theorem* (Fundamental theorem for conservative vector fields). Assume that $\vec{F} = \nabla V$ throughout some domain $\mathcal{D}$. Then for any points $P$ and $Q$ in $\mathcal{D}$ and any path $\vec{r}(t)$ from $P$ to $Q$, $$\int_{\vec{r}} \vec{F} \cdot d\vec{s} = V(Q) - V(P).$$

In particular, the value of the line integral depends only on the pair $(P,Q)$ and not on the path connecting them. Fields with this property are called "path-independent". (Easy proof on p. 963.)

## Circulation of conservative fields

Recall that for a closed curve $\vec{r}(t)$ (that is, a loop; a curve for which $\vec{r}(a) = \vec{r}(b)$), we define the *circulation* of $\vec{F}$ around $\vec{r}$ to be the line integral of $\vec{F}$ around the curve. 

Evidently, path-independent fields have zero circulation around any closed curve, since we may choose $P = Q$ for such a curve and then

$$ \oint_{\mathcal{C}} \vec{F} \cdot d\vec{s} = V(Q) - V(Q) = 0. $$

## Only conservative fields are path-independent

Suppose the vector field $F$ is known to be path-independent. Must it admit a potential function? The answer, perhaps surprisingly, is yes, at least if the domain of $F$ is *connected*. Connected sets are "all one piece": for us, if every pair of points of a set may be joined by a curve that doesn't leave the set, then the set is connected.

The proof proceeds by choosing a point $P_0$ and constructing a potential function for $F$ by integration. We define $V(P)$ by the formula

$$ V(P) = V(x,y) = \int_{\mathcal{C}} \vec{F} \cdot d\vec{s}, $$

where $\mathcal{C}$ is any path from $P_0$ to $P$. Since the field $F$ is assumed to be path-independent, this definition makes sense.

## Proof that $\nabla V = \vec{F}$

The proof proceeds by recognizing the difference quotient
$$ \frac{V(x+h,y) - V(x,y)}{h} $$ as the average value of $F_1(x,y)$ over the interval $[x,x+h]$. Since this average converges to $F_1(x,y)$ as $h \to 0$, so does the difference quotient. Hence $\partial V/\partial x = F_1$. 

The proof for $F_2$ is similar.

## Conservation of energy

In physics, the principle of conservation of energy says that the sum of kinetic and potential energy of an isolated system does not change. That is, energy neither enters nor leaves the system---it is *conserved*. 

It is shown in the textbook that if $F$ is a force field that is conservative in the sense we've been discussing, then particles moving under its influence obey the principle of conservation of energy.

## Testing for independence

How could we ever recognize a field as path-independent? It's impossible to test every path by integrating. 

Observe that if $F$ is conservative, it satisfies the following cross-partials equation:

$$ \frac{\partial F_1}{\partial y} = \frac{\partial F_2}{\partial x}. $$

There is set of similar equations for 3-dimensional conservative vector fields.

$$ \frac{\partial F_2}{\partial z} = \frac{\partial F_3}{\partial y}, \frac{\partial F_3}{\partial x} = \frac{\partial F_1}{\partial z}, \frac{\partial F_1}{\partial y} = \frac{\partial F_2}{\partial x} $$

## A topological criterion

Remarkably, it is possible to find vector fields that satisfy the cross-partials equation that are not path-independent (and hence, not conservative). For example, the vortex vector field
$$ \angl{ \frac{-y}{\sqrt{x^2 + y^2}}, \frac{x}{\sqrt{x^2 + y^2}} } $$
on $\R^2$ has this property. 

But notice that this vector field doesn't extend to any subset of the plane that is free of *holes*. 

A domain without holes is called *simply connected*. If a vector field on a simply connected domain satisfies the cross-partials equations, then it is conservative.
