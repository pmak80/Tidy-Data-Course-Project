##  R version 3.2.1 on Window 7  64 bit

library(plyr)
library(dplyr)


features <- read.table("./UCI HAR Dataset/features.txt")  

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")  


##Read and load Test Folder data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt") 
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")  
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")

##Read and load Train Folder data
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt") 
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")  
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")

##Merge Test and Train Data  --1 of assignment
merge_test_train <- rbind(X_test, X_train)

## Extract the Mean and Standard Deviation Columns only  --2 of assignment
mean_std <- merge_test_train[,
                            c(1:6
                              ,41:46
                              ,81:86
                              ,121:126
                              ,161:166
                              ,201:202
                              ,214:215
                              ,227:228
                              ,240:241
                              ,253:254
                              ,266:271
                              ,294:296
                              ,345:350
                              ,373:375
                              ,424:429
                              ,452:454
                              ,503:504
                              ,513
                              ,516:517
                              ,526
                              ,529:530
                              ,539
                              ,542:543
                              ,552
                              ,556:561)]



##get description on the activity ---3 of assignment
y_activity_test <- join(y_test, activity_labels) 
y_activity_train <- join(y_train, activity_labels)  

## Column combine activity description
activity_bind <- rbind(y_activity_test, y_activity_train) 

## Column Combine Subject 
subject_bind <- rbind(subject_test, subject_train)

##Complete Column bind with Subject, Activity, Mean and Standard Deviation
final_bind <- cbind(subject_bind, activity_bind[,2], mean_std)  


