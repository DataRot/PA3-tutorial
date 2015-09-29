
## orderdata: output data.frame with the ordered rows

## order(): sort by default in decreasing order the values. In case of numbers
## from the smallest to the biggest, in case of characters from A to Z. This 

## function returns a vector of indexes with the ordered rows. 
## > order(data[,1])
## [1] 2 4 5 6 3 1

## data[order(),] subsets the data frame using the indexes above
sort_by_column <- function (data, column1, column2 = 4){
        
        ordered_by <- numeric() # data df  new index.
        # guts of  main function - returns new set ordered of data indexes. 
        ordered_by <- order(data[,column1],data[,column1], decreasing = TRUE)
        
        orderdata <- data[ordered_by,]
        return(orderdata)
}