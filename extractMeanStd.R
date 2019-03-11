###################################################################################################################################
#STEP 2. Extracts only the measurements on the mean and standard deviation for each measurement.[avoiding meanFreq]

req_columns_means<-grep("mean\\(\\)" ,names(merged_data))
length(req_columns_means)
#[1] 33
req_columns_stds<-grep("std\\(\\)" ,names(merged_data))
length(req_columns_stds)
#[1] 33

req_data_mean<-subset(merged_data,select=req_columns_means)
nrow(req_data_mean)
#[1] 10299
ncol(req_data_mean)
#[1] 33
req_data_std<-subset(merged_data,select=req_columns_stds)
nrow(req_data_std)
#[1] 10299
ncol(req_data_std)
#[1] 33
req_data<-cbind(req_data_mean,req_data_std)
nrow(req_data)
#[1] 10299
ncol(req_data)
#[1] 66

###################################################################################################################################    
#STEP 3. Uses descriptive activity names to name the activities in the data set
#### adding subj and act desc
req_data_mean<-cbind(merged_data[,1:2],req_data_mean,stringsAsFactors = FALSE)
ncol(req_data_mean)
#[1] 35
nrow(req_data_mean)
#[1] 10299
req_data_std<-cbind(merged_data[,1:2],req_data_std,stringsAsFactors = FALSE)
nrow(req_data_std)
#[1] 10299
ncol(req_data_std)
#[1] 35
req_data<-cbind(merged_data[,1:2],req_data,stringsAsFactors = FALSE)
nrow(req_data)
#[1] 10299
ncol(req_data)
#[1] 68
###################################################################################################################################
