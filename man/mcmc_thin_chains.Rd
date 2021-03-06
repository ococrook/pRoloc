% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/machinelearning-functions-tagm-mcmc-helper.R
\name{mcmc_thin_chains}
\alias{mcmc_thin_chains}
\title{MCMC chain thinning}
\usage{
mcmc_thin_chains(x, freq = 5)
}
\arguments{
\item{x}{An object of class `MCMCParams`.}

\item{freq}{Thinning frequency. The function retains every `freq`th iteration
and is an `integer(1)`. The default thinning frequency is `5`.}
}
\value{
A thinned `MCMCParams` object.
}
\description{
Helper function to subsample the chains, known informally as
thinning.
}
\author{
Laurent Gatto
}
