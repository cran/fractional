% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R, R/fractionl.R
\name{rat}
\alias{.ratr}
\alias{rat}
\alias{ratr}
\title{Calculate Rational Approximation Using Continued Fraction Methods}
\usage{
rat(x, eps = 1e-06, maxConv = 20L)

.ratr(x, eps = 1e-06, maxConv = 20)

ratr(x, eps = 1e-06, maxConv = 20)
}
\arguments{
\item{x}{A numeric vector for which rational approximations are required.}

\item{eps}{An absolute error tolerance on the approximation}

\item{maxConv}{An upper limit on the number of convergents that the continued
fraction expansion may employ.  The fraction is terminated once the desired
accuracy is met (or the upper limit is about to be exceeded).}
}
\value{
A 3 column matrix giving, respectively, the numerators, denominators
and number of convergents needed to achieve the error tolerance, in the columns
}
\description{
This is a behind-the-scenes function not likely to be used other than
internally within the package.  It computes the rational approximations for
each value in the principal argument.
}
\section{Functions}{
\itemize{
\item \code{rat}: C++ version of the same function used for speed

\item \code{.ratr}: Workhorse function for a single value
}}
\examples{
fractional(base::pi)
ratr(base::pi)

set.seed(123)
(u <- matrix(runif(10), 2, 5))
(ru <- ratr(u, eps = 1.0e-3, maxConv = 6))
(abs_error <- matrix(abs(u - ru[, 1]/ru[, 2]), 2, 5))

}
\seealso{
\code{\link{rat}} which has the same functionality, but is coded in \code{C++}.
}

