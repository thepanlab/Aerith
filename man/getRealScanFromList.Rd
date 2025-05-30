% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotAAspectra.R
\name{getRealScanFromList}
\alias{getRealScanFromList}
\title{Convert one scan in list format to AAspectra class}
\usage{
getRealScanFromList(scan)
}
\arguments{
\item{scan}{one scan in list format}
}
\value{
AAspectra object
}
\description{
Convert one scan in list format to AAspectra class
}
\examples{
demo_file <- system.file("extdata", "demo.FT2", package = "Aerith")
a <- readAllScanMS2(demo_file)
b <- getRealScanFromList(a[[1]])
plot(b)
}
