#Programming Assignment 3
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
head(outcome)
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11])
print("Number of NAs in this column")
nas <- sum(is.na(outcome[,11]))
nas
print("Quality of colum as nrow-nas/nrow")
quality <-(nrow(outcome)-nas)/nrow(outcome)
quality
