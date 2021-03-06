% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SequenceData-pileup.R
\docType{class}
\name{PileupSequenceData-class}
\alias{PileupSequenceData-class}
\alias{PileupSequenceData}
\alias{PileupSequenceDataFrame-class}
\alias{PileupSequenceDataFrame}
\alias{getData,PileupSequenceData,BamFileList,GRangesList,XStringSet,ScanBamParam-method}
\alias{aggregateData,PileupSequenceData-method}
\alias{getDataTrack,PileupSequenceData-method}
\alias{pileupToCoverage}
\alias{pileupToCoverage,PileupSequenceData-method}
\title{PileupSequenceData}
\usage{
PileupSequenceDataFrame(
  df,
  ranges,
  sequence,
  replicate,
  condition,
  bamfiles,
  seqinfo
)

PileupSequenceData(bamfiles, annotation, sequences, seqinfo, ...)

\S4method{getData}{PileupSequenceData,BamFileList,GRangesList,XStringSet,ScanBamParam}(x, bamfiles, grl, sequences, param, args)

\S4method{aggregateData}{PileupSequenceData}(x, condition = c("Both", "Treated", "Control"))

\S4method{getDataTrack}{PileupSequenceData}(x, name, ...)

pileupToCoverage(x)

\S4method{pileupToCoverage}{PileupSequenceData}(x)
}
\arguments{
\item{df, ranges, sequence, replicate}{inputs for creating a 
\code{SequenceDataFrame}. See 
\code{\link[=SequenceDataFrame-class]{SequenceDataFrame}}.}

\item{condition}{For \code{\link{aggregate}}: condition for which the data 
should be aggregated.}

\item{bamfiles, annotation, seqinfo, grl, sequences, param, args, ...}{See 
\code{\link[=SequenceData-class]{SequenceData}} and
\code{\link[=SequenceData-functions]{SequenceData-functions}}}

\item{x}{a \code{PileupSequenceData}}

\item{name}{For \code{\link[=plotDataByCoord]{getDataTrack}}: a valid 
transcript name. Must be a name of \code{ranges(x)}}
}
\value{
a \code{PileupSequenceData} object
}
\description{
The \code{PileupSequenceData} aggregates the pileup of called bases per 
position.

\code{PileupSequenceData} contains five columns per data file named using the
following naming convention \code{pileup.condition.replicate}. The five
columns are distinguished by additional identifiers \code{-}, \code{G},
\code{A}, \code{T} and \code{C}.

\code{aggregate} calculates the mean and sd for each nucleotide in the
\code{control} and \code{treated} condition separatly. The results are then
normalized to a row sum of 1.
}
\examples{
# Construction of a PileupSequenceData object
library(RNAmodR.Data)
library(rtracklayer)
annotation <- GFF3File(RNAmodR.Data.example.man.gff3())
sequences <- RNAmodR.Data.example.man.fasta()
files <- c(treated = RNAmodR.Data.example.wt.1())
psd <- PileupSequenceData(files, annotation = annotation,
                          sequences = sequences)
}
