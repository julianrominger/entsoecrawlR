% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scrapeData.R
\name{getForecastGeneration}
\alias{getForecastGeneration}
\title{getForecastGeneration}
\usage{
getForecastGeneration(startDate, endDate)
}
\arguments{
\item{startDate}{date format is YYYY-MM-DD Distinguishing of hours or minutes is not allowed. If you e.g. only need half of a day, please subset the data yourself.}

\item{endDate}{date format is YYYY-MM-DD Distinguishing of hours or minutes is not allowed. If you e.g. only need half of a day, please subset the data yourself.}
}
\value{
a data.frame object with the forecasted power generation and consumption of the four german TSO.
}
\description{
This method retrieves the forecasted energy generation and consumption for the four german TSO and the Netzregelverbund (summation).
The resolution of the data is in one hour timesteps (CET (UTC+1) / CEST (UTC+2)) and the values are presented in MW.

NOTE:
 - Always downloads for the whole year and then subsets the data to the given time period (3-4MB). This is done for each TSO
 - For every request a Login POST request is needed. For Login a pseudo account is used.
}
\examples{
loadData <- getForecastGeneration("2017-01-01", "2017-06-30")

}
