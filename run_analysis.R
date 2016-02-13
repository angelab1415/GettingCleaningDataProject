#setwd("./DataScience/03_GettingAndCleaningData/project/")

# get and load dataset
filename <- "getdata-projectfiles-UCI HAR Dataset.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
    url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(url, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
}

setwd("./UCI HAR Dataset")

# ----------------------------------------------------------------
#                   read tables & merge data
# ----------------------------------------------------------------
features <- read.table("./features.txt",header=FALSE) 
activityType <- read.table("./activity_labels.txt",header=FALSE)
#set column names
colnames(activityType) <- c("activity_Id","activity_Type")

# -------- training set----------
xTrain <- read.table("./train/X_train.txt",header=FALSE)
yTrain <- read.table("./train/y_train.txt",header=FALSE)
subTrain <- read.table("./train/subject_train.txt",header=FALSE)
# set column names
colnames(xTrain) <- features[,2]
colnames(yTrain) <- "ac-mean()" #add "mean" for easier grep afterwards
colnames(subTrain)  <- "sub-mean()" #add "mean" for easier grep afterwards
# merge training tables into one
trainAll <- cbind(yTrain, subTrain, xTrain)
#clean up
rm(xTrain, yTrain, subTrain)

# -------test set---------------
xTest <- read.table("./test/X_test.txt",header=FALSE)
yTest <- read.table("./test/y_test.txt",header=FALSE)
subTest <- read.table("./test/subject_test.txt",header=FALSE)
# set Column names
colnames(xTest) <- features[,2]
colnames(yTest) <- "ac-mean()" #add "mean" for easier grep afterwards
colnames(subTest) <- "sub-mean()" #add "mean" for easier grep afterwards
# merge test tables into one
testAll <- cbind(yTest, subTest, xTest)
#clean up
rm(xTest, yTest, subTest)

# ------- Merge training and test datasets ----------
combData <- rbind(trainAll, testAll)

#--------------------------------------------------------
# Extract mean and standard deviation for each measurment
# set appropriate labels if not already existing
#--------------------------------------------------------
colNames <- colnames(combData)
meanStd <- grep("-(mean|std)\\(\\)", colNames)
# create a subset only with mean and stand dev variables
# subset already has appropirate labels
meanStdData <- combData[, meanStd]
# clean up
rm(testAll,trainAll,combData)

# change col col 1 & 2 (activities and subjects) back to proper names
colnames(meanStdData)[1] <- "activity"
colnames(meanStdData)[2] <- "subject"
# change col 1 (activities) to factor for readability
meanStdData$activity <- factor(meanStdData$activity, levels = activityType[,1], labels = activityType[,2])

#--------------------------------------------------------
# create tidy dataset with the average of each variable 
# for each activity and subject
#--------------------------------------------------------
tidyData <- aggregate(meanStdData, by=list(activity = meanStdData$activity, subject=meanStdData$subject), mean)
tidyData[,3] <- NULL
tidyData[,3] <- NULL
#--------------------------------------------------------
#                  save tidy dataset
#--------------------------------------------------------
write.table(tidyData, './tidyDataset.txt',row.names=FALSE)

