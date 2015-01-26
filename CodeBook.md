# GetData
<<<<<<< HEAD
###Data
Training and testing data are in the following files<br>
1. X_train.txt
2. y_train.txt
3. subject_train.txt
4. X_test.txt
5. y_test.txt
6. subject_test.txt

Training and Testing data are merged together using rbind()

###Activity
Different activities tracked are described in activity_labels.txt <br>
1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

### Extract Mean and Std
Since we are interested only in the mean and std measurements, they are extracted by using grep on feature names given in features.txt <br>
Also, these column names are copied to the resulting data set to make it more descriptive variable names using colnames() <br>
y data is mutated into more activity_label using the mutate function to make it more readable <br>
X, y and subject data are merged together into one single data set using cbind()

### Summarize
We want to average for each activity and subject <br>
So the data is grouped into activity and subject using function group_by() <br>
Mean is calculated on this grouped data for all columns using summarise_each() <br>

Description on the features can be found here http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones <br>
=======

summary.txt produced by run_analysis.R contains the following variables:

###Activity
Six different activities are tracked as shown in first column <br>
  - WALKING            
  - WALKING_UPSTAIRS   
  - WALKING_DOWNSTAIRS 
  - SITTING           
  - STANDING           
  - LAYING 


###Subject
Data is measured for 30 different subjects as shown in second column


###Summary
Remaining 86 columns gives the mean measured for each measurements in the original data <br>
Description on these can be found here http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones <br>
>>>>>>> c984d1a9d6d5a1eb02eb5a3e3e51b3b86b3bd71e
The Original Data can be found here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip <br>
 [1] "tBodyAcc-mean()-X"                   
 [2] "tBodyAcc-mean()-Y"                   
 [3] "tBodyAcc-mean()-Z"                   
 [4] "tBodyAcc-std()-X"                    
 [5] "tBodyAcc-std()-Y"                    
 [6] "tBodyAcc-std()-Z"                    
 [7] "tGravityAcc-mean()-X"                
 [8] "tGravityAcc-mean()-Y"                
 [9] "tGravityAcc-mean()-Z"                
[10] "tGravityAcc-std()-X"                 
[11] "tGravityAcc-std()-Y"                 
[12] "tGravityAcc-std()-Z"                 
[13] "tBodyAccJerk-mean()-X"               
[14] "tBodyAccJerk-mean()-Y"               
[15] "tBodyAccJerk-mean()-Z"               
[16] "tBodyAccJerk-std()-X"                
[17] "tBodyAccJerk-std()-Y"                
[18] "tBodyAccJerk-std()-Z"                
[19] "tBodyGyro-mean()-X"                  
[20] "tBodyGyro-mean()-Y"                  
[21] "tBodyGyro-mean()-Z"                  
[22] "tBodyGyro-std()-X"                   
[23] "tBodyGyro-std()-Y"                   
[24] "tBodyGyro-std()-Z"                   
[25] "tBodyGyroJerk-mean()-X"              
[26] "tBodyGyroJerk-mean()-Y"              
[27] "tBodyGyroJerk-mean()-Z"              
[28] "tBodyGyroJerk-std()-X"               
[29] "tBodyGyroJerk-std()-Y"               
[30] "tBodyGyroJerk-std()-Z"               
[31] "tBodyAccMag-mean()"                  
[32] "tBodyAccMag-std()"                   
[33] "tGravityAccMag-mean()"               
[34] "tGravityAccMag-std()"                
[35] "tBodyAccJerkMag-mean()"              
[36] "tBodyAccJerkMag-std()"               
[37] "tBodyGyroMag-mean()"                 
[38] "tBodyGyroMag-std()"                  
[39] "tBodyGyroJerkMag-mean()"             
[40] "tBodyGyroJerkMag-std()"              
[41] "fBodyAcc-mean()-X"                   
[42] "fBodyAcc-mean()-Y"                   
[43] "fBodyAcc-mean()-Z"                   
[44] "fBodyAcc-std()-X"                    
[45] "fBodyAcc-std()-Y"                    
[46] "fBodyAcc-std()-Z"                    
[47] "fBodyAcc-meanFreq()-X"               
[48] "fBodyAcc-meanFreq()-Y"               
[49] "fBodyAcc-meanFreq()-Z"               
[50] "fBodyAccJerk-mean()-X"               
[51] "fBodyAccJerk-mean()-Y"               
[52] "fBodyAccJerk-mean()-Z"               
[53] "fBodyAccJerk-std()-X"                
[54] "fBodyAccJerk-std()-Y"                
[55] "fBodyAccJerk-std()-Z"                
[56] "fBodyAccJerk-meanFreq()-X"           
[57] "fBodyAccJerk-meanFreq()-Y"           
[58] "fBodyAccJerk-meanFreq()-Z"           
[59] "fBodyGyro-mean()-X"                  
[60] "fBodyGyro-mean()-Y"                  
[61] "fBodyGyro-mean()-Z"                  
[62] "fBodyGyro-std()-X"                   
[63] "fBodyGyro-std()-Y"                   
[64] "fBodyGyro-std()-Z"                   
[65] "fBodyGyro-meanFreq()-X"              
[66] "fBodyGyro-meanFreq()-Y"              
[67] "fBodyGyro-meanFreq()-Z"              
[68] "fBodyAccMag-mean()"                  
[69] "fBodyAccMag-std()"                   
[70] "fBodyAccMag-meanFreq()"              
[71] "fBodyBodyAccJerkMag-mean()"          
[72] "fBodyBodyAccJerkMag-std()"           
[73] "fBodyBodyAccJerkMag-meanFreq()"      
[74] "fBodyBodyGyroMag-mean()"             
[75] "fBodyBodyGyroMag-std()"              
[76] "fBodyBodyGyroMag-meanFreq()"         
[77] "fBodyBodyGyroJerkMag-mean()"         
[78] "fBodyBodyGyroJerkMag-std()"          
[79] "fBodyBodyGyroJerkMag-meanFreq()"     
[80] "angle(tBodyAccMean,gravity)"         
[81] "angle(tBodyAccJerkMean),gravityMean)"
[82] "angle(tBodyGyroMean,gravityMean)"    
[83] "angle(tBodyGyroJerkMean,gravityMean)"
[84] "angle(X,gravityMean)"                
[85] "angle(Y,gravityMean)"                
[86] "angle(Z,gravityMean)"                
