% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util_funcs.R
\name{d_biv_normal}
\alias{d_biv_normal}
\title{Produce weights for bivariate normal kernel for upper left triangular quadrant
To save computing time, some building blocks are passed into
the function}
\usage{
d_biv_normal(Tmp.vec, XY, Sigma)
}
\arguments{
\item{Tmp.vec}{A length n vector for holding integrals of bivariate normal}

\item{XY}{2xn matrix giving x and y distances}

\item{Sigma}{vector of length 2 giving sd of bivariate normal in the x and y directions}
}
\value{
a filled vector that holds unnormalized redistribution kernel values
}
\description{
Produce weights for bivariate normal kernel for upper left triangular quadrant
To save computing time, some building blocks are passed into
the function
}
\author{
Paul Conn \email{paul.conn@noaa.gov}
}
\keyword{bivariate}
\keyword{kernel}
\keyword{normal,}
\keyword{weight}
