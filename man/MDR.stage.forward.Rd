\name{MDR.stage.forward}
\alias{MDR.stage.forward}

\title{
MDR based forward selection method
}
\description{
MDR based forward selection method for association mapping
}
\usage{
MDR.stage.forward(x, y, order = NULL, s1.rsquared = NULL, s1.pvalue = NULL, 
s2.rsquared = NULL, s2.pvalue = NULL, max.step = NULL, trace = NULL, ...)
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
  \item{s1.rsquared}{
Cutoff value for coefficient of determination in the first stage. Default is 0.02.
}
  \item{s1.pvalue}{
Cutoff value for p-value in the first stage. Default is 0.01.
}
  \item{s2.rsquared}{
Cutoff value for coefficient of determination in the second stage. Default is 0.02.
}
  \item{s2.pvalue}{
Cutoff value for p-value in the second stage. Default is 0.01.
}
  \item{max.step}{
The maximum selection step. Default is 100.
}
  \item{trace}{
Show computations? Default FALSE.
}
  \item{\dots}{
Other arguments for future methods.
}
}

\value{
It returns a matrix with the index of selected interactive predictors, and the corresponding adjusted coefficient of determination for each step. 
}

\references{
Yi Xu, Jixiang Wu, Detecting epistatic effects among SNP markers associated with three barley traits by a MDR based forward selection method (unpublished).
}


\examples{
data(data1)
y <- data1[,1]
x <- data1[,-1]
res <- MDR.stage.forward(x,y,order=2)
res
}


\keyword{MDR.stage.forward}

