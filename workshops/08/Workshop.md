% Workshop 08: Introducing the double integral
% Math 275 Multivariable Calculus
% October 18, 2013

# Workshop 08: Introducing the double integral

While the double integral is defined as the limit of a Riemann sum, just like ordinary definite integrals are, they are usually computed using Fubini's Theorem, which tells us how to write them as \emph{iterated integrals}. These are expressions of the form
$$ \int_a^b \left( \int_c^d f(x,y) \; dy \right) \; dx. $$

Usually, we omit the parentheses with this understood grouping of operations. Notice that the innermost differential $dy$ is matched with the innermost integral. A notation that is less ambiguous would be
$$ \int_{x=a}^b \left( \int_{y=c}^d f(x,y) \; dy \right) \; dx. $$

## Evaluating iterated integrals

Since $f(x,y)$ in the above expressions is a function of $x$ and $y$, if we perform a definite integral of this function over $x$, we get a function of $y$ alone. It's analogous to partial differentiation: if you're integrating $dx$, $y$ is like a constant.

\begin{questions}

\question Evaluate the iterated integral. \emph{Answer}: $40(e^4 - e^2)$

$\displaystyle\int_{x=2}^4 \left( \displaystyle\int_{y=1}^9 ye^x \; dy \right) \; dx = $

\dwrspace{1}

\newpage

\question Evaluate the iterated integral. \emph{Answer}: 84

$\displaystyle\int_{2}^{6} \displaystyle\int_{1}^{4} x^2 \; dx \; dy = $

\dwrspace{1}



\question Evaluate the iterated integral. \emph{Answer}: 4/3

$\displaystyle\int_{-1}^{1} \displaystyle\int_0^{\pi} x^2 \sin{y} \; dy \; dx = $

\dwrspace{1}

\question Evaluate the iterated integral. 

$\displaystyle\int_{-1}^{1} \displaystyle\int_0^{\pi} x^2 \sin{y} \; dx \; dy = $

\dwrspace{1}

\end{questions}
