---
title: "README"
author: "Diana Abaunza"
date: "12/2/2021"
output: html_document
---

## Getting and Cleaning Data Course Project

This was a project to demonstrate the ability to collect, work with, and clean a data set and be graded by peers. This repository contains the cleaning and organization of data set obtain from:[dataset](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) and included in`UCI HAR DATASET` file and contain:  

--`run_analysis.R`: This script contain the instruction to clean of `dataset` 


* Merges the training and the test sets to create one data set from `test` and `train`file, where `X_train/test` were  the observations of `features.txt`variable.Combining `y_train`-`y_test` and `subject_train`-`subject_test` obtain Activity and Subject variables.  
* Extracts only the measurements on the mean `mean()`and standard deviation `std()` for each measurement.  
* Uses descriptive activity names to name the activities in the data set  
* Appropriately labels the data set with descriptive variable names: transform abbreviations as `f`, `t`,`Acc`, `Gyro`, `Mag` and `BodyBody` in descriptive labels: `frecuency`, `time`, `Accelerometer`, `Gyroscope`,`Magnitude`and `Body`, respectively.  
* Create new data set  
            
--`datasetAveragebyactivity-subject.txt`: tidy data with the average of each variable for each activity and each subject  

--`codebook.md`: describes the variables, the data, and any transformations or work that you performed to clean up the data.


