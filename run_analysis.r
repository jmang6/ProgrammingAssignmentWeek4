# Code to download and save .zip files for project

zipURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(zipURL, destfile = "~/GitHub/CourseraPersonalPC/Practical Assignment/Getting and Cleaning Data - Week 4 Practical Assignment/zipfile.zip")

# Code to unzip the .zip files for project

projectfiles <- "~/GitHub/CourseraPersonalPC/Practical Assignment/Getting and Cleaning Data - Week 4 Practical Assignment/zipfile.zip"
unzip(projectfiles)

# Code to create datasets with descriptive column names

activity_labels <- read.table("~/GitHub/CourseraPersonalPC/Practical Assignment/Getting and Cleaning Data - Week 4 Practical Assignment/UCI HAR Dataset/activity_labels.txt", col.names = c("Label", "Activity"))
features <- read.table("~/GitHub/CourseraPersonalPC/Practical Assignment/Getting and Cleaning Data - Week 4 Practical Assignment/UCI HAR Dataset/features.txt", col.names = c("Number", "Measurements"))
subject_test <- read.table("~/GitHub/CourseraPersonalPC/Practical Assignment/Getting and Cleaning Data - Week 4 Practical Assignment/UCI HAR Dataset/test/subject_test.txt", col.names = c("Subject"))
x_test <- read.table("~/GitHub/CourseraPersonalPC/Practical Assignment/Getting and Cleaning Data - Week 4 Practical Assignment/UCI HAR Dataset/test/X_test.txt", col.names = features$Measurements)
y_test <- read.table("~/GitHub/CourseraPersonalPC/Practical Assignment/Getting and Cleaning Data - Week 4 Practical Assignment/UCI HAR Dataset/test/y_test.txt", col.names = c("Labels"))
subject_train <- read.table("~/GitHub/CourseraPersonalPC/Practical Assignment/Getting and Cleaning Data - Week 4 Practical Assignment/UCI HAR Dataset/train/subject_train.txt", col.names = c("Subject"))
x_train <- read.table("~/GitHub/CourseraPersonalPC/Practical Assignment/Getting and Cleaning Data - Week 4 Practical Assignment/UCI HAR Dataset/train/X_train.txt", col.names = features$Measurements)
y_train <- read.table("~/GitHub/CourseraPersonalPC/Practical Assignment/Getting and Cleaning Data - Week 4 Practical Assignment/UCI HAR Dataset/train/y_train.txt", col.names = c("Labels"))

# 1 Merge the train and test data sets into one dataset; tidy

testsets <- cbind(subject_test, x_test, y_test)
trainsets <- cbind(subject_train, x_train, y_train)
allsets <- rbind(testsets, trainsets)

# 2 Extract only the measurements on the mean and standard deviation for each measurement. 

keep <- grep("mean|std|Subject|Labels", colnames(allsets))
allsets <- allsets[, keep]
allsets <- subset(allsets, select=c(1,81,2:80))

# 3 Uses descriptive activity names to name the activities in the data set

allsets$Labels <- activity_labels[allsets$Labels, 2]

# 4 Appropriately labels the data set with descriptive variable names.

colnames(allsets)[2] <- "Activity" 
colnames(allsets) <- gsub("^t", "Time", colnames(allsets))
colnames(allsets) <- gsub("^f", "Frequency", colnames(allsets))
colnames(allsets) <- gsub("Acc", "Accelerometer", colnames(allsets))
colnames(allsets) <- gsub("Gyro", "Gyroscope", colnames(allsets))
colnames(allsets) <- gsub("Mag", "Magnitude", colnames(allsets))
colnames(allsets) <- gsub("mean", "Mean", colnames(allsets))
colnames(allsets) <- gsub("std", "Standard Deviation", colnames(allsets))

# 5 From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

finaltidydata <- allsets
finaltidydata <- aggregate(finaltidydata[,3:81], finaltidydata[,1:2], FUN = mean)

# 6 Saving the data set.
save(finaltidydata, file = "finaltidydata.RData")
