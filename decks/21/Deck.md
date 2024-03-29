% From Green to Stokes
% Math 275 Multivariable Calculus
% December 2, 2013




# From Green to Stokes

## Recall some definitions

The vector field $\vec{F}$ is *conservative* if it is the gradient of a function; that is, if there is a $V$ with $\nabla V = \vec{F}$. 
\begin{equation*}
    \oint_{\mathcal{C}} \nabla V \cdot d\vec{s} = V(Q) - V(P)
\end{equation*}
where $P$ and $Q$ are the endpoints of $\mathcal{C}$.

$\vec{F}$ is *path-independent* if, for every pair of points $P$ and $Q$, the value of the line integral
\begin{equation*}
    \int_{\mathcal{C}} \vec{F} \cdot d\vec{s}
\end{equation*}
is independent of the path $\mathcal{C}$ connecting $P$ with $Q$.

## All conservative fields are path-independent

We saw before that all conservative fields are path-independent $V(Q) - V(Q) = 0$.

What about the converse statement? If a field is path-independent, must it admit a potential function?

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

## Nonzero circulation detects nonconservativity

Last time we noticed that out of all the contour integrals we looked at (line integrals around closed loops), there were a couple that had nonzero values. 

These nonzero line integrals are witnesses to the nonconservativity of the corresponding vector fields.

If a field is conservative, all of its contour integrals are zero; hence, if *even one contour integral* of some vector field is nonzero, that field admits no potential function. 

All the fields we saw with this property seemed to have some kind of rotational character: swirling down a drain, or something similar.

## Curls make you stronger

Let's focus on the 2-dimensional case: the scalar quantity 
$$ \frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y} $$
is sometimes called the *scalar curl* of the vector field $\vec{F}$. It's a number, or if you like, a one-dimensional vector.

The scalar curl measures what is called the *vorticity* of $\vec{F}$. If it is zero at some point, $P$, say, then a little paddle wheel dropped into $\vec{F}$ at $P$ might move with the flow, but it won't spin.

If it is positive, the paddle wheel will spin counterclockwise, and vice versa. 

Thus our two criteria for path-independence are really related.

## Nonzero curls violate conservation of energy

* If $\vec{F}$ has a nonzero curl, we can cheat the laws of physics and get a free ride. Suppose the vector field is generally rotating counterclockwise; then by going with the flow, you can travel back to your starting point doing negative work.
* All follow-up questions about conservation of energy referred to the Physics faculty

## A topological criterion

Remarkably, it is possible to find vector fields that satisfy the cross-partials equation that are not path-independent (and hence, not conservative). For example, the vortex vector field
$$ \angl{ \frac{-y}{x^2 + y^2}, \frac{x}{x^2 + y^2} } $$
on $\R^2$ has this property. Yet integrating it around the unit circle yields a nonzero value (see p. 971 "Conceptual Insight").

But notice that this vector field doesn't extend to any subset of the plane that is free of *holes* (because of the denominators).

A domain without holes is called *simply connected*. If a vector field on a simply connected domain satisfies the cross-partials equations, then it is conservative.

## Summary

If $\vec{F}$ is a smooth vector field on a *connected* domain, then $\vec{F}$ is path-independent if and only if $\vec{F}$ is conservative.

If in addition the domain of $\vec{F}$ is *simply connected*, then these are also equivalent to the cross-partials property for $\vec{F}$; or, in other words, to the vanishing of the scalar curl of $\vec{F}$.

## Where does the scalar curl come from?

The formula for the scalar curl can be obtained as the *circulation per unit area*. Its value at $P$ is the value of the expression
$$ \lim_{\Delta A \to 0} \frac{1}{\Delta A} \oint \vec{F} \cdot d\vec{s} $$
for every vector field $\vec{F}$, where we take our integrals around little disks of area $\Delta A$ with center $P$.

If the scalar curl is really the circulation per unit area, shouldn't we be able to integrate it over the *interior* of a region and obtain the circulation?

## Green's theorem

Let $\mathcal{D}$ be a region of the plane whose edge $\partial D$ is a simple closed curve, oriented counterclockwise. Then

$$ \oint_{\mathcal{\partial D}} \vec{F} \cdot d\vec{s} = \iint_{\mathcal{D}} \left( \frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y} \right) \; dA.$$

In our alternate notation for line integrals, we obtain a more classical expression of the result.

$$ \oint_{\mathcal{\partial D}} F_1 \; dx + F_2 \; dy = \iint_{\mathcal{D}} \left( \frac{\partial F_2}{\partial x} - \frac{\partial F_1}{\partial y} \right) \; dA.$$
