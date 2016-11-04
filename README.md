<p  ># GettingAndCleaningDataProj</p>

<p  ><b>Getting and Cleaning Data Project</b></p>

<p  ><b>Description:</b></p>

<p  >This repository contains the project work for the
&quot;Getting and Cleaning Data&quot; course. The purpose of this project is to
demonstrate the ability to collect, work with, and clean a data set. </p>

<p  >&nbsp;</p>

<p  ><b>Data set:</b></p>

<p  >The data set that this project uses is based on some experiments
to study the human activity recognition using smartphones which was carried out
with a group of 30 volunteers within an age bracket of 19-48 years. Each person
performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS,
SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, 3-axial linear
acceleration and 3-axial angular velocity were captured at a constant rate of
50Hz. The obtained dataset were randomly partitioned into two sets, where 70%
of the volunteers was selected for generating the training data and 30% the
test data. </p>

<p  >&nbsp;</p>

<p  ><b>Goal:</b></p>

<p  >The goal of this project is to fetch the Human Activity
Recognition Using Smartphones, data set. Perform some clean up, consolidation
and then generate a tidy data file with the average of each variable for each
activity and each subject. The whole process accomplished via a
&quot;run_analysis.R&quot; R script.</p>

<p  >   </p>

<p  ><b>R Script Steps:</b></p>

<p  > 1) Downloads the file from     https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and extract and saves it locally in a &quot;gcproj&quot; folder in the current
working directory</p>

<p  > </p>

<p  > 2) It uses the following files that were extracted to
consolidate and merge them into one big data.table</p>

<p  >     activity_labels.txt: List of the Activity with
description lable</p>

<p  >     features.txt: All the features i.e. the measurements</p>

<p  >     test/X_test.txt: Test data rows with the feature
measurements.</p>

<p  >     test/y_test.txt: Test activity rows</p>

<p  >     test/subject_test.txt: Subject ID rows from test data</p>

<p  >     train/X_train.txt: Training data rows with the feature
measurements.</p>

<p  >     train/y_train.txt: Training activity rows</p>

<p  >     train/subject_train.txt: Subject ID rows from training
data</p>

<p  >          </p>

<p  > 3) Retain only the &quot;mean&quot; and &quot;std&quot;
deviation features from the merged dataset</p>

<p  > 4) Further clean up to the merged data set so that the
labels the data set have descriptive variable names</p>

<p  > 5) Create a second, independent tidy data
set(tidy_uic_har.csv) with the average of each variable for each activity and
each subject</p>

