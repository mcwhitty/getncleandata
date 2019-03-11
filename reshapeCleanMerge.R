#ADDING ACTIVITY DESCRIPTION
#CREATING SUBJECT-ACTIVITY WITH ACTIVITY DESCRIPTION INSTEAD OF CODE
#ASSIGNING FEATURE ROWS AS COLUMN HEADER TO BOTH TEST AND TRAIN DATA
#ADDING SUBJECT & ACTIVITY DESCRIPTION TO BOTH TEST AND TRAIN DATA
#MERGING DATA 

#ADDING ACTIVITY DESCRIPTION
testActivityID$new <- as.character(actLabels.df[match(testActivityID$ACTID,actLabels.df$act_id),2])
trainActivityID$new <- as.character(actLabels.df[match(trainActivityID$ACTID,actLabels.df$act_id),2])
colnames(testActivityID) = c("ACTID","ACTDESC")
colnames(trainActivityID) = c("ACTID","ACTDESC")

#CREATING SUBJECT-ACTIVITY WITH ACTIVITY DESCRIPTION INSTEAD OF CODE
test.act.subj <- cbind.data.frame(testActivityID[,2],subject_test.df,stringsAsFactors = FALSE)
colnames(test.act.subj) <- c("ACTDESC","SUBJID")

train.act.subj <- cbind(trainActivityID[,2],subject_train.df,stringsAsFactors = FALSE)
colnames(train.act.subj) <- c("ACTDESC","SUBJID")
    
## cleaning up data FEATURE TABLE- substituting "BodyBody" by just "Body"
c <- grep("BodyBody", feature.df[,2])
for (i in c) feature.df[i,2] = paste0(substr(feature.df[i,2],1,1),substring(feature.df[i,2],6))
col_list <- c(as.character(feature.df$V2))

# ASSIGNING FEATURE ROWS AS COLUMN HEADER BEFORE CLEANING THE VARIABLES
colnames(testData.df) = col_list
colnames(trainData.df) = col_list

#ADDING SUBJECT & ACTIVITY DESCRIPTION
test_data <- cbind(test.act.subj,testData.df,stringsAsFactors = FALSE)
train_data <- cbind(train.act.subj,trainData.df,stringsAsFactors = FALSE)

#MERGING DATA
merged_data <- rbind(test_data,train_data)
str(merged_data)
    #10299 obs. of  563 variables
    
