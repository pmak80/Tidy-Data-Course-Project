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
                         ,"Average Body Acceleration time in X axial"
                         ,"Average Body Acceleration time in Y axial"
                         ,"Average Body Acceleration time in Z axial"
                         ,"Standard Deviation of Body Acceleration time in X axial"
                         ,"Standard Deviation of Body Acceleration time in Y axial"
                         ,"Standard Deviation of Body Acceleration time in Z axial"
                         ,"Average Gravity Acceleration time in X axial"
                         ,"Average Gravity Acceleration time in Y axial"
                         ,"Average Gravity Acceleration time in Z axial"
                         ,"Standard Deviation Gravity Acceleration time in X axial"
                         ,"Standard Deviation Gravity Acceleration time in Y axial"
                         ,"Standard DeviationGravity Acceleration time in Z axial"
                         ,"Average Body Acceleration Jerk Signal time in X axial"
                         ,"Average Body Acceleration Jerk Signal time in Y axial"
                         ,"Average Body Acceleration Jerk Signal time in Z axial"
                         ,"Standard Deviation Body Acceleration Jerk Signal time in X axial"
                         ,"Standard Deviation Body Acceleration Jerk Signal time in Y axial"
                         ,"Standard Deviation Body Acceleration Jerk Signal time in Z axial"
                         ,"Average Body Gyroscope Velocity time in X axial"
                         ,"Average Body Gyroscope Velocity time in Y axial"
                         ,"Average Body Gyroscope Velocity time in Z axial"
                         ,"Standard Deviation Body Gyroscope Velocity time in X axial"
                         ,"Standard Deviation Body Gyroscope Velocity time in Y axial"
                         ,"Standard Deviation Body Gyroscope Velocity time in Z axial"
                         ,"Average Body Gyroscope Velocity Jerk Signal Time in X axial"
                         ,"Average Body Gyroscope Velocity Jerk Signal Time in Y axial"
                         ,"Average Body Gyroscope Velocity Jerk Signal Time in Z axial"
                         ,"Standard Deviation Body Gyroscope Velocity Jerk Signal Time in X axial"
                         ,"Standard Deviation Body Gyroscope Velocity Jerk Signal Time in Y axial"
                         ,"Standard Deviation Body Gyroscope Velocity Jerk Signal Time in Z axial"
                         ,"Average Body Acceleration Magnitude Time"
                         ,"Standard Deviation Body Acceleration Magnitude Time"
                         ,"Average Gravity Acceleration Magnitude Time"
                         ,"Standard Deviation Gravity Acceleration Magniture Time"
                         ,"Average Body Acceleration Jerk Signal Magniture Time"
                         ,"Standard Deviation Body Acceleration Jerk Signal Magniture Time"
                         ,"Average Body Gyroscope Velocity Magnitude Time"
                         ,"Standard Deviation Body Gyroscope Velocity Magnitude Time"
                         ,"Average Body Gyroscope Jerk Signal Magniture Time"
                         ,"Standard Deviation Body Gyroscope Jerk Signal Magniture Time"
                         ,"Average Body Acceleration frequency in X axial"
                         ,"Average Body Acceleration frequency in Y axial"
                         ,"Average Body Acceleration frequency in Z axial"
                         ,"Standard Deviation of Body Acceleration frequency in X axial"
                         ,"Standard Deviation of Body Acceleration frequency in Y axial"
                         ,"Standard Deviation of Body Acceleration frequency in Z axial"
                         ,"Mean Frequency of Body Acceleration of Average Weighted X axial"
                         ,"Mean Frequency of Body Acceleration of Average Weighted Y axial"
                         ,"Mean Frequency of Body Acceleration of Average Weighted Z axial"
                         ,"Average Body Acceleration Jerk Signal frequency in X axial"
                         ,"Average Body Acceleration Jerk Signal frequency in Y axial"
                         ,"Average Body Acceleration Jerk Signal frequency in Z axial"
                         ,"Standard Deviation Body Acceleration Jerk Signal frequency in X axial"
                         ,"Standard Deviation Body Acceleration Jerk Signal frequency in Y axial"
                         ,"Standard Deviation Body Acceleration Jerk Signal frequency in Z axial"
                         ,"Mean Frequency of Body Acceleration Jerk Signal in X Axial"
                         ,"Mean Frequency of Body Acceleration Jerk Signal in Y Axial"
                         ,"Mean Frequency of Body Acceleration Jerk Signal in Z Axial"
                         ,"Average Body Gyroscope Frequency in X axial"
                         ,"Average Body Gyroscope Frequency in Y axial"
                         ,"Average Body Gyroscope Frequency in Z axial"
                         ,"Standard Deviation Body Gyroscope Frequency in X axial"
                         ,"Standard Deviation Body Gyroscope Frequency in Y axial"
                         ,"Standard Deviation Body Gyroscope Frequency in Z axial"
                         ,"Mean Frequency of Body Gyroscope Frequency in X axial"
                         ,"Mean Frequency of Body Gyroscope Frequency in Y axial"
                         ,"Mean Frequency of Body Gyroscope Frequency in Z axial"
                         ,"Standard Deviation Body Acceleration Magnitude frequency"
                         ,"Average Body Acceleration Magnitude frequency"
                         ,"Mean Frequency of Body Acceleration Magnitude frequency"
                         ,"Average Body Acceleration Jerk Magniture Frequency"
                         ,"Standard Deviation Body Acceleration Jerk Magnitude Frequency"
                         ,"Mean Frequency of Body Acceleration Jerk Magniture Frequency"
                         ,"Average Body Gyroscope Magnitude frequency"
                         ,"Standard Deviation of Body Gyroscope Magnitude frequency"
                         ,"Mean Frequency of Body Gyroscope Magnitude frequency"
                         ,"Average Body Gyroscope Jerk Magnitude frequency"
                         ,"Standard Deviation Body Gyroscope Jerk Magnitude frequency"
                         ,"Mean Frequency of Body Gyroscrope Jerk Magnitude frequency"
                         ,"Angular Gravity Mean of Body Acceleration Jerk time"
                         ,"Angular Gravity Mean of Body Gyroscope time"
                         ,"Angular Gravity Mean of Body Gyroscope Jerk time"
                         ,"Angular Gravity Mean in X axial"
                         ,"Angular Gravity Mean in Y axial"
                         ,"Angular Gravity Mean in Z axial")



##Tidy Group -  average of each variable for each activity and each subject  #5

tidy_group <- aggregate(final_bind[, 3:87], list(final_bind$Subject, final_bind$Activity), mean)
##Rename first and second columns 
names(tidy_group)[1:2] <- c("Subject", "Activity")


write.table(tidy_group, "./CourseProj3.txt", row.names=FALSE)
