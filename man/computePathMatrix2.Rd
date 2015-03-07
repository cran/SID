\name{computePathMatrix2}
\alias{computePathMatrix2}
\title{
auxiliary file for SID: computes a path matrix efficiently (can probably be made faster)
}
\description{
auxiliary file for SID: computes a path matrix efficiently (can probably be made faster)
The only difference to the function computePathMatrix is that this function changes the graph by removing all edges that leave condSet. If condSet is empty, it just returns PathMatrix1.
}
\usage{
computePathMatrix2(G,condSet,PathMatrix1, spars=FALSE)
}
\arguments{
  \item{G}{
graph.
}
  \item{condSet}{
set of variables
}
  \item{PathMatrix1}{
PathMatrix1
}
  \item{spars}{
boolean indicating whether the matrices are sparse
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
\code{\link[SID]{computePathMatrix}}
}

