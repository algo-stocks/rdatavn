\name{loadPrice}
\alias{loadPrice}
\title{Load price from github}
\description{
  Load stock(s) price from github
}
\usage{
loadPrice(...)
}
\arguments{
  \item{...}{one or more ticker string(s)}
}
\examples{
## load a ticker data
loadPrice('MWG')

## load multiple tickers
loadPrice('VN30', 'FPT', 'VCB')
}
\keyword{loadPrice}
