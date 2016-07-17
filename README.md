# Getting And Cleaning Data - Programming Assignment
The primary component of this repo is the run_analysis.R script, which will perform a series of operations on the 
[Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  

## Step Details
1. Merges the training and the test sets to create one data set.  This is done by combining data from multiple files in the test and train sets, then combining the unioning the data together into one set.  
2. Extracts only the measurements on the mean and standard deviation for each measurement.  Only the measurements with mean() and std() functions are extracted.  meanFreq() does not appear relevant to the assignment, so I chose to exclude it.
3. Uses descriptive activity names to name the activities in the data set.  These were looked up in the activity_lables.txt file.  
4. Appropriately labels the data set with descriptive variable names.  These were looked up in the features.txt file.  I chose to use very verbose names.  The names are descriptive enough to not require reference to documentation to determine what specific components of the names mean, as was required for the source data set.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. The output file generated is named "Course3AssignmentData.txt."  This can be read with read.table(header=TRUE).  I chose a wide format, with a specific measure in each column.  I consider the X,Y,Z measurements and readings from the Gyroscope or Accelerometer to be different enough to warrant a separate column for the type of anlysis I would imagine to be performed on this data.  The data is tidy since it contains descriptive column names, a separate column for each variable, and columns are unique.

## Requirements
* The working directory is expected to be set to the "UCI HAR Dataset" directory contained in the repo.
* Packages reshape2 and plyr are installed.   

