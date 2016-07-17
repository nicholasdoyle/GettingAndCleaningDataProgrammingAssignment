#Data
The data produced by the run_analysis.R script (seen in Course3AssignmentData.txt) is a summarized version of the smartphone data referenced in the readme.  It can be read with read.table(header=TRUE). It provides the average of the various mean and standard deviation measurements in the source data, grouped by subject and activity.  The data is tidy since it contains descriptive column names, a separate column for each variable, and columns are unique.  I chose a wide format, with a specific measure in each column.  I consider the X,Y,Z measurements and readings from the Gyroscope or Accelerometer to be different enough to warrant a separate column for the type of anlysis I would imagine to be performed on this data.  

#Transformations
1. Various files from the source Training and Test data sets were joined and then unioned into one set.   
2. Only the measurements with mean() and std() functions are extracted.  meanFreq() does not appear relevant to the assignment, so I chose to exclude it.
3. Descriptive activity names were looked up in the activity_lables.txt file, to be used instead of the id.  
4. Remaining columns were verbosely named, based on their definition in the source data file features.txt.  I chose to use very verbose names.  The names are descriptive enough to not require reference to documentation to determine what specific components of the names mean, as was required for the source data set.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. The output file generated is named "Course3AssignmentData.txt."

#Summarized Variables
The summarized variables are verbosely named.  Each contains a prefix of "Time" or "Frequency", text referring to the instrument the measurement was taken from (Accelerometer or Gyroscope), a qualifier of the reading ("Body", "Gravity"), additional context ("Jerk", "Magnitude", ..), the axis (X, Y, or Z), and the function applied in the sliding window on the readings (Mean or Standard Deviation).  

The units are the same as the source data, which have all been normalized to be between -1 and 1. 

The variables are:
* TimeBodyAccelerometerXAxisMean
* TimeBodyAccelerometerYAxisMean
* TimeBodyAccelerometerZAxisMean
* TimeBodyAccelerometerXAxisStandardDeviation
* TimeBodyAccelerometerYAxisStandardDeviation
* TimeBodyAccelerometerZAxisStandardDeviation
* TimeGravityAccelerometerXAxisMean
* TimeGravityAccelerometerYAxisMean
* TimeGravityAccelerometerZAxisMean
* TimeGravityAccelerometerXAxisStandardDeviation
* TimeGravityAccelerometerYAxisStandardDeviation
* TimeGravityAccelerometerZAxisStandardDeviation
* TimeBodyAccelerometerJerkXAxisMean
* TimeBodyAccelerometerJerkYAxisMean
* TimeBodyAccelerometerJerkZAxisMean
* TimeBodyAccelerometerJerkXAxisStandardDeviation
* TimeBodyAccelerometerJerkYAxisStandardDeviation
* TimeBodyAccelerometerJerkZAxisStandardDeviation
* TimeBodyGyroscopeXAxisMean
* TimeBodyGyroscopeYAxisMean
* TimeBodyGyroscopeZAxisMean
* TimeBodyGyroscopeXAxisStandardDeviation
* TimeBodyGyroscopeYAxisStandardDeviation
* TimeBodyGyroscopeZAxisStandardDeviation
* TimeBodyGyroscopeJerkXAxisMean
* TimeBodyGyroscopeJerkYAxisMean
* TimeBodyGyroscopeJerkZAxisMean
* TimeBodyGyroscopeJerkXAxisStandardDeviation
* TimeBodyGyroscopeJerkYAxisStandardDeviation
* TimeBodyGyroscopeJerkZAxisStandardDeviation
* TimeBodyAccelerometerMagnitudeMean
* TimeBodyAccelerometerMagnitudeStandardDeviation
* TimeGravityAccelerometerMagnitudeMean
* TimeGravityAccelerometerMagnitudeStandardDeviation
* TimeBodyAccelerometerJerkMagnitudeMean
* TimeBodyAccelerometerJerkMagnitudeStandardDeviation
* TimeBodyGyroscopeMagnitudeMean
* TimeBodyGyroscopeMagnitudeStandardDeviation
* TimeBodyGyroscopeJerkMagnitudeMean
* TimeBodyGyroscopeJerkMagnitudeStandardDeviation
* FrequencyAccelerometerXAxisMean
* FrequencyAccelerometerYAxisMean
* FrequencyAccelerometerZAxisMean
* FrequencyAccelerometerXAxisStandardDeviation
* FrequencyAccelerometerYAxisStandardDeviation
* FrequencyAccelerometerZAxisStandardDeviation
* FrequencyBodyAccelerometerJerkXAxisMean
* FrequencyBodyAccelerometerJerkYAxisMean
* FrequencyBodyAccelerometerJerkZAxisMean
* FrequencyBodyAccelerometerJerkXAxisStandardDeviation
* FrequencyBodyAccelerometerJerkYAxisStandardDeviation
* FrequencyBodyAccelerometerJerkZAxisStandardDeviation
* FrequencyBodyGyroscopeXAxisMean
* FrequencyBodyGyroscopeYAxisMean
* FrequencyBodyGyroscopeZAxisMean
* FrequencyBodyGyroscopeXAxisStandardDeviation
* FrequencyBodyGyroscopeYAxisStandardDeviation
* FrequencyBodyGyroscopeZAxisStandardDeviation
* FrequencyBodyAccelerometerMagnitudeMean
* FrequencyBodyAccelerometerMagnitudeStandardDeviation
* FrequencyBodyAccelerometerJerkMagnitudeMean
* FrequencyBodyAccelerometerJerkMagnitudeStandardDeviation
* FrequencyBodyGryoscopeMagnitudeMean
* FrequencyBodyGryoscopeMagnitudeStandardDeviation
* FrequencyBodyGryoscopeJerkMagnitudeMean
* FrequencyBodyGryoscopeJerkMagnitudeStandardDeviation