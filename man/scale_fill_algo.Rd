% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale-fill.R
\name{scale_fill_algo}
\alias{scale_fill_algo}
\title{Algoritma fill scale}
\usage{
scale_fill_algo(discrete = TRUE, mode = "light", ...)
}
\arguments{
\item{discrete}{A \code{logical} to specify whether to scale the fill in
discrete or continuous scale. Default to \code{TRUE}.}

\item{mode}{The theme's mode; either \code{"light"} or \code{"dark"} mode.}

\item{...}{Other arguments passed on to \code{discrete_scale()}
or \code{scale_fill_gradientn()}.}
}
\description{
Algoritma fill scale
}
\details{
Will be updated soon.
}
\examples{

# import libs
library(ggplot2)
library(algothemes)

# an example visualization
p <- ggplot(iris, aes(x = Species, y = Sepal.Length)) +
  geom_boxplot(aes(fill = Species))

p

# with theme_algo and scale_fill_algo
p +
  theme_algo() +
  scale_fill_algo()

}
