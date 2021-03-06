% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kselect.R
\name{k.select}
\alias{k.select}
\title{Estimate number of clusters}
\usage{
k.select(x, range = 2:7, B = 20, r = 5, threshold = 0.8, scheme_2 = TRUE)
}
\arguments{
\item{x}{a \code{data.frame} of the data set}

\item{range}{a \code{vector} of \code{integer} values, of the possible numbers of clusters k}

\item{B}{number of bootstrap re-samplings}

\item{r}{number of runs of k-means}

\item{threshold}{the threshold for determining k}

\item{scheme_2}{\code{logical} \code{TRUE} if scheme 2 is used, \code{FASLE} if scheme 1 is used}
}
\value{
\describe{
\item{\code{profile}}{a \code{vector} of Smin measures for determining k}
\item{\code{k}}{\code{integer} estimated number of clusters}
}
}
\description{
Estimate number of clusters by bootstrapping stability
}
\details{
This function estimates the number of clusters through a bootstrapping
approach, and a measure Smin, which is based on an observation-wise similarity
among clusterings. The number of clusters k is selected as the largest number of
clusters, for which the Smin is greater than a threshold. The threshold is often
selected between 0.8 ~ 0.9. Two schemes are provided. Scheme 1 uses the clustering
of the original data as the reference for stability calculations. Scheme 2 searches 
acrossthe clustering samples that gives the most stable clustering.
}
\examples{
\dontrun{
set.seed(1)
data(wine)
x0 <- wine[,2:14]
x <- scale(x0)
k.select(x, range = 2:10, B=20, r=5, scheme_2 = TRUE)
}
}
\references{
Bootstrapping estimates of stability for clusters, observations and model selection.
Han Yu, Brian Chapman, Arianna DiFlorio, Ellen Eischen, David Gotz, Matthews Jacob and Rachael Hageman Blair.
}
\author{
Han Yu
}
