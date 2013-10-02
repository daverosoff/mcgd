% Workshop 05: Gradient vectors in 1 and 2 dimensions
% Math 251 Calculus 3
% October 2, 2013

\newtheorem{fact}{Fact}

# Workshop 05: Gradient vectors

This workshop motivates and introduces the fundamental idea of \emph{gradient vectors} to functions. 

## Warm-up

You may remember from a previous math experience that lines in the plane are orthogonal precisely when the product of their slopes is $-1$. Here you will use vectors to get a simple proof of this fact.

\begin{questions} 

\question Consider the line $y = 3x+1$. Find a vector $\vv$ (of any length) parallel to this line. (Your vector will have just 2 entries.)

\dwrspace{1}

\question Now find a vector that is orthogonal to $\vv$, and call it $\ww$. \emph{Hint}. The easiest way to generate $\ww$ is to choose its entries in such a way that guarantees $\vv \cdot \ww = 0$.

\dwrspace{1}

\question What is the slope of a line parallel to $\ww$? Is the product of the slopes $-1$ as claimed?

\newpage

\question Write a formula for a function that takes a vector $\uu$ as input and whose output is the slope of a line parallel to $\uu$. (Think of $\uu$'s entries as the input variables.)

\dwrspace{1}

\question Now let $f(x) = x^3 + 3x + 1$. Find the tangent line to the graph of $f$ at $x = 0$. Write its equation in the form $mx - y = -b$. What do you notice about the vector $\angl{m, -1}$ in relation to the tangent line?

\dwrspace{1}

\question The general form of a line in the plane is $Ax + By = C$ (not every line has a slope). If $B \ne 0$, this line does admit a slope-intercept form. Find it, and show that $\angl{A, B}$ is parallel to $\angl{m, -1}$.

\dwrspace{1}

\subsection{General functions}

\fullwidth{
    In the previous section you saw that $\angl{f'(a), -1}$ is normal to the tangent line to the graph of $f$ at $x = a$. This is true in general.
}

\question Use the point-slope formula to write the tangent line to the graph of an arbitrary differentiable function $f$ at $x = a$. Get the line into the standard form $Ax + By = C$. 

\dwrspace{1}

\question Check that $\angl{f'(a), -1}$ is orthogonal to the tangent line.

\dwrspace{1}

\end{questions}
