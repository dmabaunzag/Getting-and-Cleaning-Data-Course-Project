---
title: "codebook"
author: "Diana Abaunza"
date: "12/2/2021"
output: html_document
---

## codebook
Tidy data set called `datasetAveragebyactivity-subject.txt`contain 180 observations of 68 variables  

### Variables  

* `Subject`:ID f the subject who carried out the experiment                                        
* `Activity`:Each person (ID) performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist                                    

Average of  the time of acceleration signals 3-axial (XYZ) in Body and gravity by Accelerometer:  

* `timeBodyAccelerometer-mean()-X`  
* `timeBodyAccelerometer-mean()-Y`  
* `timeBodyAccelerometer-mean()-Z`  

* `timeGravityAccelerometer-mean()-X`  
* `timeGravityAccelerometer-mean()-Y`     
* `timeGravityAccelerometer-mean()-Z`    

and by Gyroscope: 

* `timeBodyGyroscope-mean()-X`                     
* `timeBodyGyroscope-mean()-Y`                   
* `timeBodyGyroscope-mean()-Z`

The average of the body linear acceleration and angular velocity were derived in time to obtain Jerk signals:       
 * `timeBodyAccelerometerJerk-mean()-X`             
 * `timeBodyAccelerometerJerk-mean()-Y`             
 * `timeBodyAccelerometerJerk-mean()-Z` 

 * `timeBodyGyroscopeJerk-mean()-X`                
 * `timeBodyGyroscopeJerk-mean()-Y`                
 * `timeBodyGyroscopeJerk-mean()-Z` 
 
 The average of the magnitude of these three-dimensional signals were calculated using the Euclidean norm:  
 
 * `timeBodyAccelerometerMagnitude-mean()`          
* `timeGravityAccelerometerMagnitude-mean()`       
* `timeBodyAccelerometerJerkMagnitude-mean()`      
* `timeBodyGyroscopeMagnitude-mean()`             
* `timeBodyGyroscopeJerkMagnitude-mean()` 

Average of Fast Fourier Transform (FFT) for variables before:  

* `frecuencyBodyAccelerometer-mean()-X`            
* `frecuencyBodyAccelerometer-mean()-Y`            
* `frecuencyBodyAccelerometer-mean()-Z`            
* `frecuencyBodyAccelerometerJerk-mean()-X`        
* `frecuencyBodyAccelerometerJerk-mean()-Y`        
* `frecuencyBodyAccelerometerJerk-mean()-Z`       
* `frecuencyBodyGyroscope-mean()-X`               
* `frecuencyBodyGyroscope-mean()-Y`                
* `frecuencyBodyGyroscope-mean()-Z`                
* `frecuencyBodyAccelerometerMagnitude-mean()`     
* `frecuencyBodyAccelerometerJerkMagnitude-mean()` 
* `frecuencyBodyGyroscopeMagnitude-mean()`        
* `frecuencyBodyGyroscopeJerkMagnitude-mean()` 

And its standard deviation respective:  

* `timeBodyAccelerometer-std()-X`                 
* `timeBodyAccelerometer-std()-Y`                  
* `timeBodyAccelerometer-std()-Z`                  
* `timeGravityAccelerometer-std()-X`               
* `timeGravityAccelerometer-std()-Y` 
* `timeGravityAccelerometer-std()-Z` 
* `timeBodyAccelerometerJerk-std()-X` 
* `timeBodyAccelerometerJerk-std()-Y` 
* `timeBodyAccelerometerJerk-std()-Z` 
* `timeBodyGyroscope-std()-X` 
* `timeBodyGyroscope-std()-Y` 
* `timeBodyGyroscope-std()-Z` 
* `timeBodyGyroscopeJerk-std()-X` 
* `timeBodyGyroscopeJerk-std()-Y` 
* `timeBodyGyroscopeJerk-std()-Z` 
* `timeBodyAccelerometerMagnitude-std()` 
* `time-GravityAccelerometerMagnitude-std()` 
* `timeBodyAccelerometerJerkMagnitude-std()` 
* `timeBodyGyroscopeMagnitude-std()` 
* `timeBodyGyroscopeJerkMagnitude-std()` 
* `frecuencyBodyAccelerometer-std()-X` 
* `frecuencyBodyAccelerometer-std()-Y`
* `frecuencyBodyAccelerometer-std()-Z` 
* `frecuencyBodyAccelerometerJerk-std()-X`
* `frecuencyBodyAccelerometerJerk-std()-Y` 
* `frecuencyBodyAccelerometerJerk-std()-Z` 
* `frecuencyBodyGyroscope-std()-X` 
* `frecuencyBodyGyroscope-std()-Y` 
* `frecuencyBodyGyroscope-std()-Z` 
* `frecuencyBodyAccelerometerMagnitude-std()` 
* `frecuencyBodyAccelerometerJerkMagnitude-std()` 
* `frecuencyBodyGyroscopeMagnitude-std()` 
* `frecuencyBodyGyroscopeJerkMagnitude-std()` 