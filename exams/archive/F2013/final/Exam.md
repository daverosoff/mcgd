% Final Exam
% Math 275 Calculus 3
% December 9, 2013

\begin{questions}
    \begingradingrange{first}
    \question[16] Please find the indicated partial derivatives.

        \begin{parts}
            \part $f(x,y) = x^4 y^3$; find $f_x$, $f_y$.
            \part $w = \dfrac{z}{(x^2+y^2+z^2)^{3/2}}$; find $\partial w / \partial z$.
            \part $z = \dfrac{y^2}{1+y^2}$; find $\partial z / \partial x$.
            \part $u = 3x^2 y - 6xy^4$; find $u_{xx}$ and $u_{yy}$.
        \end{parts}

    %\question[16]
    %
    %    Find the linearization $L(x,y,z)$ of the function $f(x,y,z) = xy/z$ at $(2,1,2)$. Use it to estimate the value of $f(2.05,0.9,2.01)$.

    \question In this problem, consider the function~$g(x,y) = 9 + 3x^2y$ and the point~$P = (-1,1)$. 

    \begin{parts}
        \part[8] Give a formula for the linearization~$L(x,y)$ of~$g$ at~$P$. 

        \part[4] Use the linearization to estimate~$g(-0.9, 1.1)$.

        \part[4] Write an equation for the plane tangent to the graph of $g$ at $P$.
    \end{parts}

    \question[16] Verify that $(1,1,1)$ is the center of mass of the tetrahedron bounded by the planes $x = 0$, $y = 0$, $z = 0$, and $x + y + z = 4$, assuming uniform (constant) density. \emph{Hint.} You are allowed to refer to the symmetries of the problem and draw conclusions from them. However, arguments that do not involve an integral will receive little to no credit. The coordinates $(\bar{x}, \bar{y}, \bar{z})$ of the center of mass of a region $\mathcal{D}$ with density $\rho$ are defined by the formulas
    \begin{align*}
        \bar{x} &= \frac{1}{M} \int \!\!\!\!\!\! \int \!\!\!\!\!\! \int_{\mathcal{D}} x \rho(x,y,z) \; dV, \\
        \bar{y} &= \frac{1}{M} \int \!\!\!\!\!\! \int \!\!\!\!\!\! \int_{\mathcal{D}} y \rho(x,y,z) \; dV, \\
        \bar{z} &= \frac{1}{M} \int \!\!\!\!\!\! \int \!\!\!\!\!\! \int_{\mathcal{D}} z \rho(x,y,z) \; dV,
    \end{align*}
    where $M = \int \!\!\!\!\!\! \int \!\!\!\!\!\! \int_{\mathcal{D}} \rho(x,y,z) \; dV$ is the mass of the region. 

    \question Suppose that $f(x,y,z)$ is a function defined on the region $\mathcal{D} \subset \R^3$ with continuous first partial derivatives. Mark each of the following statements about the gradient $\nabla f$ either \textsc{true} or \textsc{false}. \setlength\answerskip{0.5ex} \setlength\answerlinelength{0.75in}
        \begin{parts}
            \begin{minipage}[t]{0.42\textwidth}
                \part[2] $\nabla f$ is defined throughout $\R^3$. \answerline
                \part[2] $\nabla f$ is defined throughout $\mathcal{D}$. \answerline
                \part[2] $\nabla f$ is nowhere zero. \answerline
                \part[2] $\nabla f$ is orthogonal to the level sets of $f$. \answerline
            \end{minipage} \hspace*{3em}
            \begin{minipage}[t]{0.42\textwidth}
                \part[2] The line integral of $\nabla f$ around every simple closed curve in $\mathcal{D}$ is zero. \answerline
                \part[2] $\nabla f$ satisfies the ``cross-partials condition'' of the text. \answerline
                \part[2] $\nabla f$ is tangent to the graph of $f$ and points in the direction of steepest increase. \answerline
            \end{minipage}
        \end{parts}

        \question Find the line integrals $\int_{\mathcal{C}} \vec{F} \cdot d\vec{s}$, for the indicated vector fields and curves. The drawing of pictures is encouraged in the strongest possible terms.
        \begin{parts}
            \part[9] $\vec{F}(x,y) = \angl{y+2, x+3}$, where $\mathcal{C}$ is the unit circle traversed counterclockwise.
            \part[9] $\vec{F}(x,y) = \angl{-y ,x}$, where $\mathcal{C}$ is the line segment from $(3,0)$ to $(8, \pi)$.
        \end{parts}

    \endgradingrange{first}
    \begingradingrange{second}

    \question[16] \label{prob:planepic}
        Find an equation for the plane pictured (last page). \emph{Hint.} Begin by finding a vector normal to the plane.
        
    \question Traffic can be described by fluid properties such as density and momentum; it is often modeled as a fluid. Consider a straight road with multiple lanes going due north. Fast traffic uses the lanes farther left, and slower traffic uses the ones to the right. Denote the velocity of traffic at any point of the road by $\vec{v}(x,y) = \angl{0, v_2(x,y)}$. Assume also that the speed in each lane is constant, i.e., that $\partial v_2 / \partial y = 0$.
        \begin{parts}
            \part[8] What can you say about the scalar curl $\partial v_2 / \partial x - \partial v_1 / \partial y$ at any point on the road? What does it mean for that quantity to be small? What if it is large? Relate the value of this quantity to traffic safety.
            \part[16] Suppose that $v_2(x,y) = 120 - \alpha x$ measured in km per hour, where $x$ is measured in km. Compute both sides of Green's Theorem for the traffic flow over a segment of highway described by $S = [0,0.04] \times [0, 0.8]$ with boundary $\mathcal{C}$. In other words, verify that
            \begin{equation*}
                \int_{\mathcal{C}} \vec{v}(x,y) \cdot d\vec{s} = \int \!\!\!\!\!\! \int_{\mathcal{S}} \left( \frac{\partial v_2}{\partial x} - \frac{\partial v_1}{\partial y} \right) \; dA.
            \end{equation*}
            Note that $S$ is the region $0 \leq x \leq 0.04$ and $0 \leq y \leq 0.8$. The drawing of pictures is highly advisable.
        \end{parts}
       
    \question[16]
        Sketch the domain of integration. Then change the order of integration and evaluate the integral (in the new order you just found---it is known that this integral is impossible to evaluate in the order below).
        \begin{equation*}
            \int_0^4 \int_{\sqrt{y}}^4 \sqrt{x^3 + 1} \; dx \; dy
        \end{equation*}

    \question[8] \label{prob:polar}
        \emph{Using polar coordinates,} express the area of the pictured region (below, between the circles) as an integral or as a sum of integrals. Only use rectangular coordinates if you are unable to proceed otherwise. \textbf{\textsc{Do not evaluate your integrals.}} \emph{Hint.} The smaller circle has rectangular equation $(x-1)^2 + y^2 = 1$. Start by converting this equation to polar form.
        
    \question A moving particle has position $\vec{r}(t) = \langle t^2, t + 1 \rangle$. 
    \begin{parts}
        \part[2] Find a formula for the velocity of the particle at all times $t$. \emph{Hint.} Velocity is a vector quantity.
        \part[4] Write down, but \textbf{\textsc{do not evaluate}} an integral whose value is the distance traveled by the particle between the times $t = 1$ and $t = 7$.
    \end{parts}
        \endgradingrange{second}

        \end{questions}
    
        \begin{figure}[ht]
            \centering
            \begin{minipage}[t]{0.45\linewidth}
                \includegraphics[height=180pt,width=167pt]{f12_final_fig1}
                \caption{Problem \ref{prob:planepic}. Be cautious in interpreting the labels on the axes.}
            \end{minipage}
            \hspace{0.05\linewidth}
            \begin{minipage}[t]{0.45\linewidth}
            \centering
                \includegraphics[height=180pt,width=182pt]{f12_final_fig2}
                \caption{Problem \ref{prob:polar}.}
            \end{minipage}
        \end{figure}

        \dwrspace{1}