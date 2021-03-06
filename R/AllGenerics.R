#' @include RNAmodR.R
NULL

#' @name Modifier-functions
#' @title Modifier/ModifierSet functions
NULL

#' @name SequenceData-functions
#' @title SequenceData/SequenceDataSet/SequenceDataList/SequenceDataFrame 
#' functions
NULL

# ROC functions ----------------------------------------------------------------

#' @rdname plotROC
#' @export
setGeneric( 
  name = "plotROC",
  signature = "x",
  def = function(x, coord, ...)
    standardGeneric("plotROC")
)

# accessors --------------------------------------------------------------------

#' @rdname Modifier-functions
#' @export
setGeneric( 
  name = "bamfiles",
  def = function(x) standardGeneric("bamfiles")
)
#' @rdname Modifier-functions
#' @export
setGeneric( 
  name = "mainScore",
  def = function(x) standardGeneric("mainScore")
)
#' @rdname modify
#' @name modify
#' @export
setGeneric( 
  name = "modifications",
  def = function(x, ...) standardGeneric("modifications")
) 
#' @rdname Modifier-functions
#' @export
setGeneric( 
  name = "modifierType",
  def = function(x) standardGeneric("modifierType")
)
#' @rdname Modifier-functions
#' @export
setGeneric( 
  name = "modType",
  def = function(x) standardGeneric("modType")
)
#' @rdname Modifier-functions
#' @export
setGeneric( 
  name = "dataType",
  def = function(x) standardGeneric("dataType")
)
#' @rdname SequenceData-functions
#' @export
setGeneric( 
  name = "replicates",
  def = function(x) standardGeneric("replicates")
)
#' @rdname Modifier-functions
#' @export
setGeneric( 
  name = "sequenceData",
  def = function(x) standardGeneric("sequenceData")
)
#' @rdname stats
#' @export
setGeneric( 
  name = "stats",
  signature = c("x","file"),
  def = function(x, file, ...) standardGeneric("stats")
)
#' @rdname Modifier-functions
#' @export
setGeneric( 
  name = "sequences",
  def = function(x, ...) standardGeneric("sequences")
)
#' @rdname Modifier-functions
#' @export
setGeneric( 
  name = "validAggregate",
  def = function(x) standardGeneric("validAggregate")
)
#' @rdname Modifier-functions
#' @export
setGeneric( 
  name = "validModification",
  def = function(x) standardGeneric("validModification")
)

#' @rdname settings
#' @export
setGeneric( 
  name = "settings",
  def = function(x, name = NULL) standardGeneric("settings")
)
#' @rdname settings
#' @export
setGeneric( 
  name = "settings<-",
  def = function(x, name, value) standardGeneric("settings<-")
)
# Modifier/ModifierSet functions -----------------------------------------------

#' @rdname modify
#' @export
setGeneric( 
  name = "modify",
  signature = "x",
  def = function(x, ...) standardGeneric("modify")
)

#' @rdname modify
#' @export
setGeneric( 
  name = "findMod",
  signature = "x",
  def = function(x) standardGeneric("findMod")
)


# SequenceData/SequenceDataSet/SequenceDataList/Modifier functions -------------

#' @rdname aggregate
#' @export
setGeneric( 
  name = "aggregate",
  signature = "x",
  def = function(x, ...) standardGeneric("aggregate")
)
#' @rdname aggregate
#' @export
setGeneric( 
  name = "aggregateData",
  def = function(x, ...) standardGeneric("aggregateData")
) 
#' @rdname aggregate
#' @export
setGeneric( 
  name = "getAggregateData",
  signature = "x",
  def = function(x) standardGeneric("getAggregateData")
)
#' @rdname aggregate
#' @export
setGeneric( 
  name = "hasAggregateData",
  signature = "x",
  def = function(x) standardGeneric("hasAggregateData")
) 

# SequenceData/SequenceDataSet/SequenceDataList/Modifier/ModifierSet -----------

#' @rdname subsetByCoord
#' @export
setGeneric( 
  name = "subsetByCoord",
  signature = c("x", "coord"),
  def = function(x, coord, ...)
    standardGeneric("subsetByCoord")
)
#' @rdname subsetByCoord
#' @export
setGeneric( 
  name = "labelByCoord",
  signature = c("x", "coord"),
  def = function(x, coord, ...)
    standardGeneric("labelByCoord")
)
#' @rdname plotData
#' @export
setGeneric(
  name = "plotData",
  signature = "x",
  def = function(x, name, from = 1L, to = 30L, type, ...)
    standardGeneric("plotData")
)
#' @rdname plotData
#' @export
setGeneric(
  name = "plotDataByCoord",
  signature = c("x","coord"),
  def = function(x, coord, type, window.size = 15L, ...)
    standardGeneric("plotDataByCoord")
)
#' @rdname plotData
#' @export
setGeneric(
  name = "getDataTrack",
  signature = "x",
  def = function(x, name, ...)
    standardGeneric("getDataTrack")
)

# ModifierSet functions --------------------------------------------------------

#' @rdname compareByCoord
#' @export
setGeneric( 
  name = "compare",
  signature = "x",
  def = function(x, name, pos = 1L, ...)
    standardGeneric("compare")
) 
#' @rdname compareByCoord
#' @export
setGeneric( 
  name = "compareByCoord",
  signature = c("x","coord"),
  def = function(x, coord, ...)
    standardGeneric("compareByCoord")
) 
#' @rdname compareByCoord
#' @export
setGeneric( 
  name = "plotCompare",
  signature = "x",
  def = function(x, name, pos = 1L, normalize, ...)
    standardGeneric("plotCompare")
) 
#' @rdname compareByCoord
#' @export
setGeneric( 
  name = "plotCompareByCoord",
  signature = c("x","coord"),
  def = function(x, coord, normalize, ...)
    standardGeneric("plotCompareByCoord")
) 

# development functions --------------------------------------------------------

#' @rdname RNAmodR-development
setGeneric( 
  name = "constructModRanges",
  signature = c("range","data"),
  def = function(range, data, modType, scoreFun, source, type)
    standardGeneric("constructModRanges")
)

#' @rdname RNAmodR-development
#' @export
setGeneric( 
  name = "getData",
  signature = c("x","bamfiles","grl","sequences","param"),
  def = function(x, bamfiles, grl, sequences, param, args)
    standardGeneric("getData")
) 
