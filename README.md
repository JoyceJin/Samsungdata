# Samsungdata

The purpose of this R code is to clean the raw dataset "Human Activity Recognition Using Smartphones Data Set" (available https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The R code first reads the dataset (including both test data and training data) and then merge the dataset. Then the following  are applied to the raw dataset in order to clean the data:

1. Extracts the mean and standard deviation for each measurement.
2. Uses descriptive activity names to name the activities in the data set.
3. Labels data set with descriptive variable names. 
4. Calculates the average of each variable for each activity and each subject.

*********************************************Code Book**************************************************
subject: the id of the subject in the experiment
Activies: the lable of the activities
          1=walking
          2=walking upstairs
          3=walking downstairs
          4=sitting
          5=standing
          6=laying
variables:
tBodyAccmX	is the mean of	tBodyAcc-mean()-X	in the original dataset
tBodyAccmY	is the mean of	tBodyAcc-mean()-Y	in the original dataset
tBodyAccmZ	is the mean of	tBodyAcc-mean()-Z	in the original dataset
tBodyAccsdX	is the mean of	tBodyAcc-std()-X	in the original dataset
tBodyAccsdY	is the mean of	tBodyAcc-std()-Y	in the original dataset
tBodyAccsdZ	is the mean of	tBodyAcc-std()-Z	in the original dataset
tGravityAccmX	is the mean of	tGravityAcc-mean()-X	in the original dataset
tGravityAccmY	is the mean of	tGravityAcc-mean()-Y	in the original dataset
tGravityAccmZ	is the mean of	tGravityAcc-mean()-Z	in the original dataset
tGravityAccsdX	is the mean of	tGravityAcc-std()-X	in the original dataset
tGravityAccsdY	is the mean of	tGravityAcc-std()-Y	in the original dataset
tGravityAccsdZ	is the mean of	tGravityAcc-std()-Z	in the original dataset
tBodyAccJerkmX	is the mean of	tBodyAccJerk-mean()-X	in the original dataset
tBodyAccJerkmY	is the mean of	tBodyAccJerk-mean()-Y	in the original dataset
tBodyAccJerkmZ	is the mean of	tBodyAccJerk-mean()-Z	in the original dataset
tBodyAccJerksdX	is the mean of	tBodyAccJerk-std()-X	in the original dataset
tBodyAccJerksdY	is the mean of	tBodyAccJerk-std()-Y	in the original dataset
tBodyAccJerksdZ	is the mean of	tBodyAccJerk-std()-Z	in the original dataset
tBodyGyromX	is the mean of	tBodyGyro-mean()-X	in the original dataset
tBodyGyromY	is the mean of	tBodyGyro-mean()-Y	in the original dataset
tBodyGyromZ	is the mean of	tBodyGyro-mean()-Z	in the original dataset
tBodyGyrosdX	is the mean of	tBodyGyro-std()-X	in the original dataset
tBodyGyrosdY	is the mean of	tBodyGyro-std()-Y	in the original dataset
tBodyGyrosdZ	is the mean of	tBodyGyro-std()-Z	in the original dataset
tBodyGyroJerkmX	is the mean of	tBodyGyroJerk-mean()-X	in the original dataset
tBodyGyroJerkmY	is the mean of	tBodyGyroJerk-mean()-Y	in the original dataset
tBodyGyroJerkmZ	is the mean of	tBodyGyroJerk-mean()-Z	in the original dataset
tBodyGyroJerksdX	is the mean of	tBodyGyroJerk-std()-X	in the original dataset
tBodyGyroJerksdY	is the mean of	tBodyGyroJerk-std()-Y	in the original dataset
tBodyGyroJerksdZ	is the mean of	tBodyGyroJerk-std()-Z	in the original dataset
tBodyAccMagm	is the mean of	tBodyAccMag-mean()	in the original dataset
tBodyAccMagsd	is the mean of	tBodyAccMag-std()	in the original dataset
tGravityAccMagm	is the mean of	tGravityAccMag-mean()	in the original dataset
tGravityAccMagsd	is the mean of	tGravityAccMag-std()	in the original dataset
tBodyAccJerkMagm	is the mean of	tBodyAccJerkMag-mean()	in the original dataset
tBodyAccJerkMagsd	is the mean of	tBodyAccJerkMag-std()	in the original dataset
tBodyGyroMagm	is the mean of	tBodyGyroMag-mean()	in the original dataset
tBodyGyroMagsd	is the mean of	tBodyGyroMag-std()	in the original dataset
tBodyGyroJerkMagm	is the mean of	tBodyGyroJerkMag-mean()	in the original dataset
tBodyGyroJerkMagsd	is the mean of	tBodyGyroJerkMag-std()	in the original dataset
fBodyAccmX	is the mean of	fBodyAcc-mean()-X	in the original dataset
fBodyAccmY	is the mean of	fBodyAcc-mean()-Y	in the original dataset
fBodyAccmZ	is the mean of	fBodyAcc-mean()-Z	in the original dataset
fBodyAccsdX	is the mean of	fBodyAcc-std()-X	in the original dataset
fBodyAccsdY	is the mean of	fBodyAcc-std()-Y	in the original dataset
fBodyAccsdZ	is the mean of	fBodyAcc-std()-Z	in the original dataset
fBodyAccJerkmX	is the mean of	fBodyAccJerk-mean()-X	in the original dataset
fBodyAccJerkmY	is the mean of	fBodyAccJerk-mean()-Y	in the original dataset
fBodyAccJerkmZ	is the mean of	fBodyAccJerk-mean()-Z	in the original dataset
fBodyAccJerksdX	is the mean of	fBodyAccJerk-std()-X	in the original dataset
fBodyAccJerksdY	is the mean of	fBodyAccJerk-std()-Y	in the original dataset
fBodyAccJerksdZ	is the mean of	fBodyAccJerk-std()-Z	in the original dataset
fBodyGyromX	is the mean of	fBodyGyro-mean()-X	in the original dataset
fBodyGyromY	is the mean of	fBodyGyro-mean()-Y	in the original dataset
fBodyGyromZ	is the mean of	fBodyGyro-mean()-Z	in the original dataset
fBodyGyrosdX	is the mean of	fBodyGyro-std()-X	in the original dataset
fBodyGyrosdY	is the mean of	fBodyGyro-std()-Y	in the original dataset
fBodyGyrosdZ	is the mean of	fBodyGyro-std()-Z	in the original dataset
fBodyAccMagm	is the mean of	fBodyAccMag-mean()	in the original dataset
fBodyAccMagsd	is the mean of	fBodyAccMag-std()	in the original dataset
fBodyBodyGyroMagm	is the mean of	fBodyBodyGyroMag-mean()	in the original dataset
fBodyBodyGyroMagsd	is the mean of	fBodyBodyGyroMag-std()	in the original dataset
fBodyBodyGyroJerkMagm	is the mean of	fBodyBodyGyroJerkMag-mean()	in the original dataset
fBodyBodyGyroJerkMagsd	is the mean of	fBodyBodyGyroJerkMag-std()	in the original dataset
angle_tBodyAccm_gravity	is the mean of	angle(tBodyAccMean,gravity)	in the original dataset
angle_tBodyAccJerkm__gravitym	is the mean of	angle(tBodyAccJerkMean),gravityMean)	in the original dataset
angle_tBodyGyrom_gravitym	is the mean of	angle(tBodyGyroMean,gravityMean)	in the original dataset
angle_tBodyGyroJerkm_gravitym	is the mean of	angle(tBodyGyroJerkMean,gravityMean)	in the original dataset
angle_X_gravitym	is the mean of	angle(X,gravityMean)	in the original dataset
angle_Y_gravitym	is the mean of	angle(Y,gravityMean)	in the original dataset
angle_Z_gravitym	is the mean of	angle(Z,gravityMean)	in the original dataset
