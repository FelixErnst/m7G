% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/AllGenerics.R, R/Modifier-class.R,
%   R/ModifierSet-class.R
\name{settings}
\alias{settings}
\alias{settings<-}
\alias{settings,Modifier-method}
\alias{settings<-,Modifier-method}
\alias{settings,ModifierSet-method}
\alias{settings<-,ModifierSet-method}
\title{Settings for \code{Modifier} objects}
\usage{
settings(x, name = NULL)

settings(x, name) <- value

\S4method{settings}{Modifier}(x, name = NULL)

\S4method{settings}{Modifier}(x) <- value

\S4method{settings}{ModifierSet}(x, name = NULL)

\S4method{settings}{ModifierSet}(x) <- value
}
\arguments{
\item{x}{a \code{Modifier} or \code{ModifierSet} class}

\item{name}{name of the setting to be returned or set}

\item{value}{value of the setting to be set}
}
\value{
If \code{name} is omitted, \code{settings} returns a list of all settings.
If \code{name} is set, \code{settings} returns a single settings or 
\code{NULL}, if a value for \code{name} is not available.
}
\description{
Depending on data prepation, quality and desired stringency of a modification
strategy, settings for cut off parameters or other variables may need to be 
adjusted. This should be rarely the case, but a function for changing these
settings, is implemented as the... \code{settings} function.

For changing values the input can be either a \code{list} or something 
coercible to a \code{list}. Upon changing a setting, the validity of the
value in terms of type(!) and dimensions will be checked. 

If settings have been modified after the data was loaded, the data is 
potentially invalid. To update the data, run the \code{aggregate} or the 
\code{modify} function.
}
\examples{
data(msi,package="RNAmodR")
mi <- msi[[1]]
# returns a list of all settings
settings(mi)
# accesses a specific setting
settings(mi,"minCoverage")
# modification of setting
settings(mi) <- list(minCoverage = 11L)
}
