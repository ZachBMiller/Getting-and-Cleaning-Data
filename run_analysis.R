## download data
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", 
              destfile = "GalaxyData.zip")
## extract data
unzip("GalaxyData.zip")




## read data into R
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")
xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
varnames <- read.table("UCI HAR Dataset/features.txt")


## add variable names
varnames <- as.character(varnames[,2])
names(xtest) <- (varnames)
names(xtrain) <- (varnames)


## combine test data
test2 <- cbind(ytest, xtest)
test <- cbind(subjecttest, test2)


## combine train data
train2 <- cbind(ytrain, xtrain)
train <- cbind(subjecttrain, train2)


## combine test and train data together
data <- rbind(test, train)
names(data)[1] <- "subject"
names(data)[2] <- "activity"


## extract data on the mean and standard deviation
selecteddata <- data[grep(c("mean|std"), names(data))]
selecteddata <- cbind(data[,1:2], selecteddata)


## add descriptive activity names
library(plyr)
activitynumbersvect <- c(1, 2, 3, 4, 5, 6)
activitynamesvect = c("walking", "walking upstairs", "walking downstairs", 
                      "sitting", "standing", "laying")
selecteddata$activity <- plyr::mapvalues(selecteddata$activity, from=activitynumbersvect, to=activitynamesvect)


## clean up the variable names
colnames(selecteddata) <- sub("^t", "time", names(selecteddata))
colnames(selecteddata) <- sub("^f", "freq", names(selecteddata))
colnames(selecteddata) <- gsub("-", " ", names(selecteddata))
colnames(selecteddata) <- gsub("\\(\\)", "", names(selecteddata))


## create new data set with the average of each variable for each activity and each subject
library(dplyr)
averages1 <- group_by(selecteddata, subject, activity)
averages <- summarize_each(averages1, funs(mean))
