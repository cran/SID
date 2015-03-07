\name{hammingDist}
\alias{hammingDist}
\title{
Hamming Distance
}
\description{
Computes the Hamming distance between two graph objects.
}
\usage{
hammingDist(G1, G2, allMistakesOne = TRUE)
}
\arguments{
  \item{G1}{
p x p adjacency matrix of the first graph. 
}
  \item{G2}{
p x p adjacency matrix of the second graph.
}
  \item{allMistakesOne}{
boolean variable (TRUE/FALSE) that indicates whether all mistakes should be counted as one. E.g., if it is set to FALSE the Hamming distance between X -> Y and X <- Y is two and one if it set to TRUE. 
}
}
\details{
The Hamming distance between two graphs counts the number of edges, in which the graphs do not coincide. allMistakesOne determines whether a reversed edge counts as two or as one mistake. The Hamming distance is symmetric, that is hammingDist(G1,G2) = hammingDist(G2,G1). 
}
\value{
The method outputs the computed Hamming distance.
}
\author{
Jonas Peters <jonas.peters@tuebingen.mpg.de>
}
\seealso{
\code{\link[SID]{structIntervDist}}
}
\keyword{ Hamming distance }

