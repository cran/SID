\name{structIntervDist}
\alias{structIntervDist}
\title{
Structural Intervention Distance (SID)
}
\description{
computes the structural intervention distance (SID) between two graphs; it evaluates graphs from a causal inference point of view.
}
\usage{
structIntervDist(trueGraph, estGraph, output = FALSE, spars = FALSE)
}
\arguments{
  \item{trueGraph}{
p x p adjacecncy matrix; it must be a directed acyclic graph (DAG)
}
  \item{estGraph}{
again a p x p adjacecncy matrix; it can be either a DAG or a completed partially directed graph (CPDAG) that represents a Markov equivalence class.
}
  \item{output}{
boolean (TRUE/FALSE) that indicates whether output shall be shown
}
  \item{spars}{
boolean (TRUE/FALSE) that indicates whether the input matrices trueGraph and estGraph are sparse. If matrices are indeed large and sparse this increases the speed of the algorithm.
}
}
\details{The structural intervention distance (SID) considers each pair (i,j) and checks whether the parents of i in estGraph is a valid adjustment set in trueGraph for the causal effect from i to j. If it is, estimating the causal effect from i to j using parent adjustment in estGraph is a correct procedure, independently of the distribution. If it is not, the pair (i,j) contributes a mistake of one to the overall structural intervention distance. 

The SID satisfies the properties of a pre-metric; we have SID(G,G) = 0 and 0 <= SID(G1,G2) <= p(p-1), where p is the number of nodes. The SID is not symmetric: in general, we have SID(G1, G2) != SID(G2,G1). Furthermore, the SID can be zero although the two graphs are not the same.

If estGraph is a completed partially directed acyclic graph (CPDAG), that is it describes a Markov equivalence class, the SID outputs a lower and an upper bound of the SID, that correspond to the best and worst DAG in the equivalence class, respectively.
}
\value{
The main function is structIntervDist. It takes two DAGs (adjacency matrices) of the same dimension as input and provides a list with 
\item{sid }{the SID}
\item{sidUpperBound }{relevant if estGraph is a CPDAG: it is the highest SID that can be achieved by a graph within the Markov equivalence class ("worst DAG")}
\item{sidLowerBound }{relevant if estGraph is a CPDAG: it is the lowest SID that can be achieved by a graph within the Markov equivalence class ("best DAG")}
\item{incorrectMat }{the matrix of incorrect interventional distributions; its sum equals $sid}
}
\references{
J. Peters, P. B\"uhlmann: Structural intervention distance (SID) for evaluating causal graphs, Neural Computation 27, pages 771-799, 2015
}
\author{
Jonas Peters <jonas.peters@tuebingen.mpg.de>
}
\seealso{
\code{\link[SID]{hammingDist}}
\code{\link[SID]{randomDAG}}
}
\examples{
G <- rbind(c(0,1,1,1,1),
           c(0,0,1,1,1),
           c(0,0,0,0,0),
           c(0,0,0,0,0),
           c(0,0,0,0,0))

H1 <- rbind(c(0,1,1,1,1),
            c(0,0,1,1,1),
            c(0,0,0,1,0),
            c(0,0,0,0,0),
            c(0,0,0,0,0))

H2 <- rbind(c(0,0,1,1,1),
            c(1,0,1,1,1),
            c(0,0,0,0,0),
            c(0,0,0,0,0),
            c(0,0,0,0,0))

cat("true DAG G:\n")
show(G)
cat("\n")
cat("==============","\n")
cat("\n")
cat("estimated DAG H1:\n")
show(H1)
sid <- structIntervDist(G,H1)
shd <- hammingDist(G,H1)
cat("SHD between G and H1: ",shd,"\n")
cat("SID between G and H1: ",sid$sid,"\n")
#cat("The matrix of incorrect interventional distributions is: ","\n")
#show(sid$incorrectMat)
cat("\n")
cat("==============","\n")
cat("\n")
cat("estimated DAG H2:\n")
show(H2)
sid <- structIntervDist(G,H2)
shd <- hammingDist(G,H2)
cat("SHD between G and H2: ",shd,"\n")
cat("SID between G and H2: ",sid$sid,"\n")
cat("The matrix of incorrect interventional distributions is: ","\n")
show(sid$incorrectMat)

readline("The SID can also be applied to CPDAGs. Please press enter...")
cat("\n")
cat("==============","\n")
cat("\n")
cat("estimated CPDAG H1c:\n")
H1c <- rbind(c(0,1,1,1,1),c(1,0,1,1,1),c(1,1,0,1,0),c(1,1,1,0,0),c(1,1,0,0,0)) 
show(H1c)
sid <- structIntervDist(G,H1c)
cat("SID between G and H1: \n")
cat("lower bound: ",sid$sidLowerBound," upper bound: ", sid$sidUpperBound, "\n")
cat("\n")
}
\keyword{Causality }
\keyword{Adjacency graphs }

