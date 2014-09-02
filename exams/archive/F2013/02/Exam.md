% Exam 1
% Math 275 Calculus 3
% November 12, 2013

\begin{questions}

\question[16] Please find the indicated partial derivatives.

    \begin{parts}
        \part $f(x,y) = x^4 y^3$; find $f_x$, $f_y$.
        \part $z = \dfrac{x^2}{1+y^2}$; find $\partial z / \partial x$.
        \part $u = 3x^2 y - 6xy^4$; find $u_{xx}$ and $u_{yy}$.
        \part $x = r \cos \theta$, where $r = t^2$, $\theta = t^3$; find $dx/dt$.
    \end{parts}

\dwrspace{1}

\question[12] Give a good definition for what it means for the point~$(a,b)$ to be a local maximum of the function~$f(x,y)$. It doesn't have to be exactly the same as the one in the text, but it should have the same extent. This means that everything that counts as a local maximum according to the text's definition should also count according to yours and vice versa.

\dwrspace{1}

\question[8] Consider the double integral
    \[
        \int_0^4 \int_{\sqrt{y}}^2 \sqrt{x^3 + 1} \; dx \; dy.
    \]
Sketch the domain of integration. Then express the integral above in the opposite order of integration. \textbf{DO NOT ATTEMPT TO EVALUATE THE INTEGRAL.}

\dwrspace{1}

\question In this problem, consider the function~$g(x,y) = 7 - 2xy^2$ and the point~$P = (1,-1)$. 

    \begin{parts}
        \part[12] Give a formula for the linearization~$L(x,y)$ of~$g$ at~$P$. Describe the geometric relationship between the graphs of the two functions $L(x,y)$ and $g(x,y)$ (in complete sentences).

        \part[4] Use the linearization to estimate~$g(0.9, -1.1)$.
    \end{parts}

\dwrspace{1}

\question Recall that a subset of $\R^2$ is said to be \emph{closed} if it contains all of its edge points, and \emph{bounded} if it is contained in all sufficiently large disks centered at $(0,0)$.
    \begin{parts}
        \part[4] Give an example of a subset $X$ of $\R^2$ that is closed, but not bounded.
        \part[4] Give an example of a subset $X$ of $\R^2$ that is bounded, but not closed.
    \end{parts}

\dwrspace{1}

\newpage

\question[10] Select the condition(s) that guarantee the existence of a plane tangent to the graph of $f(x,y)$ at the point $(a,b)$.
\begin{checkboxes}
    \choice $f(x,y)$ is differentiable.
    \choice $f(x,y)$ is locally linear.
    \choice The partial derivatives $f_x$ and $f_y$ exist at $(a,b)$.
    \choice The partial derivatives $f_x$ and $f_y$ are continuous at $(a,b)$.
    \choice The mixed partial derivatives $f_{xy}$ and $f_{yx}$ are equal throughout some neighborhood of $(a,b)$.
\end{checkboxes}

\dwrspace{1}

\question[12] Find the maximum and minimum of $f(x,y) = xy$ subject to the constraint $x^2 + 4y^2 = 16$. Explain why both must exist.

\dwrspace{1}

\question Let $D$ be the region between the circles of radius $1/2$ and $1$ centered at $(0,0)$, and let $f(x,y)$ be defined on $D$ by the formula
\begin{equation*}
    f(x,y) = \frac{x+y}{x^2+y^2}
\end{equation*}

\begin{parts}
    \part[4] Express the region $D$ in polar coordinates (using inequalities).
    \part[8] Set up an integral (entirely in polar coordinates) of the function $f$ over the region $D$. Make sure to include all limits on your integral and specify the order of integration.
    \part[6] Evaluate the integral you wrote down above.
\end{parts}

\dwrspace{1}

\end{questions}