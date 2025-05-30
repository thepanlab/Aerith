% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotScanFrequency.R
\name{plotScanFrequencyMS2}
\alias{plotScanFrequencyMS2}
\title{Plot scan frequency layer of MS2}
\usage{
plotScanFrequencyMS2(info, binwidth = 1)
}
\arguments{
\item{info}{A data.frame of retention time and precursor mass}

\item{binwidth}{A numeric value of bin width. Default is 1}
}
\value{
A ggplot layer of scan frequency of MS2
}
\description{
Plot scan frequency layer of MS2
}
\examples{
demo_file <- system.file("extdata", "demo.FT2", package = "Aerith")
a <- readAllScanMS2(demo_file)
a <- getRetentionTimeAndPrecursorInfo(a)
demo_file <- system.file("extdata", "demo.FT1", package = "Aerith")
b <- readAllScanMS1(demo_file)
b <- getRetentionTimeAndPrecursorInfo(b)
plotScanFrequency(a, binwidth = 0.1, breaks = seq(9, 10, by = 0.2)) + plotScanFrequencyMS2(b, binwidth = 0.1)
}
