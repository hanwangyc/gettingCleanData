###Getting and Cleaning Data Wearable Computing
#
###Merge the training and the test sets of wearing device datasets to create one data set
###Extracts only the measurements on the mean and standard deviation for each measurement
###Uses descriptive activity names to name the activities in the data set.
###Appropriately labels the data set with descriptive variable names.
###From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#
###Dowload zipfile
setwd("C:/Users/etjam/Desktop/DataScience")
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "Dataset.zip")
unzip("Dataset.zip")

###Load the datasets
UCIDir <- "UCI HAR Dataset/"
testDataDir <- "UCI HAR Dataset/test/"
trainDataDir <- "UCI HAR Dataset/train/"
activity <- read.table(paste0(UCIDir, "activity_labels.txt"))
activity[,2] <- tolower(gsub("_", "", activity[,2]))
features <- read.table(paste0(UCIDir, "features.txt"),stringsAsFactors = FALSE, header = FALSE)
testSubjects <- as.numeric(readLines(paste0(testDataDir, "subject_test.txt")))
testLabels <- readLines(paste0(testDataDir, "y_test.txt"))
testData <- read.table(paste0(testDataDir, "X_test.txt"))
trainSubjects <- as.numeric(readLines(paste0(trainDataDir, "subject_train.txt")))
trainLabels <- readLines(paste0(trainDataDir, "y_train.txt"))
trainData <- read.table(paste0(trainDataDir, "X_train.txt"))

#Combining train and test data
combined <- rbind(testData, trainData)

# Extracts only the measurements on the mean and standard deviation for each measurement.

newfeatures <- setdiff(grep("mean()|std()", features[,2]), grep("meanFreq()", features[,2]))
newcoombined <- combined[newfeatures]

# Applying descriptive activity names
newcoombined <- cbind(activity = c(testLabels, trainLabels), newcoombined)
newcoombined <- cbind(subject = c(testSubjects, trainSubjects), newcoombined)
newcoombined$activity <- factor(newcoombined$activity,levels = activity[,1], labels = activity[,2])

# Labeling data set with descriptive variable names
features[,2][newfeatures] <- gsub("-mean", "Mean", features[,2][newfeatures])
features[,2][newfeatures] <- gsub("-std", "Stdev", features[,2][newfeatures])
features[,2][newfeatures] <- gsub("[-()]", "", features[,2][newfeatures])
features[,2][newfeatures] <- gsub("^t", "Time", features[, 2][newfeatures])
features[,2][newfeatures] <- gsub("^f", "Freq", features[, 2][newfeatures])
features[,2][newfeatures] <- gsub("BodyBody", "Body", features[, 2][newfeatures])

colnames(newcoombined) <- c("subject", "activity", features[,2][newfeatures])

# Create tidy data set with averages
oldColNames <- colnames(newcoombined)
newColNames <- sapply(oldColNames, function(x) {paste("meanOf",x,sep="")})
colnames(newcoombined) <- newColNames
colnames(newcoombined)[1:2] <- oldColNames[1:2]

#Wrtie tidy data into a text
write.table(newcoombined, "tidyData.txt", row.names = FALSE, quote = FALSE)
