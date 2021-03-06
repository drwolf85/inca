% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/adjWeights.R
\name{adjWeights}
\alias{adjWeights}
\title{Function for Weights Adjustments}
\usage{
adjWeights(weights, lower = -Inf, upper = +Inf)
}
\arguments{
\item{weights}{A numerical vector of weights}

\item{lower}{A numerical vector of lower bounds}

\item{upper}{A numerical vector of upper bounds}
}
\value{
A vector of adjusted weights
}
\description{
This function provides a trimming procedure to force the weights to be within the provided boundaries
}
\details{
The function produces trimmed weights, which will be the input for the rounding
technique before integer calibration. When the weights are bounded, the function rounds-up 
the lower bounds and rounds-down the upper. If the condition \code{upper > lower + 1},
an error is returned.
}
\examples{
library(inca)
w <- rnorm(150, 0, 2)
aw <- adjWeights(w, runif(150, -3, -1), runif(150, 1, 3))
hist(aw, main = "Adjusted weights")

}

