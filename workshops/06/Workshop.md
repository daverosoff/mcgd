% Workshop 06: The chain rule
% Math 275 Calculus 3
% October 7, 2013

# Workshop 06: The chain rule

\begin{figure}[ht]
\begin{minipage}[t]{0.7\linewidth}
The chain rule, just as in one-variable calculus, tells us how to find the derivative of a composite function in terms of the derivatives of the composition factors.

Complications arise, because functions of different \emph{valence} may be composed. For example, we might have $x = x(t)$, $y = y(t)$, and $z = z(t)$, each an ordinary one-variable function, and $w = f(x,y,z)$. It's somewhat of our choice whether we want to view $w$ as a function of $x$, $y$, and $z$, or as a function of $t$. The chain rule helps us relate the various derivatives through pictures like this. There is only one composite derivative to find in the pictured scenario, and it is evidently
\begin{equation*}
    \frac{\partial w}{\partial t} = \frac{\partial w}{\partial x} \frac{\partial x}{\partial t} + \frac{\partial w}{\partial y} \frac{\partial y}{\partial t} + \frac{\partial w}{\partial z} \frac{\partial z}{\partial t}.    
\end{equation*} 
\end{minipage} \hspace*{1cm}
\begin{minipage}[t]{0.25\linewidth}
    \begin{equation*}
        \xymatrix{
              & w \ar@{-}[dl] \ar@{-}[d] \ar@{-}[dr] & \\
            x \ar@{-}[dr] & y \ar@{-}[d] & z \ar@{-}[dl] \\
            & t & 
        }
    \end{equation*}
\end{minipage}
\end{figure}

## Warm-up

\begin{questions}

\begin{figure}[ht]
\begin{minipage}[t]{0.7\linewidth}
\question Let $f(x, y, z) = xy + z$. Suppose that $x(s,t) = s^2$, $y(s,t) = st$, $z(s,t) = t^2$. Find $\partial f/\partial s$. 
\end{minipage} \hspace*{1cm}
\begin{minipage}[t]{0.25\linewidth}
\hfill
\end{minipage}
\end{figure}

\dwrspace{1}

\begin{figure}[ht]
\begin{minipage}[t]{0.7\linewidth}
\question Let $f(x,y) = e^{xy}$. Evaluate $\partial f / \partial t$ at $(s,t,u) = (2, 3, -1)$, if $x(s, t, u) = st$, $y(s, t, u) = s - ut^2$.
\end{minipage} \hspace*{1cm}
\begin{minipage}[t]{0.25\linewidth}
\hfill
\end{minipage}
\end{figure}

\dwrspace{1}

\newpage

\fullwidth{\subsection{A little tougher}}

\begin{figure}[ht]
\begin{minipage}[t]{0.7\linewidth}
\question \label{polar} Suppose $x = r \cos{\theta}$ and $y = r \sin{\theta}$. (This is the so-called \emph{polar coordinate transformation}, which we will meet again when we discuss integration.) Let $f(x,y)$ be a function. Give formulas for $\partial f / \partial r$ and $\partial f / \partial \theta$ in terms of the other derivatives.
\end{minipage} \hspace*{1cm}
\begin{minipage}[t]{0.25\linewidth}
\hfill
\end{minipage}
\end{figure}

\dwrspace{1}

\question Apply the result from the previous problem to the function $f(x, y) = x^2 y$. (The coordinates $(x,y)$ are related to $(r,\theta)$ in the same way as in question~\ref{polar}).

\dwrspace{1}

\begin{figure}[ht]
\begin{minipage}[t]{0.7\linewidth}
\question Let $x = \rho \sin \varphi \cos \theta$, $y = \rho \sin \varphi \sin \theta$, and $z = \rho \cos \varphi$. (This is the so-called \emph{spherical} coordinate transformation.) Find formulas for the derivatives of a general function $f(x, y, z)$ with respect to $\rho$, $\varphi$, and~$\theta$. 
\end{minipage} \hspace*{1cm}
\begin{minipage}[t]{0.25\linewidth}
\hfill
\end{minipage}
\end{figure}

\dwrspace{1}

\end{questions}
