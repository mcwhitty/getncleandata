################################################################################
#You should create one R script called run_analysis.R that does the following.

#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
#5. From the data set in step 4, creates a second, independent tidy data set with the 
#   average of each variable for each activity and each subject.
################################################################################

#STEP   1. Merges the training and the test sets to create one data set and clean the data
# 1 A.   Read data from files
source("./loadFiles.R")
# 1 B.  Clean and Reshape Data
source("./reshapeCleanMerge.R")

#STEP 2. Extracts only the measurements on the mean and standard deviation for each measurement.
#STEP 3. Uses descriptive activity names to name the activities in the data set
source("./extractMeanStd.R")

#STEP 4. Appropriately labels the data set with descriptive variable names.
source("./cleanLabel.R")
        
#STEP 5: From the data set in step 4, creates a second, independent tidy data set with the average of 
#   each variable for each activity and each subject.
# further clean data variables
source("./calculateMean.R")

# Create results dataframe by combining
source("./presentData.R")
