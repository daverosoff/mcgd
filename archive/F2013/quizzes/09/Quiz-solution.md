% Quiz 09 (Group quiz: Green's theorem) solutions
% Math 251 Calculus 3
% December 2, 2013 

\noindent
See the quiz (with no solutions) for the instructions that originally accompanied it.

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

    \begin{solution}
        According to Green's theorem, we may replace the line integral with a suitable double integral. This is particularly appealing since the limits of integration in the iterated integral will all be constants. We find
        \begin{equation*}
        \frac{\partial}{\partial x} x^2 - \frac{\partial}{\partial y} y^2 = 2x - 2y,
        \end{equation*}
        so the appropriate double integral is
        \begin{align*}
        \int_0^1 \int_0^1 (2x - 2y) \; dy \; dx &= 2 \int_0^1 \int_0^1 (x - y) \; dy \; dx \\
        &= \int_0^1 (x - \frac{1}{2}) \; dx \\
        &= 0.
        \end{align*}

    \end{solution}

    \part $\displaystyle \oint_{\mathcal{C}} x^2 y \; dx$, where $\mathcal{C}$ is the unit circle with standard orientation.

    \begin{solution}
        We choose the polar integral with integrand
        \begin{equation*}
            \frac{\partial}{\partial x} 0 - \frac{\partial}{\partial y} x^2 y = -x^2 = -r^2 \cos^2{\theta}.
        \end{equation*}
        Remembering that the polar conversion introduces an extra factor of $r$, the Green's theorem double integral may be written
        \begin{align*}
            \int_0^{2\pi} \int_0^1 r^3 \cos^2{\theta} \; dr \; d\theta &= \int_0^{2\pi} \frac{1}{4} \cos^2{\theta} \; d\theta \\
            &= \frac{\pi}{4}.
        \end{align*}
    \end{solution}
\end{parts}


\question Let $I = \oint_{\mathcal{C}} \vec{F} \cdot d\vec{s}$, where $\vec{F} = \angl{y + \sin{x^2}, x^2 + e^{y^2}}$ and $\mathcal{C}$ is the circle of radius $4$ centered at the origin. 
\begin{parts}
    \part Which is easier? Evaluating $I$ directly via a parametrization or using Green's theorem?

    \begin{solution}
        Since the hideous function $e^{y^2}$ appears in the vector field $F$, we suspect Green's theorem will in fact be necessary here. The hideous function is well known as an example of a function that possesses no elementary antiderivative.
    \end{solution}

    \part Carry out the evaluation, using the easier method.

    \begin{solution}
        The Green's theorem integrand is the blessedly simple
        \begin{equation*}
            \frac{\partial}{\partial x} (x^2 + e^{y^2}) - \frac{\partial}{\partial y} (y + \sin{x^2}) = 2x - 1.
        \end{equation*}
        In polar coordinates, the region of integration has bounds $0 \leq r \leq 4$, $0 \leq \theta \leq 2\pi$. Hence, the Green's theorem double integral may be expressed
        \begin{align*}
            \int_0^{2\pi} \int_0^4 (2r \cos{\theta} - 1) r \; dr \; d\theta &= \int_0^{2\pi} \int_0^4 (2r^2 \cos{\theta} - r) \; dr \; d\theta \\
            &= \int_0^{2\pi} \left. \left(\frac{2r^3}{3} \cos{\theta} - \frac{r^2}{2} \right) \right|_{0}^4 \; d\theta \\
            &= \int_0^{2\pi} \left( \frac{128}{3} \cos{\theta} - 8 \right) \; d\theta \\
            &= \left. \frac{128}{3} \sin{\theta} - 8\theta \right|_{0}^{2\pi} \\
            &= -16\pi.
        \end{align*}
    \end{solution}
\end{parts}

\end{questions}