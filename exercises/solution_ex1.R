# download World Bank Data on Nigeria (CSV format)

# Q1
link <- "https://extranet.who.int/tme/generateCSV.asp?ds=estimates"    

# Q2
csvFile <- 'who-tb-csv'

# Q3
result <- download.file(link, csvFile)
result

# Q4
isPresent <- file.exists(csvFile)
isPresent

# Q5
tbData <- read.csv(csvFile, stringsAsFactors = FALSE)

# Q6
dim(tbData)

# Q7 
tbData_min <- tbData[, c(1, 5:7)]
tbData_min
str(tbData_min)
View(tbData_min)

# Ad lib: What else would you want us to do with these data?