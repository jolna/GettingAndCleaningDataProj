This code book gives the details of the data contained in the tidy output data file.

The tidy data output file - tidy_uic_har.csv, is a comma seperated text file that has the 
average of all the mean and standard deviation for body,gravity,gyro and other features measured 
for each subject, across the six activities they performed. 
Totalling 180 rows (30 Subjects * 6 Activity)

Following are the description of the columns and the data it contains:

	subjectid: is a identifier column identifying the 30 volunteer subjects by their ID, 
	           values (1 to 30)

	activityid: is a identifier column identifying the activities the volunteer perform.
	            values (1 to 6)

	activityname: is a identifier column that describes activity id with the following values
		    1 WALKING
		    2 WALKING_UPSTAIRS
		    3 WALKING_DOWNSTAIRS
		    4 SITTING
		    5 STANDING
		    6 LAYING

	The remaining columns are the value columns i.e the (mean and std) measures recorded for each 
	subject and activity. In this file each row hold the average/mean values across all the 
	feature readings for a activity and subject.

	tBodyAccmeanX,tBodyAccmeanY,tBodyAccmeanZ,tBodyAccstdX,tBodyAccstdY,tBodyAccstdZ,
	tGravityAccmeanX,tGravityAccmeanY,tGravityAccmeanZ,tGravityAccstdX,tGravityAccstdY,tGravityAccstdZ,
	tBodyAccJerkmeanX,tBodyAccJerkmeanY,tBodyAccJerkmeanZ,tBodyAccJerkstdX,tBodyAccJerkstdY,tBodyAccJerkstdZ,
	tBodyGyromeanX,tBodyGyromeanY,tBodyGyromeanZ,tBodyGyrostdX,tBodyGyrostdY,tBodyGyrostdZ,tBodyGyroJerkmeanX,
	tBodyGyroJerkmeanY,tBodyGyroJerkmeanZ,tBodyGyroJerkstdX,tBodyGyroJerkstdY,tBodyGyroJerkstdZ,
	tBodyAccMagmean,tBodyAccMagstd,tGravityAccMagmean,tGravityAccMagstd,tBodyAccJerkMagmean,tBodyAccJerkMagstd,
	tBodyGyroMagmean,tBodyGyroMagstd,tBodyGyroJerkMagmean,tBodyGyroJerkMagstd,fBodyAccmeanX,fBodyAccmeanY,
	fBodyAccmeanZ,fBodyAccstdX,fBodyAccstdY,fBodyAccstdZ,fBodyAccmeanFreqX,fBodyAccmeanFreqY,fBodyAccmeanFreqZ,
	fBodyAccJerkmeanX,fBodyAccJerkmeanY,fBodyAccJerkmeanZ,fBodyAccJerkstdX,fBodyAccJerkstdY,fBodyAccJerkstdZ,
	fBodyAccJerkmeanFreqX,fBodyAccJerkmeanFreqY,fBodyAccJerkmeanFreqZ,fBodyGyromeanX,fBodyGyromeanY,
	fBodyGyromeanZ,fBodyGyrostdX,fBodyGyrostdY,fBodyGyrostdZ,fBodyGyromeanFreqX,fBodyGyromeanFreqY,
	fBodyGyromeanFreqZ,fBodyAccMagmean,fBodyAccMagstd,fBodyAccMagmeanFreq,fBodyBodyAccJerkMagmean,
	fBodyBodyAccJerkMagstd,fBodyBodyAccJerkMagmeanFreq,fBodyBodyGyroMagmean,fBodyBodyGyroMagstd,
	fBodyBodyGyroMagmeanFreq,fBodyBodyGyroJerkMagmean,fBodyBodyGyroJerkMagstd,fBodyBodyGyroJerkMagmeanFreq