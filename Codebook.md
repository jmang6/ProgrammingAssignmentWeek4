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

## The Data ##

The data from the .zip files that are used in the above script are as follows:
- x_train
- y_train
- subject_train
- x_test
- y_test
- subject_test
