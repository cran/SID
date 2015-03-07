\name{randomDAG}
\alias{randomDAG}
\title{
outputs the adjacency matrix of a randomly generated directed acyclic graph (DAG). 
}
\description{
After simulating a random topological order first (the order can also be prespecified), the algorithm connects two nodes with the porbability
probConnect. 
}
\usage{
randomDAG(p, probConnect, causalOrder = sample(p, p, replace = FALSE))
}
\arguments{
  \item{p}{
number of nodes.
}
  \item{probConnect}{
probability of connecting two nodes, determines the sparsity of the graph. Choosing probConnect = 2/(p-1), for example, leads to an expected number of p nodes.
}
  \item{causalOrder}{
OPTIONAL: causal or topological order of the nodes. If not provided, the topological order is chosen randomly.
}
}
\value{
p x p adjacency matrix that describes a directed acyclic graph (DAG) with p nodes. The entry (i,j) equals one if and only if there is an edge from i to j.
}
\author{
Jonas Peters <jonas.peters@tuebingen.mpg.de>
}

\seealso{
\code{\link[SID]{structIntervDist}}
\code{\link[SID]{hammingDist}}
}
\examples{
randomDAG(p = 5, probConnect = 0.6)
}
\keyword{ randomDAG }
\keyword{ causal (topological) order }
