loadPrice <- function(...) {
    url = 'https://raw.githubusercontent.com/algo-stocks/data/master/data/'
    for (ticker in c(...)) {
        if (
            grepl('VN30', ticker, ignore.case=TRUE)
            || grepl('vnindex', ticker, ignore.case=TRUE)
            || grepl('gold', ticker, ignore.case=TRUE)
            || grepl('usd', ticker, ignore.case=TRUE)
        ) {
            price = read.csv(paste(url, 'VN30F/', ticker, '/Price.csv', sep=''))
            if (!grepl('E1VFVN30', ticker, ignore.case=TRUE)) {
                price$unadjusted = price$close
                price$putthrough = 0
            }
        } else {
            price = read.csv(paste(url, 'VNX/', ticker, '/Price.csv', sep=''))
        }
        price$ticker = ticker
        price$date = as.Date(price$date, format="%Y-%m-%d")
        if (exists('result')) {
            result = bind_rows(result, price)
        } else {
            result = price
        }
    }
    return(result)
}
