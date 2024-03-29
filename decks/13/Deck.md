% Double integrals
% Math 275 Multivariable Calculus
% October 28, 2013




# Double integrals over nonrectangular regions

## Review and setup

Let $f(x,y)$ be continuous on the rectangle $R = (a,b) \times (c,d)$. Then the limit 

$$ \lim_{n \to \infty} \sum_{i=1}^n f(x_i, y_i) \Delta A_i, $$

representing $n$ box-volumes with bases $\Delta A_i$ and heights $f(x_i,y_i)$, exists regardless of how the rectangle is subdivided. The value of this limit is, by definition,

$$ \iint_R f(x,y) \; dA. $$

## Computing via iterated integrals

We find the value of the double integral $\iint_R f(x,y) \; dA$ using Fubini's theorem.

$$ \iint_R f(x,y) \; dA = \int_c^d \int_a^b f(x,y) \; dx \; dy = \int_a^b \int_c^d f(x,y) \; dy \; dx $$

> - Observe that the order of integration is different: $dx \; dy$ is not the same as $dy \; dx$. The limits change accordingly.

Depending on the function, one or the other order of integration might be easier to compute, but that is the only novelty.

## The secret to thinking about integrals

- Do you picture the graph of every 1-variable function you integrate?
- Only enough to check that it is continuous on the domain of integration. Algebra suffices for this.
- It's the same for several variables. What we need to be careful about picturing is the domain of integration itself.

## Decoding the iterated integral

In the order $dy \; dx$, we integrate first in the $y$-direction---that is, along a vertical segment in the $(x,y)$-plane. The partial integral

$$ A(x) = \int_{y = c}^d f(x,y) \; dy $$

is still a function of $x$, hence the notation. What is the significance of some value $A(x_0)$? It measures the "contribution" of the vertical segment $x=x_0$ to the integral.

Thus, integrating once more over $x$, $\int_{x=a}^b A(x) \; dx$ gives the total "contribution" of all the vertical segments between $x=a$ and $x=b$.

## Two orders

Thus, $\iint_R f(x,y) \; dA = \int_{x=a}^b A(x) \; dx = \int_{x=a}^b \int_{y=c}^d f(x,y) \; dy \; dx$.

Writing the "area element" $dA$ as $dy \; dx$ this way corresponds to this choice of "slicing" the domain: first, find the contribution of a vertical segment, then integrate up the contributions of such segments.

If we write $dA = dx \; dy$ instead, we are integrating first over $x$---to find the contribution of a horizontal segment---and then over $y$, to total up the contributions of such segments.

## Integrating over a triangle

Let $R$ now be the triangular region in the plane bounded by the coordinate axes and the line $x + 2y = 2$.




\begin{figure}[ht]
    \begin{minipage}[t]{0.45\linewidth}
        \includegraphics[height=0.6\textheight,width=\textwidth]{figure/triangle1.pdf}
    \end{minipage} \hspace{0.5cm}
    \begin{minipage}[b]{0.4\linewidth}
        The first choice is \emph{order of integration}. If we add up the contributions of segments like the blue one, which order of integration is this? Which order adds up the red segments?
    \end{minipage}
\end{figure}

## The limits are different, depending on the segment

Let's add up the red segments. Since the red segments are indexed by their $y$-coordinates, this means the corresponding order is $dx \; dy$. In order to find the contribution of a typical segment, we need to know the limits of the inner integral: at which $x$-coordinate does the typical segment begin, and at which does it end?

\includegraphics[height=0.6\textheight,width=0.55\linewidth]{figure/triangle1.pdf}

## Writing down the inner limits

Evidently, all the red segments start at $x = 0$. But they end at a point on the line $x + 2y = 2$. Which point? Well, if the height is $y$, then $x$ must be $2 - 2y$. So, the contribution of the segment at height $y$ is

$$ A(y) = \int_{x=0}^{2-2y} f(x,y) \; dx. $$

Observe that while the upper limit is now a variable expression, *it only involves variables that have not yet been integrated over*.

## The outer limits

The last phrase is typical and can help you avoid mistakes if you remember it like a slogan or mantra: *limits only involve variables that have not yet been integrated over*. This means, the last (outermost) integral has ordinary constant limits. 

Those limits tell where the red segments of interest live: in this case, between $y = 0$ and $y = 1$.

Our iterated integral looks like this:

$$ \int_0^1 \int_0^{2-2y} f(x,y) \; dx \; dy. $$

## Work together

Decide with the people around you what the limits should be in the other order for the same triangle.

$$ \int_?^? \int_?^? f(x,y) \; dy \; dx. $$

- Answer:
- $\displaystyle \int_0^2  \int_0^{1-x/2} f(x,y) \; dy \; dx$

## Workshop 09, coming attractions

In [Workshop 09][w09], you will practice drawing domains, choosing integration orders, and finding appropriate limits.

Remember: the inner limits are the ends of a typical segment. 

Workshop 09 is due Wednesday, October 30. WeBWorK 7 on optimization is due Friday, November 1.

For tomorrow, read [Module 10][m10] and skim section 15.3.

[w09]: ../../workshops/09/Workshop.pdf
[m10]: ../../modules/10/Module.html
