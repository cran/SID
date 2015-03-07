\name{computePathMatrix}
\alias{computePathMatrix}
\title{
auxiliary file for SID: computes a path matrix efficiently (can probably be made faster)
}
\description{
auxiliary file for SID: computes a path matrix efficiently (can probably be made faster)
This function takes an adjacency matrix G from a DAG and computes a path matrix for which entry(i,j) being one means that there is a directed path from i to j the diagonal will also be one.
}
\usage{
computePathMatrix(G, spars=FALSE)
}
\arguments{
  \item{G}{
graph.
}
  \item{spars}{
boolean indicating whether G is a sparse matrix.
}
}
\value{
pathMatrix
}
\author{
Jonas Peters <jonas.peters@tuebingen.mpg.de>
}

\seealso{
\code{\link[SID]{structIntervDist}}
\code{\link[SID]{computePathMatrix2}}
}

