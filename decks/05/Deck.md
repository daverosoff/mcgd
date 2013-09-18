% Dot and cross product
% Math 251 Calculus 3
% September 18, 2013 <!-- day 07 -->

# Dot and cross product

## Warm-up, I

- Ready?
- OK FAST what is the dot product--cosine formula?
- $\vec{v} \cdot \vec{w} = \lVert \vec{v} \rVert \lVert \vec{w} \rVert \cos{\theta}$
- Here, we agree to always choose $0 \leq \theta \leq \pi$.
- Suppose $\lVert \vec{v} \rVert = 3$ and $\lVert \vec{w} \rVert = 2$. What are the maximal and minimal possible values of $\vec{v} \cdot \vec{w}$?

## Warm-up, II

- Suppose $\vec{v} \cdot \vec{w} = \lVert \vec{v} \rVert \lVert \vec{w} \rVert$. What can you conclude about the orientation of the vectors? It helps to picture them in standard position.

- Suppose $\vec{v} \cdots \vec{w} = -\lVert \vec{v} \rVert \lVert \vec{w} \rVert$. Now what can you conclude?

- Suppose $\vec{v} \cdots \vec{w} = 0$. Now what can you conclude?

## Frequent uses of dot product

> - Test for *orthogonality*: i.e., whether two vectors are perpendicular
> - *Projection*: part 3 of [Workshop 02][w02]

## Cross product

- Cross product of vectors is specific to $\mathbf{R}^3$ \ldots kind of.
- It is designed to "complete" an independent set.

- Fundamental properties:
    - *Anticommutativity*: $\vec{v} \times \vec{w} = -\vec{w} \times \vec{v}$
    - *Nilpotence*: $\vec{v} \times \vec{v} = 0$
    - *Zerodivisors*: $\vec{v} \times \vec{w} = 0$ iff $\vec{w} = \lambda \vec{v}$ or $\vec{v} = 0$
    - *Bilinearity*: 
        - $(\lambda \vec{v}) \times \vec{w} = \vec{v} \times (\lambda \vec{w}) = \lambda (\vec{v} \times \vec{w})$
        - $(\vec{u} + \vec{v}) \times \vec{w} = \vec{u} \times \vec{w} + \vec{v} \times \vec{w}$
        - $\vec{u} \times (\vec{v} + \vec{w}) = \vec{u} \times \vec{v} + u \times \vec{w}$

## Computing cross products

- There is a method based on the formula for $3 \times 3$ determinants outlined in the text.

- I prefer to use bilinearity/distributivity, combined with the fundamental relations
    - $\hat{\imath} \times \hat{\jmath} = \hat{k}$
    - $\hat{\jmath} \times \hat{k} = \hat{\imath}$
    - $\hat{k} \times \hat{\imath} = \hat{\jmath}$

[w02]: ../../workshops/02/Workshop.pdf

