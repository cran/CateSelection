\name{sing.mod}
\alias{sing.mod}

\title{
Single MDR Model
}
\description{
Computes coefficient of determination and p-value for each single (marginal) MDR model
}
\usage{
sing.mod(x, y, order = NULL, alpha = NULL, beta = NULL, delete = NULL, trace = NULL, ...)
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
  \item{alpha}{
Cutoff value for p-value. Default is 0.01. If "delete" is TURE, the interactive predictors in the model with the p-value greater than "alpha" will be removed in the final results.
}
  \item{beta}{
Cutoff value for coefficient of determination.  Default is 0.01. If "delete" is TURE, the interactive predictors in the model with the coefficient of determination smaller than "beta" will be removed in the final results.
}
  \item{delete}{
Logistic value. Default FALSE; TRUE will remove the interactive predictors according two cutoff values "alpha" and "beta". 
}
  \item{trace}{
Show computations? Default FALSE.
}
  \item{\dots}{
Other arguments for future methods.
}
}

\value{
It returns a matrix with the index of interactive predictors, and the corresponding p-value, coefficient of determination, and adjusted coefficient of determination. 
}

\references{
Yi Xu, Jixiang Wu, Detecting epistatic effects among SNP markers associated with three barley traits by a MDR based forward selection method (unpublished).
}


\examples{
data(data1)
y <- data1[,1]
x <- data1[,-1]
res <- sing.mod(x,y,order=2)
res
}

\keyword{sing.mod}

