% Exam 1
% Math 275 Calculus 3
% September 24, 2013




\begin{questions}

\question Let~$\vv = \angl{0, -3, 1}$ and~$\ww = \angl{2, -3, 4}$.
\begin{parts}
    \part[6] Find a vector that is orthogonal to the plane containing these vectors. 

    \begin{solution}
        We take the cross product of the vectors. Since it is orthogonal to each vector, it is also orthogonal to the plane containing them.
        \begin{align*}
            \vv \times \ww  &= (-12 + 3)(\jj \times \kk) 
                            + (2 - 0)(\kk \times \ii)
                            + (0 - (-6))(\ii \times \jj) \\
                            &= \angl{-9, 2, 6}.
        \end{align*}
        A quick dot product calculation verifies that this vector is indeed orthogonal to $\vv$ and $\ww$---of course we know it \emph{should} be, but perhaps we made an arithmetic mistake.
    \end{solution}

    \part[6] Find an equation for the plane containing these vectors. (Either a vector equation or a scalar equation is acceptable.)

    \begin{solution}
        We obtained a normal vector for this plane in the previous part, $\nn = \angl{-9, 2, 6}$. Therefore, an equation for the plane containing these vectors is
        \begin{align*}
            \angl{-9, 2, 6} \cdot \angl{x, y, z} &= 0 \quad \text{or}\\
            -9x + 2y + 6z &= 0.
        \end{align*}
    \end{solution}
\end{parts}

%\question[8] Let~$\vv = \angl{3, 1}$. Find the projection of~$\vv$ in the direction of the vector~$\angl{-1, 1}$.

\question % 12.4.55
\begin{parts}
    \part[12] Explain geometrically why the equation
    \begin{equation*}
        \angl{1, 1, 1} \times \angl{x,y,z} = \angl{1, 0, 0}
    \end{equation*}
    has no solution, i.e., why the equation is false for every choice of~$\angl{x,y,z}$.
    \begin{solution}
        If $\angl{1, 0, 0}$ is the cross product of $\angl{1, 1, 1}$ with anything, then $\angl{1, 0, 0}$ must be orthogonal to $\angl{1, 1, 1}$. But it is clearly not, since the dot product of these vectors is nonzero.

        A more long-winded approach would be to note that the angle between these vectors is, rather than $\pi/2 = \tau/4$,
        \begin{equation*}
            \cos^{-1} \frac{1}{1 + \sqrt{3}}.
        \end{equation*}
    \end{solution}
    \part[12] Find a vector~$\angl{x,y,z}$ that satisfies the equation
    \begin{equation*}
        \angl{1, 1, 1} \times \angl{x,y,z} = \angl{1, -1, 0}.
    \end{equation*}
    \emph{Note.} There are infinitely many such vectors~$\angl{x,y,z}$.
    \begin{solution}
        The easiest way to proceed is simply to evaluate the left-hand side.
        \begin{align*}
            \angl{1, 1, 1}  \times \angl{x, y, z} &= (z - y)(\jj \times \kk)
                                    + (x - z)(\kk \times \ii)
                                    + (y - x)(\ii \times \jj) \\
                                    &= \angl{z-y, x-z, y-x}.
        \end{align*}
        By inspection, we see that $x = y$, $z = y+1$, so $\angl{0, 0, 1}$ is a solution. Any vector $\angl{x, x, x+1}$ will do, as is easily checked.
    \end{solution}
\end{parts}

\question Let~$P = (1,1,0)$, $Q = (1, -2, 1)$, and~$R = (3, -2, 4)$. 

\begin{parts}
    \part[8] Find the cosine of the angle between the line segments~$\overline{PQ}$ and~$\overline{PR}$.

    \begin{solution}
    We use the dot product--cosine formula, $\vv \cdot \ww = \norm{\vv} \norm{\ww} \cos{\theta}$.

    First, compute $\vv = \angl{1 - 1, -2 - 1, 1 - 0} = \angl{0, -3, 1}$ and $\ww = \angl{3 - 1, -2 - 1, 4 - 1} = \angl{2, -3, 4}$. Then $\vv \cdot \ww = 13$. We also find $\norm{\vv} = \sqrt{\vv \cdot \vv} = \sqrt{10}$, $\norm{\ww} = \sqrt{29}$.

    We obtain
    \begin{equation*}
        \cos{\theta} = \frac{13}{\sqrt{13}\sqrt{29}}.
    \end{equation*}
    \end{solution}

    \part[8] Explain why your answer to the previous part means that the points~$P$, $Q$, and~$R$ are the vertices of a triangle (in other words, why the points are not collinear).

    \begin{solution}
        If the points were collinear, the angle between the vectors would have to be either $0$ or $\pi$. But the cosine of the angle is evidently not $1$ or $-1$.
    \end{solution}

    \part[8] Recall that for \emph{any} two vectors~$\uu$, $\vv$, the angle formed by~$\uu$ and~$\vv$ is acute (resp.\ obtuse) if~$\uu \cdot \vv$ is positive (resp.\ negative). Are any of the angles of the triangle obtuse? Justify your answer.
    \begin{solution}
    All of the angles of the triangle have positive cosines, so this triangle is acute.
    \end{solution}
