# GettingAndCleaningDataProj
Getting and Cleaning Data Project
Description:
This repository contains the project work for the "Getting and Cleaning Data" course. The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. 

Data set:
The data set that this project uses is based on some experiments to study the human activity recognition using smartphones which was carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity were captured at a constant rate of 50Hz. The obtained dataset were randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Goal:
The goal of this project is to fetch the Human Activity Recognition Using Smartphones, data set. Perform some clean up, consolidation and then generate a tidy data file with the average of each variable for each activity and each subject. The whole process accomplished via a "run_analysis.R" R script.
   
R Script Steps:
 1) Downloads the file from     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and extract and saves it locally in a "gcproj" folder in the current working directory
 
 2) It uses the following files that were extracted to consolidate and merge them into one big data.table
     activity_labels.txt: List of the Activity with description lable
     features.txt: All the features i.e. the measurements
     test/X_test.txt: Test data rows with the feature measurements.
     test/y_test.txt: Test activity rows
     test/subject_test.txt: Subject ID rows from test data
     train/X_train.txt: Training data rows with the feature measurements.
     train/y_train.txt: Training activity rows
     train/subject_train.txt: Subject ID rows from training data
          
 3) Retain only the "mean" and "std" deviation features from the merged dataset
 4) Further clean up to the merged data set so that the labels the data set have descriptive variable names
 5) Create a second, independent tidy data set(tidy_uic_har.csv) with the average of each variable for each activity and each subject
 



