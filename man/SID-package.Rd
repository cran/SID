\name{SID-package}
\alias{SID-package}
\docType{package}
\title{
Structural Intervention Distance (SID) (package)
}
\description{
The package allows to compute the structural intervention distance (SID) between two graphs. This (pre-)metric evaluates graphs from a causal inference point of view. The package also contains a function for computing the Hamming distance and to generate random DAGs. 
}
\details{
\tabular{ll}{
Package: \tab SID\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2015-03-07\cr
License: \tab FreeBSD\cr
}
Computing the Structural Intervention Distance. The algorithm can be called with \code{structIntervDist}.
}
\author{
Jonas Peters <jonas.peters@tuebingen.mpg.de>
}
\references{
J. Peters, P. B\"uhlmann: Structural intervention distance (SID) for evaluating causal 
graphs, Neural Computation 27, pages 771-799, 2015
}
\seealso{
\code{\link[SID]{randomDAG}}
\code{\link[SID]{structIntervDist}}
\code{\link[SID]{hammingDist}}
}

