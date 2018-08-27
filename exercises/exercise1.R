# Exercise

link <- "https://extranet.who.int/tme/generateCSV.asp?ds=estimates"
link

csvFile <- 'who-tb.csv'
csvFile

result <- download.file(link, csvFile)
result    # if successful should be 0

isPresent <- file.exists(csvFile)
isPresent

tbData <- read.csv(csvFile)
nrow(tbData)
ncol(tbData)
dim(tbData)

tbDataMin <- tbData[ , c(1, 5:7)]
tbDataMin

dim(tbDataMin)
str(tbDataMin)
View(tbDataMin)
head(tbDataMin)
tail(tbDataMin)
summary(tbDataMin)
