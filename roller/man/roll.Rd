% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/code.R
\name{roll}
\alias{roll}
\title{Rolling object}
\usage{
roll(x, times = 1)
}
\arguments{
\item{x}{deivce}

\item{times}{times of rolling}
}
\value{
data frame of sides, prob, rolls, and total \code{"roll"}
}
\description{
Rolling object and get data frame of sides, prob,
rolls, and total \code{"roll"}
}
\examples{
device1 <- device()
roll(device1, times = 100)
}
