# *Coursera - JHU; Getting and Cleaning Data* course project code book

### Analysis process
The analysis script, `run_analysis.R` reads in the processed experiment data and performs a number of steps to get it into summary form.
 - Both the processed test and training datasets are read in and merged into one data frame.
 - The data columns are then given names based on the `features.txt` file.
 - Columns that contain mean or standard deviation measurements are selected from the dataset with other data being excluded
 - The activity identifiers are replaced with the activity labels based on the `activity_labels.txt` file.
 - All invalid characters are removed from the column names with some column names being cleaned up
 - Remaining data is grouped by subject and activity, and the mean is calculated for every measurement column.
 - Finally, the summary dataset is written to a file, `analysedData.txt`.

Each stage of `run_analysis.R` is explained in any present comments. Reference the file for more information on this process.

### Columns in output file

The columns included in the output file are listed below:
  - SUBJID - The id of the experiment participant.
  - ACTDESC - The name of the activity that the measurements correspond to, like `LAYING` or `WALKING`.

The following fields represent the mean of recorded data points for the given subject and activity. 
The detailed description of the different measurement types is found in the `features_info.txt` file included in the data [zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

- "ACTDESC"
- "SUBJID" 
- "timeBodyAccelerometerMeanXaxis"
- "timeBodyAccelerometerMeanYaxis"
- "timeBodyAccelerometerMeanZaxis"
- "timeGravityAccelerometerMeanXaxis"
- "timeGravityAccelerometerMeanYaxis"
- "timeGravityAccelerometerMeanZaxis"
- "timeBodyAccelerometerJerkMeanXaxis"
- "timeBodyAccelerometerJerkMeanYaxis"
- "timeBodyAccelerometerJerkMeanZaxis"
- "timeBodyGyroscopeMeanXaxis"
- "timeBodyGyroscopeMeanYaxis"
- "timeBodyGyroscopeMeanZaxis"
- "timeBodyGyroscopeJerkMeanXaxis"
- "timeBodyGyroscopeJerkMeanYaxis"
"timeBodyGyroscopeJerkMeanZaxis"
"timeBodyAccelerometerMagnitudeMean"
"timeGravityAccelerometerMagnitudeMean"
"timeBodyAccelerometerJerkMagnitudeMean"
"timeBodyGyroscopeMagnitudeMean"
"timeBodyGyroscopeJerkMagnitudeMean"
"frequencyBodyAccelerometerMeanXaxis"
"frequencyBodyAccelerometerMeanYaxis" "frequencyBodyAccelerometerMeanZaxis" "frequencyBodyAccelerometerJerkMeanXaxis" "frequencyBodyAccelerometerJerkMeanYaxis" "frequencyBodyAccelerometerJerkMeanZaxis" "frequencyBodyGyroscopeMeanXaxis" "frequencyBodyGyroscopeMeanYaxis" "frequencyBodyGyroscopeMeanZaxis" "frequencyBodyAccelerometerMagnitudeMean" "frequencyBodyAccelerometerJerkMagnitudeMean" "frequencyBodyGyroscopeMagnitudeMean" "frequencyBodyGyroscopeJerkMagnitudeMean" "timeBodyAccelerometerStdXaxis" "timeBodyAccelerometerStdYaxis" "timeBodyAccelerometerStdZaxis" "timeGravityAccelerometerStdXaxis" "timeGravityAccelerometerStdYaxis" "timeGravityAccelerometerStdZaxis" "timeBodyAccelerometerJerkStdXaxis" "timeBodyAccelerometerJerkStdYaxis" "timeBodyAccelerometerJerkStdZaxis" "timeBodyGyroscopeStdXaxis" "timeBodyGyroscopeStdYaxis" "timeBodyGyroscopeStdZaxis" "timeBodyGyroscopeJerkStdXaxis" "timeBodyGyroscopeJerkStdYaxis" "timeBodyGyroscopeJerkStdZaxis" "timeBodyAccelerometerMagnitudeStd" "timeGravityAccelerometerMagnitudeStd" "timeBodyAccelerometerJerkMagnitudeStd" "timeBodyGyroscopeMagnitudeStd" "timeBodyGyroscopeJerkMagnitudeStd" "frequencyBodyAccelerometerStdXaxis" "frequencyBodyAccelerometerStdYaxis" "frequencyBodyAccelerometerStdZaxis" "frequencyBodyAccelerometerJerkStdXaxis" "frequencyBodyAccelerometerJerkStdYaxis" "frequencyBodyAccelerometerJerkStdZaxis" "frequencyBodyGyroscopeStdXaxis" "frequencyBodyGyroscopeStdYaxis" "frequencyBodyGyroscopeStdZaxis" "frequencyBodyAccelerometerMagnitudeStd" "frequencyBodyAccelerometerJerkMagnitudeStd" "frequencyBodyGyroscopeMagnitudeStd" "frequencyBodyGyroscopeJerkMagnitudeStd

### More information
Detailed information on the experiment and the data can be found in the `README.txt` and `features_info.txt` files included in the experiment data [zip file](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) or find more information on the dataset [homepage](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


