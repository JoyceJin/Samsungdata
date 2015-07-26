# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data 
#    set with the average of each variable for each activity and each subject.


setwd("D:/Courses/Coursera/Getting and Cleaning Data/Project")
getwd()

library(plyr)
library(dplyr)

# Read dataset
labels <- read.table("./data/features.txt")
head(labels)

xtest <- read.table("./data/test/X_test.txt")
names(xtest)
names(xtest) <- labels[,2]
names(xtest)
ytest <- read.table("./data/test/Y_test.txt")
names(ytest) <- "y"
names(ytest)
subjecttest <- read.table("./data/test/subject_test.txt")
names(subjecttest) <- "subject"
test <- cbind(xtest,ytest,subjecttest)
test$set <- 2
names(test)


xtrain <- read.table("./data/train/X_train.txt")
names(xtrain) <- labels[,2]
names(xtrain)
ytrain <- read.table("./data/train/y_train.txt")
names(ytrain)<- "y"
subjecttrain <- read.table("./data/train/subject_train.txt")
names(subjecttrain) <- "subject"
train <- cbind(xtrain, ytrain, subjecttrain)
train$set <- 1
names(train)


# 1. Merge the training and the test sets
samsung <- rbind(train, test)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement
samsung.msd <- samsung[, c(1:6, 41:46, 81:86, 121:126, 161:166, 201, 202, 214, 215, 
                           227, 228, 240, 241, 253, 254, 266:271, 345:350, 424:429, 
                           503, 504, 529, 530, 542, 543, 555:564)]
head(samsung.msd)
names(samsung.msd)

# 3. Uses descriptive activity names to name the activities in the data set
names(samsung.msd)[72]<- "Activities"
names(samsung.msd)

samsung.msdl <- samsung.msd

for(i in nrow(samsung.msdl)){
  
  if(samsung.msdl$Activities[i]==1){
    samsung.msdl$Activities[i]="WALKING"
  }
  else if(samsung.msdl$Activities[i]==2){
    samsung.msdl$Activities[i]="WALKING_UPSTAIRS"
  }
  else if(samsung.msdl$Activities[i]==3){
    samsung.msdl$Activities[i]="WALKING_DOWNSTAIRS"
  }
  else if(samsung.msdl$Activities[i]==4){
    samsung.msdl$Activities[i]="SITTING"
  }
  else if(samsung.msdl$Activities[i]==5){
    samsung.msdl$Activities[i]="STANDING"
  }
  else if(samsung.msdl$Activities[i]==6){
    samsung.msdl$Activities[i]="LAYING"
  }
  
}

head(samsung.msdl)
names(samsung.msdl)

