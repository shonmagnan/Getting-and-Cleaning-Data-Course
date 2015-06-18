# Getting-and-Cleaning-Data-Course

Purpose:   This script will: 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for 
   each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#1: Merges the training and the test sets to create one data set
I first read in the data which includes the label files, the test data and the training data. 
I add names to the different files.
I cbinded the three test files together 
I cbinded the three training files together 
I then rbinded the test and training data 

#2. Extracts only the measurements on the mean and standard deviation for 
   each measurement
For #2, I greated a logical vector using grepl of the mean and std columns and then matched that vector to the total file to create a single file
with just the columns that I wanted.

#3. Uses descriptive activity names to name the activities in the data set
I merged on the names from the activity label file

#4. Appropriately labels the data set with descriptive variable names. 
I added names for each of the variables

#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
From the data set created at step 4, I aggregated the file by activity ID and subject ID and created mean summaries of the variables.  Finally, 
I wrote out the table