\name{wollbold}
\alias{wollbold}
\docType{data}
\title{Gene expression, annotations and clinical data from Wollbold et al. 2009}
\description{
This dataset contains the normalized gene expression, annotations and clinical data from the work published in Wollbold et al. 2009.
}
\usage{data(wollbold)}
\format{
  ExpressionSet with 54675 features and 60 samples, containing:
  \itemize{
    \item \code{exprs(wollbold)}: Matrix containing normalized (Robust Multi-Array average expression measure normalization from R \code{rma}) gene expressions as measured by Affymetrix hgu133plus2 technology (single-channel, oligonucleotides).
    \item \code{fData(wollbold)}: AnnotatedDataFrame containing annotations of Affy microarray platform hgu133plus2.
    \item \code{pData(wollbold)}: AnnotatedDataFrame containing Clinical information of the patients with rheumatic diseases whose synovial membrane samples obtained from tissue excision were hybridized.
    \item \code{experimentData(wollbold)}: MIAME object containing information about the dataset.
    \item \code{annotation(wollbold)}: Name of the affy chip.
  }
}
\details{
  This dataset represents the study published by Wollbold et al. 2009.
\itemize{
\item \code{Abstract}: Background: Due to the rapid data accumulation on pathogenesis and progression of chronic inflammation, there is an increasing demand for approaches to analyse the underlying regulatory networks. For example, rheumatoid arthritis (RA) is a chronic inflammatory disease, characterised by joint destruction and perpetuated by activated synovial fibroblasts (SFB). These abnormally express and/or secrete pro-inflammatory cytokines, collagens causing joint fibrosis, or tissue- degrading enzymes resulting in destruction of the extra-cellular matrix (ECM). We applied three methods to analyse ECM regulation: data discretisation to filter out noise and to reduce complexity, Boolean network construction to implement logic relationships, and formal concept analysis (FCA) for the formation of minimal, but complete rule sets from the data. Results: First, we extracted literature information to develop an interaction network containing 18 genes representing ECM formation and destruction. Subsequently, we constructed an asynchronous Boolean network with biologically plausible time intervals for mRNA and protein production, secretion, and inactivation. Experimental gene expression data was obtained from SFB stimulated by TGFB1 or by TNFa and discretised thereafter. The Boolean functions of the initial network were improved iteratively by the comparison of the simulation runs to the experimental data and by exploitation of expert knowledge. This resulted in adapted networks for both cytokine stimulation conditions. The simulations were further analysed by the attribute exploration algorithm of FCA, integrating the observed time series in a fine-tuned and automated manner. The resulting temporal rules yielded new contributions to controversially discussed aspects of fibroblast biology (e.g., considerable expression of TNF and MMP9 by fibroblasts stimulation) and corroborated previously known facts (e.g., co-expression of collagens and MMPs after TNF? stimulation), but also revealed some discrepancies to literature knowledge (e.g., MMP1 expression in the absence of FOS). Conclusion: The newly developed method successfully and iteratively integrated expert knowledge at different steps, resulting in a promising solution for the in-depth understanding of regulatory pathways in disease dynamics. The knowledge base containing all the temporal rules may be queried to predict the functional consequences of observed or hypothetical gene expression disturbances. Furthermore, new hypotheses about gene relations were derived which await further experimental validation.
} 
}
\source{
\url{http://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE13837}
}
\references{
Johannes Wollbold, Rene Huber, Dirk Pojlers, Dirk Koczan, Reinhard Guthke, Raimund W Kinne and Ulrike Gausmann (2009). "Adapted Boolean Network Models for Extracellular Matrix Formation". \emph{BMC Systems Biology}, \bold{3}:7
}
\examples{
## load Biobase package
library(Biobase)
## load the dataset
data(wollbold)
## show the first 5 rows and columns of the expression data
exprs(wollbold)[1:5,1:5]
## show the first 6 rows of the phenotype data
head(pData(wollbold))
## show first 20 feature names
featureNames(wollbold)[1:20]
## show the experiment data summary
experimentData(wollbold)
## show the used platform
annotation(wollbold)
## show the abstract for this dataset
abstract(wollbold)
}
\keyword{datasets}