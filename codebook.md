
## Codebook 
 
 Summary of the steps taken to obtain the `tidyDataset.txt` file.

### Cleaning the data

1. Read the training and test datafiles from the *UCI HAR Dataset* and merge them into two seperate training and test table with activity and subject (`y_train\test.txt` and `subject_test\train.txt`) as leading columns.
2. set column names for activity and subject variable to *ac-mean()* and *sub-mean()* for easier grepping of columns in step 5.
3. set remaining colum names to names listed in `features.txt`.
4. merge test and training table.
5. Extract mean and standard deviation for each measurment by using the grep function on the column names.
6. change the column names for avtivity and subject back to more desctiptive names.
7. change the values in the activity column to factors using the labels given in `avtivity_labels.txt`.
8. write tidy dataset to `tidyDataset.txt`.

### The Variables

variables in the dataset `tidyDataset.txt`

* `activity`: one of six activities performed by each person (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING)                  
* `subject`: ID of the test subject (i.e. one of 30 volunteers between 19 and 48 years)    

**Time domain signals:**   

* `tBodyAcc-mean()-X`: body acceleration signal, mean value         
* `tBodyAcc-mean()-Y`           
* `tBodyAcc-mean()-Z`          
* `tBodyAcc-std()-X`: body acceleration signal, standard deviation            
* `tBodyAcc-std()-Y`            
* `tBodyAcc-std()-Z`            
* `tGravityAcc-mean()-X`: gravity acceleration signal, mean value        
* `tGravityAcc-mean()-Y`       
* `tGravityAcc-mean()-Z`        
* `tGravityAcc-std()-X`: gravity acceleration signal, standard deviation        
* `tGravityAcc-std()-Y`         
* `tGravityAcc-std()-Z`         
* `tBodyAccJerk-mean()-X`: body linear acceleration derived in time to obtain Jerk signal, mean       
* `tBodyAccJerk-mean()-Y`       
* `tBodyAccJerk-mean()-Z`       
* `tBodyAccJerk-std()-X`: body linear acceleration derived in time to obtain Jerk signal, standard deviation      
* `tBodyAccJerk-std()-Y`        
* `tBodyAccJerk-std()-Z`        
* `tBodyGyro-mean()-X`: gyroscope 3-axial raw signal, mean          
* `tBodyGyro-mean()-Y`          
* `tBodyGyro-mean()-Z`          
* `tBodyGyro-std()-X`: gyroscope 3-axial raw signal, standard deviation           
* `tBodyGyro-std()-Y`          
* `tBodyGyro-std()-Z`           
* `tBodyGyroJerk-mean()-X`: angular velocity derived in time to obtain Jerk signal, mean      
* `tBodyGyroJerk-mean()-Y`      
* `tBodyGyroJerk-mean()-Z`      
* `tBodyGyroJerk-std()-X`: angular velocity derived in time to obtain Jerk signal, standard deviation       
* `tBodyGyroJerk-std()-Y`       
* `tBodyGyroJerk-std()-Z`  

**The magnitude of these three-dimensional signals were calculated using the Euclidean norm:**   

* `tBodyAccMag-mean()`          
* `tBodyAccMag-std()`           
* `tGravityAccMag-mean()`       
* `tGravityAccMag-std()`        
* `tBodyAccJerkMag-mean()`      
* `tBodyAccJerkMag-std()`       
* `tBodyGyroMag-mean()`         
* `tBodyGyroMag-std()`         
* `tBodyGyroJerkMag-mean()`     
* `tBodyGyroJerkMag-std()`  

**Fast Fourier Transform (FFT) was applied to some of the signals above resulting in the following variables:**     

* `fBodyAcc-mean()-X`           
* `fBodyAcc-mean()-Y`           
* `fBodyAcc-mean()-Z`          
* `fBodyAcc-std()-X`            
* `fBodyAcc-std()-Y`            
* `fBodyAcc-std()-Z`            
* `fBodyAccJerk-mean()-X`       
* `fBodyAccJerk-mean()-Y`      
* `fBodyAccJerk-mean()-Z`       
* `fBodyAccJerk-std()-X`        
* `fBodyAccJerk-std()-Y`        
* `fBodyAccJerk-std()-Z`        
* `fBodyGyro-mean()-X`          
* `fBodyGyro-mean()-Y`          
* `fBodyGyro-mean()-Z`          
* `fBodyGyro-std()-X`           
* `fBodyGyro-std()-Y`           
* `fBodyGyro-std()-Z`          
* `fBodyAccMag-mean()`          
* `fBodyAccMag-std()`           
* `fBodyBodyAccJerkMag-mean()`  
* `fBodyBodyAccJerkMag-std()`   
* `fBodyBodyGyroMag-mean()`    
* `fBodyBodyGyroMag-std()`      
* `fBodyBodyGyroJerkMag-mean()` 
* `fBodyBodyGyroJerkMag-std()` 