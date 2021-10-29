# Codebook #

## The Code ##
The code, which is saved as "run_analysis.R" in the repository, does the following:

1. Sets up the assignment
- Downloads and saves the .zip files for the assignment from the source provided (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
- Unzips the .zip files for the assignment.
- Creates datasets with descriptive column names.

2. Merges the train and test datasets into one dataset
- Starts by separately binding the test datasets together and the train datasets together.
- Ends by binding the test and train datasets together.

3. Extracts only the measurements on the mean and standard deviation for each measurement.
- Identifies and isolates the variables containing the words: "mean", "std", "Subject" and "Labels".
- Reorganizes columns so that the "Subject" and "Labels" columns are the first two.

4. Uses descriptive activity names to name the activities in the data set.
- Assigns the names from the "activity_labels" file to dataset.

5. Appropriately labels the data set with descriptive variable names. 
- Assigns variable names by searching for certain words and letters at the start of the variable and then inserting or subbing in the new word. For example, "Labels" has been renamed to "Activity".

6. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
- From the initially created dataset, create a new final tidy dataset with the mean determined for each variable by "Subject" and "Activity"

7. Saving the data set.
- The final tidy dataset is saved as a .RData
- Must be opened with RStudio
- A separate .txt file was saved for the purposes of this assignment.

## The Data ##

The data from the .zip files that are used in the above script create the datasets used to create the final tidy data set:
- x_train.txt -> x_train
- y_train.txt -> y_train
- subject_train.txt -> subject_train
- x_test.txt -> x_test
- y_test.txt -> y_test
- subject_test.txt -> subject_test
- activity_labels.txt -> activity_labels
- features.txt -> features

testsets contains subject_test, x_test, y_test <br />
trainsets contains subject_train, x_train, y_train <br />
allsets contains testsets and trainsets

## The Variables ##

All of the (81 total) variables from the final tidy dataset: <br />

"Subject" <br />
"Activity" <br />
- Walking
- Walking_Upstairs
- Walking_Downstairs
- Sitting
- Standing
- Laying  <br />

"TimeBodyAccelerometer.Mean...X" <br />
"TimeBodyAccelerometer.Mean...Y" <br />
"TimeBodyAccelerometer.Mean...Z" <br />
"TimeBodyAccelerometer.Standard Deviation...X" <br />
"TimeBodyAccelerometer.Standard Deviation...Y" <br />
"TimeBodyAccelerometer.Standard Deviation...Z" <br />
"TimeGravityAccelerometer.Mean...X" <br />
"TimeGravityAccelerometer.Mean...Y" <br />
"TimeGravityAccelerometer.Mean...Z" <br />
"TimeGravityAccelerometer.Standard Deviation...X" <br />
"TimeGravityAccelerometer.Standard Deviation...Y" <br />
"TimeGravityAccelerometer.Standard Deviation...Z" <br />
"TimeBodyAccelerometerJerk.Mean...X" <br />
"TimeBodyAccelerometerJerk.Mean...Y" <br />
"TimeBodyAccelerometerJerk.Mean...Z" <br />
"TimeBodyAccelerometerJerk.Standard Deviation...X" <br />
"TimeBodyAccelerometerJerk.Standard Deviation...Y" <br />
"TimeBodyAccelerometerJerk.Standard Deviation...Z" <br />
"TimeBodyGyroscope.Mean...X" <br />
"TimeBodyGyroscope.Mean...Y" <br />
"TimeBodyGyroscope.Mean...Z" <br />
"TimeBodyGyroscope.Standard Deviation...X" <br />
"TimeBodyGyroscope.Standard Deviation...Y" <br />
"TimeBodyGyroscope.Standard Deviation...Z" <br />
"TimeBodyGyroscopeJerk.Mean...X" <br />
"TimeBodyGyroscopeJerk.Mean...Y" <br />
"TimeBodyGyroscopeJerk.Mean...Z" <br />
"TimeBodyGyroscopeJerk.Standard Deviation...X" <br />
"TimeBodyGyroscopeJerk.Standard Deviation...Y" <br />
"TimeBodyGyroscopeJerk.Standard Deviation...Z" <br />
"TimeBodyAccelerometerMagnitude.Mean.." <br />
"TimeBodyAccelerometerMagnitude.Standard Deviation.." <br />
"TimeGravityAccelerometerMagnitude.Mean.." <br />
"TimeGravityAccelerometerMagnitude.Standard Deviation.." <br />
"TimeBodyAccelerometerJerkMagnitude.Mean.." <br />
"TimeBodyAccelerometerJerkMagnitude.Standard Deviation.." <br />
"TimeBodyGyroscopeMagnitude.Mean.." <br />
"TimeBodyGyroscopeMagnitude.Standard Deviation.." <br />
"TimeBodyGyroscopeJerkMagnitude.Mean.." <br />
"TimeBodyGyroscopeJerkMagnitude.Standard Deviation.." <br />
"FrequencyBodyAccelerometer.Mean...X" <br />
"FrequencyBodyAccelerometer.Mean...Y" <br />
"FrequencyBodyAccelerometer.Mean...Z" <br />
"FrequencyBodyAccelerometer.Standard Deviation...X" <br />
"FrequencyBodyAccelerometer.Standard Deviation...Y" <br />
"FrequencyBodyAccelerometer.Standard Deviation...Z" <br />
"FrequencyBodyAccelerometer.MeanFreq...X" <br />
"FrequencyBodyAccelerometer.MeanFreq...Y" <br />
"FrequencyBodyAccelerometer.MeanFreq...Z" <br />
"FrequencyBodyAccelerometerJerk.Mean...X" <br />
"FrequencyBodyAccelerometerJerk.Mean...Y" <br />
"FrequencyBodyAccelerometerJerk.Mean...Z" <br />
"FrequencyBodyAccelerometerJerk.Standard Deviation...X" <br />
"FrequencyBodyAccelerometerJerk.Standard Deviation...Y" <br />
"FrequencyBodyAccelerometerJerk.Standard Deviation...Z" <br />
"FrequencyBodyAccelerometerJerk.MeanFreq...X" <br />
"FrequencyBodyAccelerometerJerk.MeanFreq...Y" <br />
"FrequencyBodyAccelerometerJerk.MeanFreq...Z" <br />
"FrequencyBodyGyroscope.Mean...X" <br />
"FrequencyBodyGyroscope.Mean...Y" <br />
"FrequencyBodyGyroscope.Mean...Z" <br />
"FrequencyBodyGyroscope.Standard Deviation...X" <br />
"FrequencyBodyGyroscope.Standard Deviation...Y" <br />
"FrequencyBodyGyroscope.Standard Deviation...Z" <br />
"FrequencyBodyGyroscope.MeanFreq...X" <br />
"FrequencyBodyGyroscope.MeanFreq...Y" <br />
"FrequencyBodyGyroscope.MeanFreq...Z" <br />
"FrequencyBodyAccelerometerMagnitude.Mean.." <br />
"FrequencyBodyAccelerometerMagnitude.Standard Deviation.." <br /> 
"FrequencyBodyAccelerometerMagnitude.MeanFreq.." <br />
"FrequencyBodyBodyAccelerometerJerkMagnitude.Mean.." <br />
"FrequencyBodyBodyAccelerometerJerkMagnitude.Standard Deviation.." <br />
"FrequencyBodyBodyAccelerometerJerkMagnitude.MeanFreq.." <br />
"FrequencyBodyBodyGyroscopeMagnitude.Mean.." <br />
"FrequencyBodyBodyGyroscopeMagnitude.Standard Deviation.."<br />
"FrequencyBodyBodyGyroscopeMagnitude.MeanFreq.." <br />
"FrequencyBodyBodyGyroscopeJerkMagnitude.Mean.." <br />
"FrequencyBodyBodyGyroscopeJerkMagnitude.Standard Deviation.." <br />
"FrequencyBodyBodyGyroscopeJerkMagnitude.MeanFreq.."
