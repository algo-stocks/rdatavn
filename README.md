# R-data from VN

## Build and Test
```sh
rm -f rdatavn_0.1.0.tar.gz && R CMD build .
R CMD check rdatavn_0.1.0.tar.gz
R CMD check --as-cran rdatavn_0.1.0.tar.gz
```

```R
library(package=rdatavn, lib.loc='rdatavn.Rcheck')
```

## Install
```R
if (!require(rdatavn)) {
    if (!require(devtools)) install.packages('devtools', type="both")
    library(devtools)
    install_github('algo-stocks/rdatavn')
}
library(rdatavn)
```

## Update
```R
install_github('algo-stocks/rdatavn', force = TRUE)
```
