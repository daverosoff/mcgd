% Workshop 00: Coordinates revisited
% Dr. Dave Rosoff
% September 6, 2013

# Coordinates revisited 

The first major topic in this course is the geometry of 3-dimensional
Euclidean space $\mathbf{R}^3$. Many people struggle with visualizing in this
space or find it difficult to translate coordinate information into geometric
information. This workshop will encourage you to rethink coordinates in the
familiar Euclidean plane in preparation for the later discussion.

# Origin and axes

The plane doesn't come to us with a grid of coordinate axes pre-marked on it.
That is a structure we impose from outside. In particular, there is no rule
that says coordinate axes must be perpendicular to one another. We choose them
that way for convenience. 

We'll take the meaning of "perpendicular" for granted. The next few sections
develop the idea of coordinates using it.

Picture the plane, blank and unmarked. Its expanse is infinite in all
directions, motionless and unchanging. Pick a line---any line at all. We'll
call it *the axis* for now to distinguish it from other lines. The axis can be
used to divide the plane into a family of parallel lines, each perpendicular
to the axis. This family of lines fills up the entire plane. That is, every
point of the plane is on exactly one such line. To see this, we must appeal to
a bit of Greek geometry. Euclid tells us how to draw a perpendicular to a line
through a given point in Propositions [11][prop11] and [12][prop12] of 
[Book I of the Elements][BookI].

Thus, we have a set of lines, each perpendicular to our axis, that fill up the plane. This is *almost* everything we need to *coordinatize* the set of lines. Coordinatizing means assigning a different real number---a *coordinate*---to each line. We don't do it just at random: we do it so that if two lines are chosen, the one to the left has the smaller coordinate. This ensures that the numeric order and the geographic order are the same.

To coordinatize the set of lines perpendicular to the axis, we need to choose which line has coordinate 1. Once this is done, there is a unique choice of coordinate for each line 


# Coordinates

[prop11]: http://aleph0.clarku.edu/~djoyce/java/elements/bookI/propI11.html
[prop12]: http://aleph0.clarku.edu/~djoyce/java/elements/bookI/propI12.html
[BookI]: http://aleph0.clarku.edu/~djoyce/java/elements/bookI.html