## Descriptive Variable Names  --4 of assignment
colnames(final_bind) = c("Subject"
                         ,"Activity"
                         ,"MeanBodyAccelerationtimeXaxial"
                         ,"MeanBodyAccelerationtimeYaxial"
                         ,"MeanBodyAccelerationtimeZaxial"
                         ,"StandardDeviationBodyAccelerationtimeXaxial"
                         ,"StandardDeviationBodyAccelerationtimeYaxial"
                         ,"StandardDeviationBodyAccelerationtimeZaxial"
                         ,"MeanGravityAccelerationtimeXaxial"
                         ,"MeanGravityAccelerationtimeYaxial"
                         ,"MeanGravityAccelerationtimeZaxial"
                         ,"StandardDeviationGravityAccelerationtimeXaxial"
                         ,"StandardDeviationGravityAccelerationtimeYaxial"
                         ,"StandardDeviationGravityAccelerationtimeZaxial"
                         ,"MeanBodyAccelerationJerktimeXaxial"
                         ,"MeanBodyAccelerationJerktimeYaxial"
                         ,"MeanBodyAccelerationJerktimeZaxial"
                         ,"StandardDeviationBodyAccelerationJerktimeXaxial"
                         ,"StandardDeviationBodyAccelerationJerktimeYaxial"
                         ,"StandardDeviationBodyAccelerationJerktimeZaxial"
                         ,"MeanBodyGyroscopeVelocitytimeXaxial"
                         ,"MeanBodyGyroscopeVelocitytimeYaxial"
                         ,"MeanBodyGyroscopeVelocitytimeZaxial"
                         ,"StandardDeviationBodyGyroscopeVelocitytimeXaxial"
                         ,"StandardDeviationBodyGyroscopeVelocitytimeYaxial"
                         ,"StandardDeviationBodyGyroscopeVelocitytimeZaxial"
                         ,"MeanBodyGyroscopeVelocityJerkTimeXaxial"
                         ,"MeanBodyGyroscopeVelocityJerkTimeYaxial"
                         ,"MeanBodyGyroscopeVelocityJerkTimeZaxial"
                         ,"StandardDeviationBodyGyroscopeVelocityJerkTimeXaxial"
                         ,"StandardDeviationBodyGyroscopeVelocityJerkTimeYaxial"
                         ,"StandardDeviationBodyGyroscopeVelocityJerkTimeZaxial"
                         ,"MeanBodyAccelerationMagnitudeTime"
                         ,"StandardDeviationBodyAccelerationMagnitudeTime"
                         ,"MeanGravityAccelerationMagnitudeTime"
                         ,"StandardDeviationGravityAccelerationMagnitureTime"
                         ,"MeanBodyAccelerationJerkMagnitureTime"
                         ,"StandardDeviationBodyAccelerationJerkMagnitureTime"
                         ,"MeanBodyGyroscopeVelocityMagnitudeTime"
                         ,"StandardDeviationBodyGyroscopeVelocityMagnitudeTime"
                         ,"MeanBodyGyroscopeJerkMagnitureTime"
                         ,"StandardDeviationBodyGyroscopeJerkMagnitureTime"
                         ,"MeanBodyAccelerationFreqXaxial"
                         ,"MeanBodyAccelerationFreqYaxial"
                         ,"MeanBodyAccelerationFreqZaxial"
                         ,"StandardDeviationBodyAccelerationFreqXaxial"
                         ,"StandardDeviationBodyAccelerationFreqYaxial"
                         ,"StandardDeviationBodyAccelerationFreqZaxial"
                         ,"MeanFreqBodyAccelerationMeanWeightedXaxial"
                         ,"MeanFreqBodyAccelerationMeanWeightedYaxial"
                         ,"MeanFreqBodyAccelerationMeanWeightedZaxial"
                         ,"MeanBodyAccelerationJerkFreqXaxial"
                         ,"MeanBodyAccelerationJerkFreqYaxial"
                         ,"MeanBodyAccelerationJerkFreqZaxial"
                         ,"StandardDeviationBodyAccelerationJerkFreqXaxial"
                         ,"StandardDeviationBodyAccelerationJerkFreqYaxial"
                         ,"StandardDeviationBodyAccelerationJerkFreqZaxial"
                         ,"MeanFreqBodyAccelerationJerkXAxial"
                         ,"MeanFreqBodyAccelerationJerkYAxial"
                         ,"MeanFreqBodyAccelerationJerkZAxial"
                         ,"MeanBodyGyroscopeFreqXaxial"
                         ,"MeanBodyGyroscopeFreqYaxial"
                         ,"MeanBodyGyroscopeFreqZaxial"
                         ,"StandardDeviationBodyGyroscopeFreqXaxial"
                         ,"StandardDeviationBodyGyroscopeFreqYaxial"
                         ,"StandardDeviationBodyGyroscopeFreqZaxial"
                         ,"MeanFreqBodyGyroscopeFreqXaxial"
                         ,"MeanFreqBodyGyroscopeFreqYaxial"
                         ,"MeanFreqBodyGyroscopeFreqZaxial"
                         ,"StandardDeviationBodyAccelerationMagnitudeFreq"
                         ,"MeanBodyAccelerationMagnitudeFreq"
                         ,"MeanFreqBodyAccelerationMagnitudeFreq"
                         ,"MeanBodyAccelerationJerkMagnitureFreq"
                         ,"StandardDeviationBodyAccelerationJerkMagnitudeFreq"
                         ,"MeanFreqBodyAccelerationJerkMagnitureFreq"
                         ,"MeanBodyGyroscopeMagnitudeFreq"
                         ,"StandardDeviationBodyGyroscopeMagnitudeFreq"
                         ,"MeanFreqBodyGyroscopeMagnitudeFreq"
                         ,"MeanBodyGyroscopeJerkMagnitudeFreq"
                         ,"StandardDeviationBodyGyroscopeJerkMagnitudeFreq"
                         ,"MeanFreqBodyGyroscropeJerkMagnitudeFreq"
                         ,"AngularGravityMeanBodyAccelerationJerktime"
                         ,"AngularGravityMeanBodyGyroscopetime"
                         ,"AngularGravityMeanBodyGyroscopeJerktime"
                         ,"AngularGravityMeanXaxial"
                         ,"AngularGravityMeanYaxial"
                         ,"AngularGravityMeanZaxial"
)



##Tidy Group -  average of each variable for each activity and each subject  #5

tidy_group <- aggregate(final_bind[, 3:87], list(final_bind$Subject, final_bind$Activity), mean)
##Rename first and second columns 
names(tidy_group)[1:2] <- c("Subject", "Activity")


write.table(tidy_group, "./CourseProj3.txt", row.names=FALSE)
