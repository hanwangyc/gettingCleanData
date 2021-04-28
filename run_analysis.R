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
features <- read.table(paste0(UCIDir, "/features.txt",sep=""), col.names = c("id", "measurements"))
activity <- read.table(paste0(UCIDir, "activity_labels.txt", sep=""), col.names = c("n", "activity"))
subjecttest <- read.table(paste0(UCIDir, "/test/subject_test.txt", sep=""), col.names = c("subject"))
xtest <- read.table(paste0(UCIDir, "/test/X_test.txt", sep=""), col.names = features$measurements)
ytest <- read.table(paste0(UCIDir, "/test/y_test.txt", sep=""), col.names = "activitycode")
subjecttrain <- read.table(paste0(UCIDir, "/train/subject_train.txt", sep=""), col.names = c("subject"))
xtrain <- read.table(paste0(UCIDir, "/train/X_train.txt", sep=""), col.names = features$measurements)
ytrain <- read.table(paste0(UCIDir, "/train/y_train.txt", sep=""), col.names = "activitycode")

#Combining train and test data
combineddata <- cbind(rbind(subjecttest, subjecttrain), newydata <- rbind(ytest, ytrain),
                      newxdata <- rbind(xtest, xtrain))

# Extracts only the measurements on the mean and standard deviation for each measurement.
library(dplyr)
newtidydata <- select(combineddata, subject, activitycode, contains("mean"), contains("std"))

# Applying descriptive names in new tidy dataset
colnames(newtidydata)[2] = "Activity"
newtidydata$Activity <- activity[newtidydata$Activity, 2]
colnames(newtidydata) <- gsub("-mean", "Mean", colnames(newtidydata))
colnames(newtidydata) <- gsub("^t", "Time", colnames(newtidydata))
colnames(newtidydata) <- gsub("^f", "Freq", colnames(newtidydata))
colnames(newtidydata) <- gsub("-std", "STD", colnames(newtidydata))
colnames(newtidydata) <- gsub("subject", "Subject", colnames(newtidydata))
colnames(newtidydata) <- gsub("tBody", "timebody", colnames(newtidydata))
colnames(newtidydata) <- gsub("[-()]", "", colnames(newtidydata))

# Create an independent average data for each subject and each activity 
library(reshape2)
finaldata <- melt(newtidydata, id = c("Subject", "Activity"))
finaldata <- dcast(finaldata, Subject + Activity ~ variable, mean)
colnames(finaldata) <- paste0("Mean of", colnames(finaldata), sep="")
colnames(finaldata)[1] <- "Subject"
colnames(finaldata)[2] <- "Activity"

#Wrtie tidy data into a text
write.table(finaldata, "tidyData.txt", row.names = FALSE, quote = FALSE)
#Generate code book
write.table(names(finaldata), "codebook.txt", row.names = FALSE, quote = FALSE)
