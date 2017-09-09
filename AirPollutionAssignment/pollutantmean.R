pollutantmean <- function(directory, pollutant, id) {

        # prototype to remove NA: y <- x[!is.na(x)]
        files <- list.files(path=directory, pattern = "*.csv", full.names = T)
        files <- files[id]
        allMeans <- NULL
        allMons <- data.frame()
        
        for (i in seq_along(files)) {
                filename = files[[i]]
                # cat(filename)
                # read data in
                df <- read.csv(filename)
                allMons <- rbind(allMons, df)
                
                # try to get sulfate
                if (pollutant == "sulfate") {
                        allMeans <- mean(allMons[,"sulfate"][!is.na(allMons[,"sulfate"])])
                        
                }
                if (pollutant == "nitrate") {
                        allMeans <- mean(allMons[,"nitrate"][!is.na(allMons[,"nitrate"])])
                }
        }
        return(allMeans)
}

complete <- function(directory, id) {
        files <- list.files(path=directory, pattern = "*.*", full.names = T)
        files <- files[id]
        completes <- data.frame(id = NULL, nobs = NULL)
        
        for (i in seq_along(files)) {
                filename = files[[i]]
                df <- read.csv(filename)
                result <- data.frame(id = filename, nobs = sum(complete.cases(df)))
                completes <- rbind(completes, result)
        }
        return(completes)
}    