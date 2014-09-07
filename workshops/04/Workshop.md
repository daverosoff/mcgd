% Workshop 04: Limits and continuity for several variables
% Math 275 Multivariable Calculus
% September 20, 2013

\newtheorem{fact}{Fact}

# Workshop 04: Limits and continuity

The existence of limits is more complicated for functions of several variables. In this workshop, you will investigate some techniques for *ruling out* their existence. As in the one-variable case, establishing the value of a particular limit can be tricky in general and there is no one procedure for doing it.

## Ruling out: by restriction

\begin{questions}

\question Let $f_1(x,y) = x^2/(x^2 + y^2)$. Find the limit of $f_1(x,y)$ as $(x,y) \to (0,0)$ along the $x$-axis. In other words, find the (ordinary, 1-dimensional) limit of a suitable "slice function" obtained from $f_1$.

\dwrspace{2}

\question Find the limit of $f_1(x,y)$ as $(x,y) \to (0,0)$ as $(x,y) \to (0,0)$ along the $y$-axis, again using a slice function.

\dwrspace{2}

\question Does $\lim\limits_{(x,y) \to (0,0)} f_1 (x,y)$ exist? Why do you think so?

\dwrspace{1}

\newpage

\question Now let $f_2(x,y) = xy/(x^2 + y^2)$. Show that the limit of $f_2(x,y)$ as $(x,y) \to (0,0)$ along either coordinate axis is 0.

\dwrspace{2}

\question Find the limit of $f_2(x,y)$  as $(x,y) \to (0,0)$ along the line $y = x$.

\dwrspace{2}

\question Does $\lim\limits_{(x,y) \to (0,0)} f_2 (x,y)$ exist? Why do you think so?

\dwrspace{1}

\question Finally, let $f_3(x,y) = x^2 y/(x^4 + y^2)$. Show that the limit as $(x,y) \to (0,0)$ along every line through the origin is $0$.

\dwrspace{2}

\question Show that, nevertheless, $\lim\limits_{(x,y) \to (0,0)} f_3 (x,y)$ does not exist by letting $(x,y)$ approach the origin along a suitable curve.

\dwrspace{1}

\end{questions}