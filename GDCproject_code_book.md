Code Book for subject_activity_averages data file
=================================================

General Description:

This is the list of variables in the 'subject_activity_averages.txt' data file. The variable descriptions come mostly from the original data packages 'features_info.txt' file and are adjusted somewhat to convey the average computations applied to the measurements. The variable names have been tweaked to comply with R style guidelines for tidy data. I chose to use CamelCase for variable names, as I find that easier to read at a glance.

- Subject - ID number for the subject who performed the activity, range 1-30.
- ActivityName - 6 different activities performed by subjects, in the following order: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
- timeBodyAccMeanX - Average of the time domain body acceleration mean measurements in the X direction for a Subject/Activity pair
- timeBodyAccMeanY - Average of the time domain body acceleration mean measurements in the Y direction for a Subject/Activity pair
- timeBodyAccMeanZ - Average of the time domain body acceleration mean measurements in the Z direction for a Subject/Activity pair
- timeBodyAccStdX - Average of the time domain body acceleration standard deviation measurements in the X direction for a Subject/Activity pair
- timeBodyAccStdY - Average of the time domain body acceleration standard deviation measurements in the Y direction for a Subject/Activity pair
- timeBodyAccStdZ - Average of the time domain body acceleration standard deviation measurements in the Z direction for a Subject/Activity pair
- timeGravityAccMeanX - Average of the time domain gravity acceleration mean measurements in the X direction for a Subject/Activity pair
- timeGravityAccMeanY - Average of the time domain gravity acceleration mean measurements in the Y direction for a Subject/Activity pair
- timeGravityAccMeanZ - Average of the time domain gravity acceleration mean measurements in the Z direction for a Subject/Activity pair
- timeGravityAccStdX - Average of the time domain gravity acceleration standard deviation measurements in the X direction for a Subject/Activity pair
- timeGravityAccStdY - Average of the time domain gravity acceleration standard deviation measurements in the Y direction for a Subject/Activity pair
- timeGravityAccStdZ - Average of the time domain gravity acceleration standard deviation measurements in the Z direction for a Subject/Activity pair
- timeBodyAccJerkMeanX - Average of the time domain body acceleration jerk mean measurements in the X direction for a Subject/Activity pair
- timeBodyAccJerkMeanY - Average of the time domain body acceleration jerk mean measurements in the Y direction for a Subject/Activity pair
- timeBodyAccJerkMeanZ - Average of the time domain body acceleration jerk mean measurements in the Z direction for a Subject/Activity pair
- timeBodyAccJerkStdX - Average of the time domain body acceleration jerk standard deviation measurements in the X direction for a Subject/Activity pair
- timeBodyAccJerkStdY - Average of the time domain body acceleration jerk standard deviation measurements in the Y direction for a Subject/Activity pair
- timeBodyAccJerkStdZ - Average of the time domain body acceleration jerk standard deviation measurements in the Z direction for a Subject/Activity pair
- timeBodyGyroMeanX - Average of the time domain body gyroscopic mean measurements in the X direction for a Subject/Activity pair
- timeBodyGyroMeanY - Average of the time domain body gyroscopic mean measurements in the Y direction for a Subject/Activity pair
- timeBodyGyroMeanZ - Average of the time domain body gyroscopic mean measurements in the Z direction for a Subject/Activity pair
- timeBodyGyroStdX - Average of the time domain body gyroscopic standard deviation measurements in the X direction for a Subject/Activity pair
- timeBodyGyroStdY - Average of the time domain body gyroscopic standard deviation measurements in the Y direction for a Subject/Activity pair
- timeBodyGyroStdZ - Average of the time domain body gyroscopic standard deviation measurements in the Z direction for a Subject/Activity pair
- timeBodyGyroJerkMeanX - Average of the time domain body gyroscopic jerk mean measurements in the X direction for a Subject/Activity pair
- timeBodyGyroJerkMeanY - Average of the time domain body gyroscopic jerk mean measurements in the Y direction for a Subject/Activity pair
- timeBodyGyroJerkMeanZ - Average of the time domain body gyroscopic jerk mean measurements in the Z direction for a Subject/Activity pair
- timeBodyGyroJerkStdX - Average of the time domain body gyroscopic jerk standard deviation measurements in the X direction for a Subject/Activity pair
- timeBodyGyroJerkStdY - Average of the time domain body gyroscopic jerk standard deviation measurements in the Y direction for a Subject/Activity pair
- timeBodyGyroJerkStdZ - Average of the time domain body gyroscopic jerk standard deviation measurements in the Z direction for a Subject/Activity pair
- timeBodyAccMagMean - Average of the time domain body acceleration magnitude mean measurements for a Subject/Activity pair
- timeBodyAccMagStd - Average of the time domain body acceleration magnitude standard deviation measurements for a Subject/Activity pair
- timeGravityAccMagMean - Average of the time domain gravity acceleration magnitude mean measurements for a Subject/Activity pair
- timeGravityAccMagStd - Average of the time domain gravity acceleration magnitude standard deviation measurements for a Subject/Activity pair
- timeBodyAccJerkMagMean - Average of the time domain body acceleration jerk magnitude mean measurements for a Subject/Activity pair
- timeBodyAccJerkMagStd - Average of the time domain body acceleration jerk magnitude standard deviation measurements for a Subject/Activity pair
- timeBodyGyroMagMean - Average of the time domain body gyroscopic magnitude mean measurements for a Subject/Activity pair
- timeBodyGyroMagStd - Average of the time domain body gyroscopic magnitude standard deviation measurements for a Subject/Activity pair
- timeBodyGyroJerkMagMean - Average of the time domain body gyroscopic jerk magnitude mean measurements for a Subject/Activity pair
- timeBodyGyroJerkMagStd - Average of the time domain body gyroscopic jerk magnitude standard deviation measurements for a Subject/Activity pair
- frequencyBodyAccMeanX - Average of the frequency domain body acceleration mean measurements in the X direction for a Subject/Activity pair
- frequencyBodyAccMeanY - Average of the frequency domain body acceleration mean measurements in the Y direction for a Subject/Activity pair
- frequencyBodyAccMeanZ - Average of the frequency domain body acceleration mean measurements in the Z direction for a Subject/Activity pair
- frequencyBodyAccStdX - Average of the frequency domain body acceleration standard deviation measurements in the X direction for a Subject/Activity pair
- frequencyBodyAccStdY - Average of the frequency domain body acceleration standard deviation measurements in the Y direction for a Subject/Activity pair
- frequencyBodyAccStdZ - Average of the frequency domain body acceleration standard deviation measurements in the Z direction for a Subject/Activity pair
- frequencyBodyAccJerkMeanX - Average of the frequency domain body acceleration jerk mean measurements in the X direction for a Subject/Activity pair
- frequencyBodyAccJerkMeanY - Average of the frequency domain body acceleration jerk mean measurements in the Y direction for a Subject/Activity pair
- frequencyBodyAccJerkMeanZ - Average of the frequency domain body acceleration jerk mean measurements in the Z direction for a Subject/Activity pair
- frequencyBodyAccJerkStdX - Average of the frequency domain body acceleration jerk standard deviation measurements in the X direction for a Subject/Activity pair
- frequencyBodyAccJerkStdY - Average of the frequency domain body acceleration jerk standard deviation measurements in the Y direction for a Subject/Activity pair
- frequencyBodyAccJerkStdZ - Average of the frequency domain body acceleration jerk standard deviation measurements in the Z direction for a Subject/Activity pair
- frequencyBodyGyroMeanX - Average of the frequency domain body gyroscopic mean measurements in the X direction for a Subject/Activity pair
- frequencyBodyGyroMeanY - Average of the frequency domain body gyroscopic mean measurements in the Y direction for a Subject/Activity pair
- frequencyBodyGyroMeanZ - Average of the frequency domain body gyroscopic mean measurements in the Z direction for a Subject/Activity pair
- frequencyBodyGyroStdX - Average of the frequency domain body gyroscopic standard deviation measurements in the X direction for a Subject/Activity pair
- frequencyBodyGyroStdY - Average of the frequency domain body gyroscopic standard deviation measurements in the Y direction for a Subject/Activity pair
- frequencyBodyGyroStdZ - Average of the frequency domain body gyroscopic standard deviation measurements in the Z direction for a Subject/Activity pair
- frequencyBodyAccMagMean - Average of the frequency domain body acceleration magnitude mean measurements for a Subject/Activity pair
- frequencyBodyAccMagStd - Average of the frequency domain body acceleration magnitude standard deviation measurements for a Subject/Activity pair
- frequencyBodyBodyAccJerkMagMean - Average of the frequency domain body acceleration jerk magnitude mean measurements for a Subject/Activity pair
- frequencyBodyBodyAccJerkMagStd - Average of the frequency domain body acceleration jerk magnitude standard deviation measurements for a Subject/Activity pair
- frequencyBodyBodyGyroMagMean - Average of the frequency domain body gyroscopic magnitude mean measurements for a Subject/Activity pair
- frequencyBodyBodyGyroMagStd - Average of the frequency domain body gyroscopic magnitude standard deviation measurements for a Subject/Activity pair
- frequencyBodyBodyGyroJerkMagMean - Average of the frequency domain body gyroscopic jerk magnitude mean measurements for a Subject/Activity pair
- frequencyBodyBodyGyroJerkMagStd - Average of the frequency domain body gyroscopic jerk magnitude standard deviation measurements for a Subject/Activity pair


