% Workshop 02: The dot product formula
% Math 251 Calculus 3
% September 17, 2013

# Workshop 02

In this workshop, you will derive the famous formula relating the dot product of two vectors with the cosine of the angle between them. The exercise makes fundamental use of the relationship
$$ \vec{v} \cdot \vec{v} = \lVert \vec{v} \rVert^2. $$ 

*Do your work on a separate page.* Attach your work to this page before submitting; group submissions are OK (no more than four in a group).

## Warm-up
\begin{questions}

\question Pick two random points with integer coordinates between $-10$ and $10$. Plot these points on a separate piece of paper, and draw vectors from the origin to your two points. These are the vectors $\vec{v}$ and $\vec{w}$. Draw the vector $\vec{v} - \vec{w}$ as the third side of the evident triangle, paying attention to its direction.

\dwrspace{1}

\question Consider a random vector $\vec{u} = \langle a, b, c \rangle$. Verify that $\vec{u} \cdot \vec{u} = \lVert \vec{u} \rVert^2$. (Don't make this harder than it is.)

\dwrspace{1}

\fullwidth{\subsection{Some geometric algebra}}


\question Evaluate $(\vec{v} - \vec{w}) \cdot (\vec{v} - \vec{w})$ in two different ways: in one way, using the fundamental relation given above; in another, using the algebraic laws given in Theorem 1 of section 12.3. Carefully justify your calculations in terms of these laws. You obtain an equation (equate the two different formulas you derived). Write it down.

\dwrspace{1}

\question What does the Law of Cosines have to say about your triangle? Formulate your answer in terms of the vectors that are the sides. (The angle you want to focus on is the one formed by $\vec{v}$ and $\vec{w}$. You can find the Law of Cosines in the front of the book, if you don't remember it.)

\dwrspace{1}

\question Compare the results of the last two steps, and derive the famous dot product--cosine relation,
$$ \vec{v} \cdot \vec{w} = \lVert v \rVert \lVert w \rVert \cos{\theta},$$
where $\theta$ is the angle between $\vec{v}$ and $\vec{w}$.

\dwrspace{1}

\newpage

\fullwidth{\subsection{Projection onto a unit vector}}

\question Start a new drawing. Draw two vectors, again with the same tail, but be sure to give them different lengths, and make sure they are not parallel or perpendicular. Choose one of them to have length 1 and label it $\vec{u}$. Then call the other one $\vec{v}$. Let $\theta$ be the angle they make.

\dwrspace{1}

\question Draw the line containing $\vec{u}$ and produce it to sufficient length to drop a perpendicular onto it from the head of $\vec{v}$. This should form a right triangle with hypotenuse $\vec{v}$.

\dwrspace{1}

\question Find the length of the other leg of your triangle (not the perpendicular) using trigonometry.

\dwrspace{1}

\question Use the dot product--cosine formula to express the length of the other leg (not the perpendicular) as a dot product of vectors you have already defined.

\dwrspace{12}


\end{questions}