\end{parts}

%%% Don't use the following question again, without significant rewriting.
\question[8] (Note: In this problem, no justification or explanation is required.) Let~$\uu$, $\vv$, and~$\ww$ be nonzero vectors in~$\R^3$. Identify the correct completion(s) of the sentence: The vectors~$\uu$, $\vv$, and~$\ww$ are coplanar (they lie in one plane) if (select one of (a) through (g)):
\begin{figure}[ht]
\hspace{2cm}
\begin{minipage}[t]{0.55\linewidth}
\begin{enumerate}[I.]
    \item One of the three vectors is parallel to the cross product of the others.
    \item There exist scalars~$a$ and~$b$ with~$\ww = a \uu + b \vv$.
    \item $(\uu \times \vv) \times \ww = \vec{0}$.
    \item $\uu \cdot (\vv \times \ww) = 0$.
\end{enumerate}
\end{minipage}
\hspace{0.5cm}
\begin{minipage}[t]{0.35\linewidth}
\begin{enumerate}[a.]
    \item I only
    \item II only
    \item III only
    \item II and IV only \label{item:corr}
    \item III and IV only
    \item II, III, and IV only
    \item I, II, III, and IV
\end{enumerate}
\end{minipage}
\end{figure}

\begin{solution}
    \begin{enumerate}[I.]
        \item If, say, $\uu$ is parallel to $\vv \times \ww$, then $\uu$ is orthogonal to both $\vv$ and $\ww$. It is possible for all three to be coplanar, but only when $\vv$ and $\ww$ are parallel to begin with. Usually, $\uu$ will not be coplanar with $\vv$ and $\ww$. This item does not hold.
        \item If $\ww$ is a combination of $\uu$ and $\vv$ as indicated, then $\ww$ is indeed coplanar with $\uu$ and $\vv$. This item holds.
        \item This is a special case of the first item, so it doesn't hold.
        \item If the three vectors span a box of volume 0, they are coplanar. The box product formula thus tells us that $\uu$, $\vv$ and $\ww$ are coplanar in this case. This item holds.
    \end{enumerate} 
    Therefore, the correct answer is~\ref{item:corr}.
\end{solution}

\newpage

\question[12] Suppose that~$\uu$ and~$\vv$ are orthogonal. Use facts about vectors and their dot products to verify the equation
\begin{equation*}
     \norm{\uu + \vv}^2 = \norm{\uu}^2 + \norm{\vv}^2.
\end{equation*} 
Do you think this equation can be true for a pair of non-orthogonal vectors? Justify your answer.
\begin{solution}
    We make repeated use of the formula $\norm{\ww}^2 = \ww \cdot \ww$. Applying this to the left-hand side of the equation, we obtain via bilinearity and commutativity
    \begin{equation*}
    (\uu + \vv) \cdot (\uu + \vv) = \uu \cdot \uu + 2\uu \cdot \vv + \vv \cdot \vv. 
    \end{equation*}
    But $\uu$ and $\vv$ are orthogonal, so $\uu \cdot \vv = 0$. Hence, the right-hand side above reduces to $\uu \cdot \uu + \vv \cdot \vv$. Another application of the formula allows us to rewrite this last as
    \begin{equation*}
        \norm{\uu}^2 + \norm{\vv}^2.
    \end{equation*}
    This equation does not hold for non-orthogonal vectors, because such vectors' dot products do not vanish.
\end{solution}

\question[8] 
Suppose that~$\mathcal{P}$ is a plane in~$\R^3$ and that~$\ell$ is a line contained in~$\mathcal{P}$. Let~$Q$ be a point not on~$\mathcal{P}$. Choose the correct relationship between~$D$, the distance from~$Q$ to~$\ell$, and~$d$, the distance from~$Q$ to~$\mathcal{P}$.
\begin{choices}
    \choice $d \leq D$.
    \choice $d \geq D$. \label{choice:corr}
    \choice $d = D$.
    \choice None of the above.
\end{choices}
\begin{solution}
    The answer is~\ref{choice:corr}, because the line is constrained to lie in the plane. Thus the distance from $\ell$ to $Q$ cannot be smaller than the distance from $\mathcal{P}$ to $Q$. Of course $D$ can be made as large as you please by moving $\ell$ away from $Q$ within $\mathcal{P}$.
\end{solution}

\question \label{prob:contour}


Figure~\ref{fig:contour} shows a contour plot of a function~$f(x,y)$. 
\begin{parts}
    \part[6] Starting at~$(2, 2)$ and moving in the negative~$x$-direction, are the values of~$f(x,y)$ decreasing or increasing?
    \begin{solution}
        The values are increasing.
    \end{solution}
    \part[6] Starting at point~$(2,0)$ and moving in the positive~$y$-direction, are the values of~$f(x,y)$ decreasing or increasing?
    \begin{solution}
        The values are increasing.
    \end{solution}
\end{parts}
\begin{figure}[ht] \label{fig:contour}
\centering
\includegraphics[width=0.5\textwidth,height=0.5\textwidth]{figure/contour.pdf}
\caption{Contour plot for Problem~\ref{prob:contour}}
\end{figure}
\end{questions}