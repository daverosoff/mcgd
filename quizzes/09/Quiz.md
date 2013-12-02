% Quiz 09 (Group quiz: Green's theorem)
% Math 251 Calculus 3
% December 2, 2013 

\noindent
This quiz is a little different from our previous ones; work together in groups to solve the problems. You'll get more practice in line integrals, solidify ideas about parametrization, and apply Green's theorem. Appoint a scribe for your group and do as much as you can \textbf{\textsc{on your own paper}}.

Recall that Green's theorem applies to vector fields integrated along simple closed plane curves. A curve is simple if it doesn't intersect itself (except possibly at the endpoints) and closed if it is a continuous loop in the plane. The assertion of Green's theorem in this case is
\begin{equation} \label{eq:green} 
    \oint_{\mathcal{\partial \mathcal{D}}} P \; dx + Q \; dy = \int \!\!\!\!\!\! \int_{\mathcal{D}} \left( \frac{\partial Q}{\partial x} - \frac{\partial P}{\partial y} \right) \; dA.
\end{equation}
Here $\mathcal{D}$ is the region "enclosed" by the curve $\partial \mathcal{D}$ and we assume that $\partial \mathcal{D}$ is traversed so that $\mathcal{D}$ is always to the left. Also, $P \; dx + Q \; dy$ is synonymous with $\angl{P, Q} \cdot d\vec{s}$.

\begin{questions} 

\question Verify Green's theorem for the line integral
\begin{equation*}
    \oint_{\mathcal{C}} xy \; dx + y \; dy,
\end{equation*}
where $\mathcal{C}$ is the unit circle, oriented counterclockwise. This means: compute each side of Equation~\ref{eq:green} and check that the two values are equal.

\begin{solution}
    To evaluate the left-hand side, we use the standard parametrization of the unit circle, $\vec{r}(t) = \angl{\cos{t}, \sin{t}}$, $0 \leq t \leq 2\pi$. Then $dx = -\sin{t} \; dt$ and $dy = \cos{t} \; dt$, so that
    \begin{align*}
        \oint_{\mathcal{C}} xy \; dx + y \; dy &= \int_0^{2\pi} \left( - \cos{t} \sin^2{t} + \sin{t} \cos{t} \right) \; dt \\
        &= 0,
    \end{align*}
    by a simple $u$-substitution (let $u = \sin{t}$, $du = \cos{t} \; dt$).

    To evaluate the right-hand side of Green's theorem, we compute
    \begin{equation*}
        \frac{\partial}{\partial x} y - \frac{\partial}{\partial y} xy = -x.
    \end{equation*}
    By symmetry, we expect the integral of the function $-x$ over the unit disk centered at the origin to be zero; we confirm it by writing $-x = -r \cos {\theta}$ and converting the integral to polar coordinates.
    \begin{equation*}
        \int_0^{2\pi} \int_{0}^1 -r^2 \cos{\theta} \; dr \; d\theta = \int_{0}^{2\pi} -\frac{1}{3} \cos{\theta} \; d\theta = 0,
    \end{equation*}
    as expected. (Note that some easy integration steps are omitted with the expectation that the reader will fill in the details himself.)
\end{solution}

\question Use Green's theorem to evaluate the line integrals.
\begin{parts}
    \part $\displaystyle \oint_{\mathcal{C}} y^2 \; dx + x^2 \; dy$, where $\mathcal{C}$ is the boundary of the square $0 \leq x \leq 1$, $0 \leq y \leq 1$, oriented counterclockwise.
    \part $\displaystyle \oint_{\mathcal{C}} x^2 y \; dx$, where $\mathcal{C}$ is the unit circle with standard orientation.
\end{parts}


\question Let $I = \oint_{\mathcal{C}} \vec{F} \cdot d\vec{s}$, where $\vec{F} = \angl{y + \sin{x^2}, x^2 + e^{y^2}}$ and $\mathcal{C}$ is the circle of radius $4$ centered at the origin. 
\begin{parts}
    \part Which is easier? Evaluating $I$ directly via a parametrization or using Green's theorem?
    \part Carry out the evaluation, using the easier method.
\end{parts}

\end{questions}