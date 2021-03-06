% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rmvtnorm_df.R
\name{rmvtnorm_df}
\alias{rmvtnorm_df}
\title{Simulate Data From the Normal or t-Distributions}
\usage{
rmvtnorm_df(n, loc = 0, scale = rep(1, length(loc)),
  R = diag(length(loc)), df = Inf)
}
\arguments{
\item{n}{Number of simulations to draw.}

\item{loc}{A vector of locations.}

\item{scale}{A vector of standard deviations of the scale matrix.}

\item{R}{A correlation matrix.}

\item{df}{The degrees of freedom. If \code{Inf}, then the data are
simulated from a normal distribution.}
}
\value{
A \code{\link[tibble]{tibble}} with \code{length(loc)}
  columns and \code{n} rows.
}
\description{
Simulate data from normal or Student \eqn{t}-distributions.
}
\details{
This function is a wrapper around \code{\link[mvtnorm]{rmvt}}
and \code{\link[mvtnorm]{rmvnorm}} functions which returns
a data frame instead of a matrix.
}
