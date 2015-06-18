  
##Title:    Getting and Cleaning Data Course Project 
#Author:    SMM
#Date:      06/18/2015
#Source:    Using RStudio project 


#Purpose:   This script will: 
#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for 
#   each measurement. 
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names. 
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#######
## 1 ##
#######

#read in the label files
Features<-read.table(file="features.txt")
ActivityType<-read.table(file="activity_labels.txt")

#read in the raw training data
SubjectTrain<-read.table(file="subject_train.txt",sep="")
xTrain<-read.table(file="X_train.txt",sep="")
yTrain<-read.table(file="y_train.txt",sep="")

#read in the raw test data
SubjectTest<-read.table(file="subject_test.txt",sep="")
xTest<-read.table(file="X_test.txt",sep="")
yTest<-read.table(file="y_test.txt",sep="")

#add names to files
names(Features)<-c("FeatureID","FeatureName")
names(ActivityType)<-c("ActivityID","ActivtyName")
names(SubjectTrain)<-"SubjectID"
names(xTrain)<-Features[,2]
names(yTrain)<-"ActivityID"
names(SubjectTest)<-"SubjectID"
names(xTest)<-Features[,2]
names(yTest)<-"ActivityID"

#create total test and training data sets together by cbinding
Training<-cbind(yTrain,SubjectTrain,xTrain)
Test<-cbind(yTest,SubjectTest,xTest)

#created merged test and training dataset by rbinding
Total<-rbind(Training,Test)


#######
## 2 ##
#######

#create a vector of col locations for mean and std variables

ColsToKeep <-(grepl("Activity..",names(Total)) | grepl("Subject..",names(Total)) | 
                 grepl("-mean..",names(Total)) & !grepl("-meanFreq..",names(Total)) &
                 !grepl("mean..-",names(Total)) | grepl("-std..",names(Total)) & 
                 !grepl("-std()..-",names(Total)));

TotalMeanStd<-Total[ColsToKeep]

#######
## 3 ##
#######

#merge on names from ActivityType

TotalMeanStdNames<-merge(x=TotalMeanStd,y=ActivityType, by="ActivityID",all.x=TRUE)

#######
## 4 ##
#######

#add better names
names(TotalMeanStdNames)[3:20]<-c(
"TimeBodyAccMagnitudeMean",       
"TimeBodyAccMagnitudeStdDev",     
"TimeGravityAccMagnitudeMean",    
"TimeGravityAccMagnitudeStdDev",  
"TimeBodyAccJerkMagnitudeMean",   
"TimeBodyAccJerkMagnitudeStdDev", 
"TimeBodyGyroMagnitudeMean",      
"TimeBodyGyroMagnitudeStdDev",    
"TimeBodyGyroJerkMagnitudeMean",  
"TimeBodyGyroJerkMagnitudeStdDev",
"FastFourierTransformBodyAccMagnitudeMean",       
"FastFourierTransformBodyAccMagnitudeStdDev",     
"FastFourierTransformBodyAccJerkMagnitudeMean",   
"FastFourierTransformBodyAccJerkMagnitudeStdDev", 
"FastFourierTransformBodyGyroMagnitudeMean",      
"FastFourierTransformBodyGyroMagnitudeStdDev",    
"FastFourierTransformBodyGyroJerkMagnitudeMean",  
"FastFourierTransformBodyGyroJerkMagnitudeStdDev")

#######
## 5 ##
#######

# Drop activity for aggregate so it doesn't muck it up
TotalMeanStdDropNames<-TotalMeanStdNames[-21]

# aggregate the file by subject using means as summary stat
TotalMeanStdDropNamesAggregated <- aggregate(TotalMeanStdDropNames[3:19],by=list(ActivityID=TotalMeanStdDropNames$ActivityID,SubjectID = TotalMeanStdDropNames$SubjectID),mean)

# Put activity name back on
TotalMeanStdNamesAggregated<-merge(TotalMeanStdDropNamesAggregated,ActivityType,by='ActivityID',all.x=TRUE)
names(TotalMeanStdNamesAggregated)
TotalMeanStdNamesAggregated<-TotalMeanStdNamesAggregated[c(1,20,2:19)]


write.table(TotalMeanStdNamesAggregated,file="FinalTable.txt",sep="\t",row.name=FALSE)

