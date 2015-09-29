# my sort by column NA
# Using the city data with NA s clean and sort by column.
# its know that column 3 and 4 have textual values.

my_sort_NA <- function(column){
        
        citydat <- read.csv("citiesNA.csv")
        
        # convert column 3 and 4 data into numeric vectors
        for ( i in 3:4){
                # as numeric will create NA by coercing to a vector. 
                citydat[,i] <- suppressWarnings(as.numeric(levels(citydat[,i])[citydat[,i]]))
        }
        
        citydat <- citydat[complete.cases(citydat),]
        citydat
}
