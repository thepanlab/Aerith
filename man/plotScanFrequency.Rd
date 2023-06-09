% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotScanFrequency.R
\name{plotScanFrequency}
\alias{plotScanFrequency}
\title{Plot scan frequency}
\usage{
plotScanFrequency(info)
}
\arguments{
\item{info}{A data.frame of retention time and precursor mass}
}
\value{
A ggplot of scan frequency per minute
}
\description{
Plot scan frequency
}
\examples{
a <- readAllScanMS2("demo.FT2")
b <- getRetentionTimeAndPrecursorMass(a)
plotScanFrequency(b)
a <- readAllScanMS1("demo.FT1")
b <- getRetentionTimeAndPrecursorMass(a)
plotScanFrequency(b)
}
