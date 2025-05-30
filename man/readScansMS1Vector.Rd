% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{readScansMS1Vector}
\alias{readScansMS1Vector}
\title{read MS1 scans with scanNumber as index in a vector}
\usage{
readScansMS1Vector(ftFile, scanNumbersVector)
}
\arguments{
\item{ftFile}{a ft1 file's full path}

\item{startScanNumber}{read scans starting from this scanNumber}

\item{endScanNumber}{read scans ending at this scanNumber}
}
\value{
a list of MS1 scans with names of scan number
}
\description{
read MS1 scans with scanNumber as index in a vector
}
\examples{
demo_file <- system.file("extdata", "demo.FT1", package = "Aerith")
ft1 <- readScansMS1Vector(demo_file, c(1398, 1503, 1508))
}
