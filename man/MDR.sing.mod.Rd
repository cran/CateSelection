\name{MDR.sing.mod}
\alias{MDR.sing.mod}

\title{
Single Model with and without MDR interactions
}
\description{
Computes coefficient of determination and p-value for both single model with and without MDR interactions
}
\usage{
MDR.sing.mod(x, y, order = NULL, trace = NULL, ...)
}

\arguments{
  \item{x}{
A matrix of genotypic data/genetic markers (predictor variables), where the rows are the samples and the columns are the predictors.
}
  \item{y}{
A numeric vector of phenotypic data (response variable).
}
  \item{order}{
The order of interaction. Default is 2.
}
  \item{trace}{
Show computations? Default FALSE.
}
  \item{\dots}{
Other arguments for future methods.
}
}

\value{
It returns a matrix with the index of interactive predictors, and the corresponding p-value, and adjusted coefficient of determination both for single models with and without MRD interactions.
}

\references{
Yi Xu, Jixiang Wu, Detecting higher-order interactions of SNP markers associated with three barley agronomic traits (unpublished).
}


\examples{
data(data2)
y <- data2[,1]
x <- data2[,-1]
res <- MDR.sing.mod(x,y,order=3)
res
}

\keyword{MDR.sing.mod}

