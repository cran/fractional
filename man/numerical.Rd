% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fractionl.R
\name{numerical}
\alias{numerical}
\alias{numerical.charFrac}
\alias{numerical.default}
\alias{numerical.fractional}
\title{Convert a fractional object to the equivalent numeric object}
\usage{
numerical(vulgar)

\method{numerical}{fractional}(vulgar)

\method{numerical}{charFrac}(vulgar)

\method{numerical}{default}(vulgar)
}
\arguments{
\item{vulgar}{character string form of a class 'fractional' object.}
}
\value{
A \code{numeric} object as represented by its (usually \code{fractional}) display.
}
\description{
Convert an object of class \code{"fractional"} or \code{"charFrac"} to a purely
numeric object.  This is effectively a method function for the \code{.Primitive}
generic function \code{as.numeric} but written as a separate function for purely
technical reasons.
}
\section{Methods (by class)}{
\itemize{
\item \code{fractional}: Method for \code{"fractional"} objects

\item \code{charFrac}: Method for \code{"charFrac"} objects

\item \code{default}: Default method for \code{numerical} generic
}}
\examples{
suppressPackageStartupMessages(library(dplyr))
m <- 2*diag(5)
m[abs(row(m) - col(m)) == 1] <- -1
m  ## How much roundoff error does inverting entail?
(mi  <- solve(m) \%>\% fractional) ## patterned inverse
mi * max(denominators(mi)) ## clearer pattern
m1 <- solve(mi)
range(m1 - m)           ## roundoff still present
m2 <- m1 \%>\% numerical  ## remove roundoff error - hopefully!
identical(m2, m)        ## no roundoff
}