# 4. Appropriately labels the data set with descriptive variable names.
name.samsung <- names(samsung.msdl)
write.csv(name.samsung, "./data/labels.csv")
labels <- read.csv("./data/labels.csv")
names(samsung.msdl) <- c("tBodyAccmX"	,
                         "tBodyAccmY"	,
                         "tBodyAccmZ"	,
                         "tBodyAccsdX"	,
                         "tBodyAccsdY"	,
                         "tBodyAccsdZ"	,
                         "tGravityAccmX"	,
                         "tGravityAccmY"	,
                         "tGravityAccmZ"	,
                         "tGravityAccsdX"	,
                         "tGravityAccsdY"	,
                         "tGravityAccsdZ"	,
                         "tBodyAccJerkmX"	,
                         "tBodyAccJerkmY"	,
                         "tBodyAccJerkmZ"	,
                         "tBodyAccJerksdX"	,
                         "tBodyAccJerksdY"	,
                         "tBodyAccJerksdZ"	,
                         "tBodyGyromX"	,
                         "tBodyGyromY"	,
                         "tBodyGyromZ"	,
                         "tBodyGyrosdX"	,
                         "tBodyGyrosdY"	,
                         "tBodyGyrosdZ"	,
                         "tBodyGyroJerkmX"	,
                         "tBodyGyroJerkmY"	,
                         "tBodyGyroJerkmZ"	,
                         "tBodyGyroJerksdX"	,
                         "tBodyGyroJerksdY"	,
                         "tBodyGyroJerksdZ"	,
                         "tBodyAccMagm"	,
                         "tBodyAccMagsd"	,
                         "tGravityAccMagm"	,
                         "tGravityAccMagsd"	,
                         "tBodyAccJerkMagm"	,
                         "tBodyAccJerkMagsd"	,
                         "tBodyGyroMagm"	,
                         "tBodyGyroMagsd"	,
                         "tBodyGyroJerkMagm"	,
                         "tBodyGyroJerkMagsd"	,
                         "fBodyAccmX"	,
                         "fBodyAccmY"	,
                         "fBodyAccmZ"	,
                         "fBodyAccsdX"	,
                         "fBodyAccsdY"	,
                         "fBodyAccsdZ"	,
                         "fBodyAccJerkmX"	,
                         "fBodyAccJerkmY"	,
                         "fBodyAccJerkmZ"	,
                         "fBodyAccJerksdX"	,
                         "fBodyAccJerksdY"	,
                         "fBodyAccJerksdZ"	,
                         "fBodyGyromX"	,
                         "fBodyGyromY"	,
                         "fBodyGyromZ"	,
                         "fBodyGyrosdX"	,
                         "fBodyGyrosdY"	,
                         "fBodyGyrosdZ"	,
                         "fBodyAccMagm"	,
                         "fBodyAccMagsd"	,
                         "fBodyBodyGyroMagm"	,
                         "fBodyBodyGyroMagsd"	,
                         "fBodyBodyGyroJerkMagm"	,
                         "fBodyBodyGyroJerkMagsd"	,
                         "angle_tBodyAccm_gravity"	,
                         "angle_tBodyAccJerkm__gravitym"	,
                         "angle_tBodyGyrom_gravitym"	,
                         "angle_tBodyGyroJerkm_gravitym"	,
                         "angle_X_gravitym"	,
                         "angle_Y_gravitym"	,
                         "angle_Z_gravitym"	,
                         "Activities"	,
                         "subject"	,
                         "set"	
)

