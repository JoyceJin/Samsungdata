# Samsungdata

The purpose of this R code is to clean the raw dataset "Human Activity Recognition Using Smartphones Data Set" (available https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip). A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The R code first reads the dataset (including both test data and training data) and then merge the dataset. Then the following  are applied to the raw dataset in order to clean the data:

1. Extracts the mean and standard deviation for each measurement.
2. Uses descriptive activity names to name the activities in the data set.
3. Labels data set with descriptive variable names. 
4. Calculates the average of each variable for each activity and each subject.

CODE BOOK

1.	subject: the id of the subject in the experiment.
2.	Activies: the lable of the activities (1=walking, 2=walking upstairs, 3=walking downstairs, 4=sitting, 5=standing, 6=laying).
3.	tBodyAccmX	is the mean of	tBodyAcc-mean()-X	in the original dataset.
4.	tBodyAccmY	is the mean of	tBodyAcc-mean()-Y	in the original dataset.
5.	tBodyAccmZ	is the mean of	tBodyAcc-mean()-Z	in the original dataset.
6.	tBodyAccsdX	is the mean of	tBodyAcc-std()-X	in the original dataset.
7.	tBodyAccsdY	is the mean of	tBodyAcc-std()-Y	in the original dataset.
8.	tBodyAccsdZ	is the mean of	tBodyAcc-std()-Z	in the original dataset.
9.	tGravityAccmX	is the mean of	tGravityAcc-mean()-X	in the original dataset.
10.	tGravityAccmY	is the mean of	tGravityAcc-mean()-Y	in the original dataset.
11.	tGravityAccmZ	is the mean of	tGravityAcc-mean()-Z	in the original dataset.
12.	tGravityAccsdX	is the mean of	tGravityAcc-std()-X	in the original dataset.
13.	tGravityAccsdY	is the mean of	tGravityAcc-std()-Y	in the original dataset.
14.	tGravityAccsdZ	is the mean of	tGravityAcc-std()-Z	in the original dataset.
15.	tBodyAccJerkmX	is the mean of	tBodyAccJerk-mean()-X	in the original dataset.
16.	tBodyAccJerkmY	is the mean of	tBodyAccJerk-mean()-Y	in the original dataset.
17.	tBodyAccJerkmZ	is the mean of	tBodyAccJerk-mean()-Z	in the original dataset.
18.	tBodyAccJerksdX	is the mean of	tBodyAccJerk-std()-X	in the original dataset.
19.	tBodyAccJerksdY	is the mean of	tBodyAccJerk-std()-Y	in the original dataset.
20.	tBodyAccJerksdZ	is the mean of	tBodyAccJerk-std()-Z	in the original dataset.
21.	tBodyGyromX	is the mean of	tBodyGyro-mean()-X	in the original dataset.
22.	tBodyGyromY	is the mean of	tBodyGyro-mean()-Y	in the original dataset.
23.	tBodyGyromZ	is the mean of	tBodyGyro-mean()-Z	in the original dataset.
24.	tBodyGyrosdX	is the mean of	tBodyGyro-std()-X	in the original dataset.
25.	tBodyGyrosdY	is the mean of	tBodyGyro-std()-Y	in the original dataset.
26.	tBodyGyrosdZ	is the mean of	tBodyGyro-std()-Z	in the original dataset.
27.	tBodyGyroJerkmX	is the mean of	tBodyGyroJerk-mean()-X	in the original dataset.
28.	tBodyGyroJerkmY	is the mean of	tBodyGyroJerk-mean()-Y	in the original dataset.
29.	tBodyGyroJerkmZ	is the mean of	tBodyGyroJerk-mean()-Z	in the original dataset.
30.	tBodyGyroJerksdX	is the mean of	tBodyGyroJerk-std()-X	in the original dataset.
31.	tBodyGyroJerksdY	is the mean of	tBodyGyroJerk-std()-Y	in the original dataset.
32.	tBodyGyroJerksdZ	is the mean of	tBodyGyroJerk-std()-Z	in the original dataset.
33.	tBodyAccMagm	is the mean of	tBodyAccMag-mean()	in the original dataset.
34.	tBodyAccMagsd	is the mean of	tBodyAccMag-std()	in the original dataset.
35.	tGravityAccMagm	is the mean of	tGravityAccMag-mean()	in the original dataset.
36.	tGravityAccMagsd	is the mean of	tGravityAccMag-std()	in the original dataset.
37.	tBodyAccJerkMagm	is the mean of	tBodyAccJerkMag-mean()	in the original dataset.
38.	tBodyAccJerkMagsd	is the mean of	tBodyAccJerkMag-std()	in the original dataset.
39.	tBodyGyroMagm	is the mean of	tBodyGyroMag-mean()	in the original dataset.
40.	tBodyGyroMagsd	is the mean of	tBodyGyroMag-std()	in the original dataset.
41.	tBodyGyroJerkMagm	is the mean of	tBodyGyroJerkMag-mean()	in the original dataset.
42.	tBodyGyroJerkMagsd	is the mean of	tBodyGyroJerkMag-std()	in the original dataset.
43.	fBodyAccmX	is the mean of	fBodyAcc-mean()-X	in the original dataset.
44.	fBodyAccmY	is the mean of	fBodyAcc-mean()-Y	in the original dataset.
45.	fBodyAccmZ	is the mean of	fBodyAcc-mean()-Z	in the original dataset.
46.	fBodyAccsdX	is the mean of	fBodyAcc-std()-X	in the original dataset.
47.	fBodyAccsdY	is the mean of	fBodyAcc-std()-Y	in the original dataset.
48.	fBodyAccsdZ	is the mean of	fBodyAcc-std()-Z	in the original dataset.
49.	fBodyAccJerkmX	is the mean of	fBodyAccJerk-mean()-X	in the original dataset.
50.	fBodyAccJerkmY	is the mean of	fBodyAccJerk-mean()-Y	in the original dataset.
51.	fBodyAccJerkmZ	is the mean of	fBodyAccJerk-mean()-Z	in the original dataset.
52.	fBodyAccJerksdX	is the mean of	fBodyAccJerk-std()-X	in the original dataset.
53.	fBodyAccJerksdY	is the mean of	fBodyAccJerk-std()-Y	in the original dataset.
54.	fBodyAccJerksdZ	is the mean of	fBodyAccJerk-std()-Z	in the original dataset.
55.	fBodyGyromX	is the mean of	fBodyGyro-mean()-X	in the original dataset.
56.	fBodyGyromY	is the mean of	fBodyGyro-mean()-Y	in the original dataset.
57.	fBodyGyromZ	is the mean of	fBodyGyro-mean()-Z	in the original dataset.
58.	fBodyGyrosdX	is the mean of	fBodyGyro-std()-X	in the original dataset.
59.	fBodyGyrosdY	is the mean of	fBodyGyro-std()-Y	in the original dataset.
60.	fBodyGyrosdZ	is the mean of	fBodyGyro-std()-Z	in the original dataset.
61.	fBodyAccMagm	is the mean of	fBodyAccMag-mean()	in the original dataset.
62.	fBodyAccMagsd	is the mean of	fBodyAccMag-std()	in the original dataset.
63.	fBodyBodyGyroMagm	is the mean of	fBodyBodyGyroMag-mean()	in the original dataset.
64.	fBodyBodyGyroMagsd	is the mean of	fBodyBodyGyroMag-std()	in the original dataset.
65.	fBodyBodyGyroJerkMagm	is the mean of	fBodyBodyGyroJerkMag-mean()	in the original dataset.
66.	fBodyBodyGyroJerkMagsd	is the mean of	fBodyBodyGyroJerkMag-std()	in the original dataset.
67.	angle_tBodyAccm_gravity	is the mean of	angle(tBodyAccMean,gravity)	in the original dataset.
68.	angle_tBodyAccJerkm__gravitym	is the mean of	angle(tBodyAccJerkMean),gravityMean)	in the original dataset.
69.	angle_tBodyGyrom_gravitym	is the mean of	angle(tBodyGyroMean,gravityMean)	in the original dataset.
70.	angle_tBodyGyroJerkm_gravitym	is the mean of	angle(tBodyGyroJerkMean,gravityMean)	in the original dataset.
71.	angle_X_gravitym	is the mean of	angle(X,gravityMean)	in the original dataset.
72.	angle_Y_gravitym	is the mean of	angle(Y,gravityMean)	in the original dataset.
73.	angle_Z_gravitym	is the mean of	angle(Z,gravityMean)	in the original dataset.


