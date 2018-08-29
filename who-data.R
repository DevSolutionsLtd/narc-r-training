# Simple Descriptive Statistics with R


## Import the data
## Note: To use this script interactively, make sure
## your Working directory at project root
data <- read.csv('data/whostat2005_healthsystems_prepped.csv',
                 stringsAsFactors = FALSE)

## View the data
View(data)

## Get a summary of the data
summary(data)

## Check the column names for the data
colnames(data)

## Check the variable types of the data
str(data)

## Mean number of physicians
mean(data$No.physicians.per.10000)     # failed

## Check the type
typeof(data$No.physicians.per.10000)

## It's a character vector! We need to fix this and change it to a numeric
doctors <- data$No.physicians.per.10000     # optionally change in situ
doctors <- as.numeric(doctors)

## Note the warning. This is introduced because there are some elements of the
## vector that were not discernible as 'numbers', could not be corced. NA 
## represents missing values. We could examined this a bit further
length(doctors)
is.na(doctors)     # NAs are marked as 'TRUE'
sum(is.na(doctors))    # only 2 of such values. May not impact much on result.

## Try out calculating the mean again.
mean(doctors)

## Still not working. Let's check the documentation...
?mean    # or args(mean)

## The argument 'na.rm' needs to be TRUE to remove the NAs
mean(doctors, na.rm = TRUE)
hist(doctors)
plot(doctors)

nurses <- data$No.nurses.midwives.per.100000
plot(doctors, nurses)

## Which country has highest number of nurses
highestNurse <- max(data$No.nurses.midwives.per.100000)
index <- which(data$No.nurses.midwives.per.100000 == highestNurse)
index
data$Country[index]
