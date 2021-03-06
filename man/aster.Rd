\name{aster}
\alias{aster}
\title{Plot Aster}
\usage{
aster(lengths, widths, labels, disk = 0.5, max.length, center = NULL,
  main = NULL, fill.col = NULL, plot.outline = TRUE,
  label.offset = 0.15, xlim = c(-1.2, 1.2), ylim = c(-1.2, 1.2),
  uin = NULL, tol = 0.04, cex = 1, bty = "n", lty = 1,
  label.col = "black", label.font = 3, label.cex = NULL, ...)
}
\arguments{
  \item{lengths}{length of petal outward to extent of
  circle}

  \item{widths}{width of petal}

  \item{labels}{petal label outside of circel}

  \item{disk}{relative radius of a central donut hole}

  \item{max.length}{...}

  \item{center}{center value}

  \item{main}{}

  \item{fill.col}{}

  \item{plot.outline}{}

  \item{label.offset}{}

  \item{xlim}{}

  \item{ylim}{}

  \item{uin}{}

  \item{tol}{}

  \item{cex}{}

  \item{bty}{}

  \item{lty}{}

  \item{label.col}{}

  \item{label.font}{}

  \item{label.cex}{}
}
\value{
Generate something akin to a rose plot in which the width
and length of each petal are directly specified by the
user. Or to put it differently, this is somewhat like a pie
chart in which the radius of each wedge is allowed to vary
(along with the angular width, as pie charts do). As an
additional enhancement, one can specify a central disk of
arbitrary radius (from 0 to 1, assuming that the plot
itself is scaled to the unit circle), in which case the
petal heights are always measured from the edge of the disk
rather than the center of the circle; if desired, text can
be added in the center.

Although this kind of plot may already be well known in
some circles (no pun intended), I haven't seen it clearly
defined or labeled anywhere, so I'm anointing it an 'aster'
plot because its component parts are reminiscent of
composite flower morphology.

The 'lengths' dictates how far out each petal extends,
'widths' dictates the (angular) width of each petal, and
'disk' gives the relative radius of a central donut hole.
If no widths are provided, all petals will have equal
widths. Additional function arguments can also control
whether petals are labeled, whether the petal lengths are
rescaled to the maximum score or to a user-input score,
whether spokes delineating each petal are extended to an
outer circle, and more. I also wrote a quick convenience
wrapper for creating a legend plot.

Note that the function here is a repurposed and very
heavily modified version of the windrose() function
contained in the 'circular' package, although sufficiently
rewritten so as not to depend on any functionality in that
package.
}
\description{
Plot flower plot. Created by Jim Regetz. Slight
modifications by Darren and Ben.
}
\examples{
\dontrun{
# generate some fake data
set.seed(1)
scores <- sample(1:10)
weights <- sample(1:10)
labels <- paste(LETTERS[1:10], "X", sep="")

# do some plots
par(mfrow=c(2,2), xpd=NA)
aster(lengths=scores, widths=weights, disk=0, main="Example 1",
    plot.outline=FALSE)
aster(lengths=scores, widths=weights, labels=labels, main="Example 2",
    lty=2, fill.col="gray", plot.outline=FALSE)
aster.legend(labels=labels, widths=weights)
aster(lengths=scores, widths=weights, disk=0.5, main="Example 3",
    center="Hello world")
}
}
\keyword{layers_navigation}

