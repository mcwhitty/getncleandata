##Read subject ids, activity ids, activity master, features.txt, data

if (!dir.exists("data")) dir.create("data")
if (!file.exists("data/gcd_dataset.zip")) {
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","gcd_dataset.zip", mode="wb")
  unzip("gcd_dataset.zip", exdir = "./data")
}  

##Read subject ids
subject_test_tbl <- read.table("data/UCI HAR Dataset/test/subject_test.txt", header=FALSE,na.strings="NA",stringsAsFactors=FALSE)
subject_train_tbl <- read.table("data/UCI HAR Dataset/train/subject_train.txt", header=FALSE,na.strings="NA",stringsAsFactors=FALSE)

##Change data table to data frame
subject_test.df <- as.data.frame(subject_test_tbl)
subject_train.df <- as.data.frame(subject_train_tbl)

##Read activity ids
y_test_tbl <- read.table("data/UCI HAR Dataset/test/y_test.txt", header=FALSE,na.strings="NA")
y_train_tbl <- read.table("data/UCI HAR Dataset/train/y_train.txt", header=FALSE,na.strings="NA")

##Change data table to data frame
testActivityID <- as.data.frame(y_test_tbl)
colnames(testActivityID) = c("ACTID")
trainActivityID <- as.data.frame(y_train_tbl)
colnames(trainActivityID) = c("ACTID")
  
##Read activity master
activity_labels <- read.table("data/UCI HAR Dataset/activity_labels.txt", header=FALSE,na.strings="NA",stringsAsFactors=FALSE)									
colnames(activity_labels)= c("act_id","act_desc")
actLabels.df <- as.data.frame(activity_labels)
  
##Read features.txt has the column headers
feature_tbl <- read.table("data/UCI HAR Dataset/features.txt", header=FALSE,na.strings="NA",stringsAsFactors=FALSE)
feature.df <- as.data.frame(feature_tbl)
  
##Read test data
##x_test.txt has the values
x_test_tbl <- read.table("data/UCI HAR Dataset/test/X_test.txt", header=FALSE,na.strings="NA",stringsAsFactors=FALSE)
testData.df <- as.data.frame(x_test_tbl)
dim(testData.df)
  ##[1] 2947  561
  
##Read train data
##x_train.txt has the values
x_train_tbl <- read.table("data/UCI HAR Dataset/train/X_train.txt", header=FALSE,na.strings="NA",stringsAsFactors=FALSE)
trainData.df <- as.data.frame(x_train_tbl)
dim(trainData.df)
#print(dim(trainData.df))
  #[1] 7352  561
  
