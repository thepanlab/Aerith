% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotPSMs.R
\name{getRealScans}
\alias{getRealScans}
\title{get real scans  from scans list of one ft file}
\usage{
getRealScans(ft, scanNumbers)
}
\arguments{
\item{ft}{Scans list of one ft file}

\item{scanNumbers}{Integer vector of scan number of PSMs}
}
\value{
List of AAspectra objects of real scans
}
\description{
get real scans  from scans list of one ft file
}
\examples{
scanNumbers <- 3:7
ft2 <- readAllScanMS2("demo.FT2")
realScans <- getRealScans(ft2, scanNumbers)
}
