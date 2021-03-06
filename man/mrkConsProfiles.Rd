% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{mrkConsProfiles}
\alias{mrkConsProfiles}
\title{Marker consensus profiles}
\usage{
mrkConsProfiles(object, fcol = "markers", method = mean)
}
\arguments{
\item{object}{An instance of class \code{MSnSet}.}

\item{fcol}{Feature meta-data label (fData column name) defining
the groups to be differentiated using different
colours. Default is \code{markers}.}

\item{method}{A \code{function} to average marker
profiles. Default is \code{mean}.}
}
\value{
A \code{matrix} of dimensions \emph{number of clusters}
    (exluding unknowns) by \emph{number of fractions}.
}
\description{
A function to calculate average marker profiles.
}
\examples{
library("pRolocdata")
data(dunkley2006)
mrkConsProfiles(dunkley2006)
mrkConsProfiles(dunkley2006, method = median)
mm <- mrkConsProfiles(dunkley2006)
## Reorder fractions
o <- order(dunkley2006$fraction)
## Plot mean organelle profiles using the
## default pRoloc colour palette.
matplot(t(mm[, o]), type = "l",
        xlab = "Fractions", ylab = "Relative intensity",
        main = "Mean organelle profiles",
        col = getStockcol(), lwd = 2, lty = 1)
## Add a legend
addLegend(markerMSnSet(dunkley2006), where = "topleft")
}
\seealso{
The \code{\link{mrkHClust}} function to produce a
    hierarchical cluster.
}
\author{
Laurent Gatto and Lisa M. Breckels
}
