% Workshop 07: Modeling with higher derivatives
% Math 275 Multivariable Calculus
% October 9, 2013

# Workshop 07: Modeling with higher derivatives

This workshop is a little different from the previous ones: it is more applied, and concerns mathematical *modeling*. 

You saw in [the presentation][d08] how there are four basic curve shapes for differentiable functions of a single variable. A similar phenomenon holds for functions of two variables, but there are too many "basic surface shapes" to draw and memorize. Here is the general fact:

> Every smooth surface can be pasted together from the graphs of quadric surfaces.

Quadric surfaces are graphs of functions of the form

$$z = A + Bx + Cy + Dx^2 + Exy + Fy^2.$$

The quadric modeling process for some interesting quantity $z$ would work as follows: 

1. Identify the variables $x$ and $y$ on which $z$ depends.
2. Use heuristic reasoning to decide which of $A$, $B$, ..., $F$ are nonzero.
    a. Usually, $A$, $B$, and $C$ will all be nonzero; $B$ and $C$ are almost always nonzero.
3. Use statistical techniques (nonlinear least-squares regression) to "fit the data to the model", that is, to choose the best possible coefficients for the existing data.

In this workshop we focus on step 2. 

## Scenario 1: An afternoon in the sun

The number $z$ of students relaxing on the lawn on a sunny day depends on (at least) two variables: the temperature $x$ outside, and the time $y$ that has elapsed since the last warm, sunny day. We will try to model $z$ as a quadric. In this first scenario, we step through the reasoning for each coefficient. 

Our analysis is purely qualitative in the sense that we are only trying to decide whether each coefficient is zero, negative, or positive. So, it's not really necessary to worry about units. A particular coefficient is either zero, positive, or negative, whether we measure temperature in kelvin or degrees, or whether we measure time in hours, days, or weeks.

\newpage

1. **The constant term $A$**. The constant term is present if there is a nonzero "baseline", that is, if there is a contribution to $z$ that doesn't depend on the present values of $x$ and $y$. Do you think $A$ should be present in our model for $z$? Why or why not?

\dwrspace{1}

2. **The linear coefficients $B$ and $C$**. We assume these are present (with nonzero values, that is). It might happen that one of them is 0, but empirical experience shows this just doesn't happen very often. (There is a geometric reason why not---see Dr. Rosoff for more.)

3. **The "pure" quadratic coefficients $D$ and $F$**. To decide whether these should be present, we focus on the slice curves and think about their shapes. 

Let us first think about the coefficient $D$ of $x^2$. Fix $y$ and think of the corresponding slice curve. *Does the slice curve have a local max or min?*

If it does, then $D$ should be present with a nonzero value (linear functions have no optima). Do you think $D$ should be zero, negative, or positive in our model? Why? What about $F$?

\dwrspace{1}

\newpage

4. **The "mixed" coefficient $E$**. To decide whether this coefficient appears with a nonzero value, we think about the mixed partial derivative of $z$. This one is a little trickier.

When will $\partial^2 z / \partial x \partial y$ be nonzero? This happens when *the change in $z$ corresponding to an incremental change in $y$ depends on the present value of $x$*. To see that this is true, observe that if said change in $z$ were instead *independent* of the present value of $x$, we would have
$$ \frac{\partial}{\partial x} \left( \frac{\partial z}{\partial y} \right) = 0. $$

But $Exy$ is the only term that can contribute to this mixed partial. It appears or doesn't, together with the mixed partial. (Why is this true?)

Do you think $E$ should be zero, negative, or positive in our model? Why or why not?

\dwrspace{1}

5. What is the form of your model? (That is, what is the right-hand side of your equation describing $z$ in terms of $x$ and $y$?)

If we had some empirical data, we could determine the statistical "best possible" values of the nonzero coefficients to fit it.

\dwrspace{1}

\newpage

## Scenario 2: Gettin' juiced

The demand $z$ for orange juice depends on (at least) two variables: the price $x$ of orange juice and the price $y$ of apple juice, a competing good. (Again, don't worry about units here; the coefficients would have to come with some suitable dimensions to make the units of $z$ work out properly. Such considerations are beyond the scope of this workshop.) Carry out the steps as above, and give a quadric model for $z$ in terms of $x$ and $y$. 

\dwrspace{1}

## Scenario 3: The *Einstellung* effect

The [Einstellung effect](http://en.wikipedia.org/wiki/Einstellung_effect) is a well-documented behavioral phenomenon, aptly described as "the negative effect of previous experience when solving new problems".

From the abstract to a recent submission\footnote{Sheridan H, Reingold EM (2013) The Mechanisms and Boundary Conditions of the Einstellung Effect in Chess: Evidence from Eye Movements. PLoS ONE 8(10): e75796. doi:10.1371/journal.pone.0075796} to the free and open journal PLoS ONE: 

> In a wide range of problem-solving settings, the presence of a familiar
> solution can block the discovery of better solutions (i.e., the Einstellung
> effect). To investigate this effect, we monitored the eye movements of
> expert and novice chess players while they solved chess problems that
> contained a familiar move (i.e., the Einstellung move), as well as an
> optimal move that was located in a different region of the board.

The fraction of time a player's eyes linger on the familiar Einstellung move depends on the skill of the player and on the quality of the Einstellung move. Assume that move quality is a continuum, with "optimal" at one end and "catastrophic blunder" at the other.

What do you think a model for this phenomenon would look like?

\dwrspace{1}

[d08]: ../../decks/08/Deck.pdf
