datafolder="/Users/david/Dropbox (Personal)/Learning/HopkinsDataScience/AirPollutionAssignment/specdata"

PPG <- read.csv(file=sprintf("%s/PPG.csv", datafolder), sep = ";")

pollutantmean <- function(directory, pollutant, id = 1:332) {

        # directory is a char vector of length 1 indicating the location of the 
        # CSV files
        
        # 'pollutant' is a char vec of L 1 indicating name of pollutant for 
        # which we will calculate the mean; either "sulfate" or "nitrate"
        
        # 'id' is an integer vector indicating the monitor ID numbers to be used
        
        # Return the mean of the pollutant across all monitors list in the 'id'
        # vector (ignoring NA values). Do not round the result!

        # prototype to remove NA: y <- x[!is.na(x)]
        
        for()
        PPG <- read.csv(file=sprintf("%s/PPG.csv", datafolder), sep = ";")
        
        files <- list.files(path = datafolder, pattern = "*.csv", full.names = T, recursive = FALSE)
        lapply(files, function(x) {
                t <- read.table(x, header=T) # load file
                # apply function
                
        })
}
        

        