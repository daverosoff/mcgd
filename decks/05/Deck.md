% Dot and cross product
% Math 251 Calculus 3
% September 18, 2013 <!-- day 07 -->

# Dot and cross product

## Warm-up, I

- Ready?
- OK FAST what is the dot product--cosine formula?
- $\vv \cdot \ww = \Norm{\vv} \Norm{\ww} \cos{\theta}$
- Here, we agree to always choose $0 \leq \theta \leq \pi$.
- Suppose $\Norm{\vv} = 3$ and $\Norm{\ww} = 2$. What are the maximal and minimal possible values of $\vv \cdot \ww$?

## Warm-up, II

- Suppose $\vv \cdot \ww = \Norm{\vv} \Norm{\ww}$. What can you conclude about the orientation of the vectors? It helps to picture them in standard position.

- Suppose $\vv \cdot \ww = -\Norm{\vv} \Norm{\ww}$. Now what can you conclude?

- Suppose $\vv \cdot \ww = 0$. Now what can you conclude?

## Frequent uses of dot product

> - Test for *orthogonality*: i.e., whether two vectors are perpendicular
> - *Projection*: part 3 of [Workshop 02][w02]

## Cross product

> - Cross product of vectors is specific to $\mathbf{R}^3$ \ldots kind of.
> - It is designed to "complete" an independent set.

- Fundamental geometric properties:
    - *Complementarity*: $\vv \times \ww$ is orthogonal to each of $\vv$ and $\ww$; in other words, $\vv \cdot (\vv \times \ww) = 0 = \ww \cdot (\vv \times \ww)$
    - *Orientation*: The ordered system $\{ \vv, \ww, \vv \times \ww \}$ is right-handed
    - *Cross product--sine formula*: $\Norm{\vv \times \ww} = \Norm{\vv} \Norm{\ww} \sin{\theta}$.

## Algebraic properties of cross product

The cross product has the following algebraic properties, as a consequence of its geometric ones.

- *Anticommutativity*: $\vv \times \ww = -\ww \times \vv$
- *Nilpotence*: $\vv \times \vv = \vec{0}$
- *Zerodivisors*: $\vv \times \ww = \vec{0}$ iff $\ww = \lambda \vv$ or $\vv = \vec{0}$
- *Bilinearity*: 
    - $(\lambda \vv) \times \ww = \vv \times (\lambda \ww) = \lambda (\vv \times \ww)$
    - $(\vec{u} + \vv) \times \ww = \vec{u} \times \ww + \vv \times \ww$
    - $\vec{u} \times (\vv + \ww) = \vec{u} \times \vv + u \times \ww$

## Computing cross products

- There is a method based on the formula for $3 \times 3$ determinants outlined in the text.

> - I prefer to use bilinearity/distributivity, combined with the fundamental relations
    - $\ii \times \jj = \kk$
    - $\jj \times \kk = \ii$
    - $\kk \times \ii = \jj$

> - With anticommutativity, these generate another three relations
    - $\jj \times \ii= -\kk$
    - $\kk \times \jj= -\ii$
    - $\ii \times \kk= -\jj$

[w02]: ../../workshops/02/Workshop.pdf

