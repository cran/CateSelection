\name{MDR.high.forward}
\alias{MDR.high.forward}

\title{
MDR based selection methods for higher-order interacations
}
\description{
MDR based three-stage selection methods for higher-order interacations
}
\usage{
MDR.high.forward(x, y, order = NULL, trace = NULL, alpha = NULL, beta = NULL, 
pvalue = NULL, r2 = NULL, ...)
}

\arguments{
  \item{x}{
A matrix of genotypic data/genetic markers (predictor variables), where the rows are the samples and the columns are the predictors.
}
  \item{y}{
A numeric vector of phenotypic data (response variable).
}
  \item{order}{
The order of interaction. Default is 3.
}
  \item{trace}{
Show computations? Default FALSE.
}
  \item{alpha}{
Cutoff value for the difference  (D1) of coefficient of determination between single modles with and without MRD interactions in the first stage. Default is 0.1.
}
  \item{beta}{
Cutoff value for the difference  (D2) of coefficient of determination between single modle with p interactions and single model with (p-1) interactions in the second stage. Default is 0.05.
}
  \item{pvalue}{
Cutoff value  for p-value in the third stage. Default is 0.01.
}
  \item{r2}{
Cutoff value for the difference of coefficient of determination in the third stage. Default is 0.02.
}
  \item{\dots}{
Other arguments for future methods.
}
}

\value{
It returns a matrix with the index of selected interactive predictors, and the corresponding adjusted coefficient of determination.
}

\references{
Yi Xu, Jixiang Wu, Detecting higher-order interactions of SNP markers associated with three barley agronomic traits (unpublished). 
}




\examples{
data(data2)
y <- data2[,1]
x <- data2[,-1]
res <- MDR.high.forward(x,y,order=3)
res
}

\keyword{MDR.high.forward}

