Original source of data:

Human Activity Recognition Using Smartphones Dataset: Version 1.0

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws


The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities 
(WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. 
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 
The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% 
of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 
2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated 
using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, 
therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time 
and frequency domain. See 'features_info.txt' for more details. 


Variables in Final Dataset:


 ActivityID  - The activity ID
 Min.   :1.0   
 1st Qu.:2.0   
 Median :3.5   
 Mean   :3.5   
 3rd Qu.:5.0   
 Max.   :6.0   
 
 ActivtyName - The activity performed
 LAYING            :30  
 SITTING           :30  
 STANDING          :30  
 WALKING           :30  
 WALKING_DOWNSTAIRS:30  
 WALKING_UPSTAIRS  :30  
 
 
 SubjectID - ID of Subject
 Min.   : 1.0  
 1st Qu.: 8.0  
 Median :15.5  
 Mean   :15.5  
 3rd Qu.:23.0  
 Max.   :30.0  
 
 TimeBodyAccMagnitudeMean
 Min.   :-0.9865         
 1st Qu.:-0.9573         
 Median :-0.4829         
 Mean   :-0.4973         
 3rd Qu.:-0.0919         
 Max.   : 0.6446         
 
 TimeBodyAccMagnitudeStdDev
 Min.   :-0.987            
 1st Qu.:-0.943            
 Median :-0.607            
 Mean   :-0.544            
 3rd Qu.:-0.209            
 Max.   : 0.428            
 
 TimeGravityAccMagnitudeMean
 Min.   :-0.9865            
 1st Qu.:-0.9573            
 Median :-0.4829            
 Mean   :-0.4973            
 3rd Qu.:-0.0919            
 Max.   : 0.6446            
 
 TimeGravityAccMagnitudeStdDev
 Min.   :-0.987               
 1st Qu.:-0.943               
 Median :-0.607               
 Mean   :-0.544               
 3rd Qu.:-0.209               
 Max.   : 0.428               
 
 TimeBodyAccJerkMagnitudeMean
 Min.   :-0.993              
 1st Qu.:-0.981              
 Median :-0.817              
 Mean   :-0.608              
 3rd Qu.:-0.246              
 Max.   : 0.434              
 
 TimeBodyAccJerkMagnitudeStdDev
 Min.   :-0.995                
 1st Qu.:-0.977                
 Median :-0.801                
 Mean   :-0.584                
 3rd Qu.:-0.217                
 Max.   : 0.451                
 
 TimeBodyGyroMagnitudeMean
 Min.   :-0.981           
 1st Qu.:-0.946           
 Median :-0.655           
 Mean   :-0.565           
 3rd Qu.:-0.216           
 Max.   : 0.418           
 
 TimeBodyGyroMagnitudeStdDev
 Min.   :-0.981             
 1st Qu.:-0.948             
 Median :-0.742             
 Mean   :-0.630             
 3rd Qu.:-0.360             
 Max.   : 0.300             
 
 TimeBodyGyroJerkMagnitudeMean
 Min.   :-0.9973              
 1st Qu.:-0.9852              
 Median :-0.8648              
 Mean   :-0.7364              
 3rd Qu.:-0.5119              
 Max.   : 0.0876              
 
 TimeBodyGyroJerkMagnitudeStdDev
 Min.   :-0.998                 
 1st Qu.:-0.981                 
 Median :-0.881                 
 Mean   :-0.755                 
 3rd Qu.:-0.577                 
 Max.   : 0.250                 
 
 FastFourierTransformBodyAccMagnitudeMean
 Min.   :-0.987                          
 1st Qu.:-0.956                          
 Median :-0.670                          
 Mean   :-0.536                          
 3rd Qu.:-0.162                          
 Max.   : 0.587                          
 
 FastFourierTransformBodyAccMagnitudeStdDev
 Min.   :-0.988                            
 1st Qu.:-0.945                            
 Median :-0.651                            
 Mean   :-0.621                            
 3rd Qu.:-0.365                            
 Max.   : 0.179                            
 
 FastFourierTransformBodyAccJerkMagnitudeMean
 Min.   :-0.994                              
 1st Qu.:-0.977                              
 Median :-0.794                              
 Mean   :-0.576                              
 3rd Qu.:-0.187                              
 Max.   : 0.538                              
 
 FastFourierTransformBodyAccJerkMagnitudeStdDev
 Min.   :-0.994                                
 1st Qu.:-0.975                                
 Median :-0.813                                
 Mean   :-0.599                                
 3rd Qu.:-0.267                                
 Max.   : 0.316                                
 
 FastFourierTransformBodyGyroMagnitudeMean
 Min.   :-0.987                           
 1st Qu.:-0.962                           
 Median :-0.766                           
 Mean   :-0.667                           
 3rd Qu.:-0.409                           
 Max.   : 0.204                           
 
 FastFourierTransformBodyGyroMagnitudeStdDev
 Min.   :-0.982                             
 1st Qu.:-0.949                             
 Median :-0.773                             
 Mean   :-0.672                             
 3rd Qu.:-0.428                             
 Max.   : 0.237                             
 
 FastFourierTransformBodyGyroJerkMagnitudeMean
 Min.   :-0.998                               
 1st Qu.:-0.981                               
 Median :-0.878                               
 Mean   :-0.756                               
 3rd Qu.:-0.583                               
 Max.   : 0.147  