# 5. From the data set in step 4, creates a second, independent tidy data 
#    set with the average of each variable for each activity and each subject.
samsunga <- group_by(samsung.msdl, subject, Activities)
samsungb <- summarize(samsunga, 
                      tBodyAccmX = mean(tBodyAccmX),
                      tBodyAccmY	=	mean(	tBodyAccmY	),
                      tBodyAccmZ	=	mean(	tBodyAccmZ	),
                      tBodyAccsdX	=	mean(	tBodyAccsdX	),
                      tBodyAccsdY	=	mean(	tBodyAccsdY	),
                      tBodyAccsdZ	=	mean(	tBodyAccsdZ	),
                      tGravityAccmX	=	mean(	tGravityAccmX	),
                      tGravityAccmY	=	mean(	tGravityAccmY	),
                      tGravityAccmZ	=	mean(	tGravityAccmZ	),
                      tGravityAccsdX	=	mean(	tGravityAccsdX	),
                      tGravityAccsdY	=	mean(	tGravityAccsdY	),
                      tGravityAccsdZ	=	mean(	tGravityAccsdZ	),
                      tBodyAccJerkmX	=	mean(	tBodyAccJerkmX	),
                      tBodyAccJerkmY	=	mean(	tBodyAccJerkmY	),
                      tBodyAccJerkmZ	=	mean(	tBodyAccJerkmZ	),
                      tBodyAccJerksdX	=	mean(	tBodyAccJerksdX	),
                      tBodyAccJerksdY	=	mean(	tBodyAccJerksdY	),
                      tBodyAccJerksdZ	=	mean(	tBodyAccJerksdZ	),
                      tBodyGyromX	=	mean(	tBodyGyromX	),
                      tBodyGyromY	=	mean(	tBodyGyromY	),
                      tBodyGyromZ	=	mean(	tBodyGyromZ	),
                      tBodyGyrosdX	=	mean(	tBodyGyrosdX	),
                      tBodyGyrosdY	=	mean(	tBodyGyrosdY	),
                      tBodyGyrosdZ	=	mean(	tBodyGyrosdZ	),
                      tBodyGyroJerkmX	=	mean(	tBodyGyroJerkmX	),
                      tBodyGyroJerkmY	=	mean(	tBodyGyroJerkmY	),
                      tBodyGyroJerkmZ	=	mean(	tBodyGyroJerkmZ	),
                      tBodyGyroJerksdX	=	mean(	tBodyGyroJerksdX	),
                      tBodyGyroJerksdY	=	mean(	tBodyGyroJerksdY	),
                      tBodyGyroJerksdZ	=	mean(	tBodyGyroJerksdZ	),
                      tBodyAccMagm	=	mean(	tBodyAccMagm	),
                      tBodyAccMagsd	=	mean(	tBodyAccMagsd	),
                      tGravityAccMagm	=	mean(	tGravityAccMagm	),
                      tGravityAccMagsd	=	mean(	tGravityAccMagsd	),
                      tBodyAccJerkMagm	=	mean(	tBodyAccJerkMagm	),
                      tBodyAccJerkMagsd	=	mean(	tBodyAccJerkMagsd	),
                      tBodyGyroMagm	=	mean(	tBodyGyroMagm	),
                      tBodyGyroMagsd	=	mean(	tBodyGyroMagsd	),
                      tBodyGyroJerkMagm	=	mean(	tBodyGyroJerkMagm	),
                      tBodyGyroJerkMagsd	=	mean(	tBodyGyroJerkMagsd	),
                      fBodyAccmX	=	mean(	fBodyAccmX	),
                      fBodyAccmY	=	mean(	fBodyAccmY	),
                      fBodyAccmZ	=	mean(	fBodyAccmZ	),
                      fBodyAccsdX	=	mean(	fBodyAccsdX	),
                      fBodyAccsdY	=	mean(	fBodyAccsdY	),
                      fBodyAccsdZ	=	mean(	fBodyAccsdZ	),
                      fBodyAccJerkmX	=	mean(	fBodyAccJerkmX	),
                      fBodyAccJerkmY	=	mean(	fBodyAccJerkmY	),
                      fBodyAccJerkmZ	=	mean(	fBodyAccJerkmZ	),
                      fBodyAccJerksdX	=	mean(	fBodyAccJerksdX	),
                      fBodyAccJerksdY	=	mean(	fBodyAccJerksdY	),
                      fBodyAccJerksdZ	=	mean(	fBodyAccJerksdZ	),
                      fBodyGyromX	=	mean(	fBodyGyromX	),
                      fBodyGyromY	=	mean(	fBodyGyromY	),
                      fBodyGyromZ	=	mean(	fBodyGyromZ	),
                      fBodyGyrosdX	=	mean(	fBodyGyrosdX	),
                      fBodyGyrosdY	=	mean(	fBodyGyrosdY	),
                      fBodyGyrosdZ	=	mean(	fBodyGyrosdZ	),
                      fBodyAccMagm	=	mean(	fBodyAccMagm	),
                      fBodyAccMagsd	=	mean(	fBodyAccMagsd	),
                      fBodyBodyGyroMagm	=	mean(	fBodyBodyGyroMagm	),
                      fBodyBodyGyroMagsd	=	mean(	fBodyBodyGyroMagsd	),
                      fBodyBodyGyroJerkMagm	=	mean(	fBodyBodyGyroJerkMagm	),
                      fBodyBodyGyroJerkMagsd	=	mean(	fBodyBodyGyroJerkMagsd	),
                      angle_tBodyAccm_gravity	=	mean(	angle_tBodyAccm_gravity	),
                      angle_tBodyAccJerkm__gravitym	=	mean(	angle_tBodyAccJerkm__gravitym	),
                      angle_tBodyGyrom_gravitym	=	mean(	angle_tBodyGyrom_gravitym	),
                      angle_tBodyGyroJerkm_gravitym	=	mean(	angle_tBodyGyroJerkm_gravitym	),
                      angle_X_gravitym	=	mean(	angle_X_gravitym	),
                      angle_Y_gravitym	=	mean(	angle_Y_gravitym	),
                      angle_Z_gravitym	=	mean(	angle_Z_gravitym	)
)



write.table(samsungb,"./data/tidydata.txt")
