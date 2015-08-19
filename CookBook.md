# Tidy-Data-Course-Project
Tidy Data Course Project for Coursera - Johns Hopkins
##CodeBook 
=========================================================================

The data represent data collected from the Samsung Galaxy S Smartphone's accelerometers and the description could be found at the site below:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The raw data comes from the url site (zip file below) and the features_info.txt in the site contains the description of the raw data.
For the Tidy Data - Course Project, it only required the mean and standard deviation of the measurement and have modified the below information
to display only the mean and standard deviation information. 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. 
These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter 
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated 
into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). 
Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. 
(Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency


Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

##Transformation of the data:
   R version 3.2.1 on Window 7  64 bit
The experiments is split into two groups with a total of 30 participants between the age of 19-48.  One data set contains 70% of the participants
to generate the training data set and the other 30% for the test data set.  The participants are given Subject ID from 1-30.  Each participant performed
6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing the smartphone. 

Step 1:  Combined the test and train dataset into one.
Step 2:  Extract only the variables with mean and standard deviation measurements.
Step 3:  Join the Activity Label with the y_test and y_train data set to display the description activity.
Step 4:	 Combined the Subject ID and Activity from the test and train data sets.
Step 5:  Combined the Subject ID and Activity with the combined test and train dataset.
Step 6:  Give the each variable descriptive name. 
Variable List: 
1	Subject
2	Activity
3	tBodyAcc-mean()-X	Average Body Acceleration time in X axial
4	tBodyAcc-mean()-Y	Average Body Acceleration time in Y axial
5	tBodyAcc-mean()-Z	Average Body Acceleration time in Z axial
6	tBodyAcc-std()-X	Standard Deviation of Body Acceleration time in X axial
7	tBodyAcc-std()-Y	Standard Deviation of Body Acceleration time in Y axial
8	tBodyAcc-std()-Z	Standard Deviation of Body Acceleration time in Z axial
9	tGravityAcc-mean()-X	Average Gravity Acceleration time in X axial
10	tGravityAcc-mean()-Y	Average Gravity Acceleration time in Y axial
11	tGravityAcc-mean()-Z	Average Gravity Acceleration time in Z axial
12	tGravityAcc-std()-X	Standard Deviation Gravity Acceleration time in X axial
13	tGravityAcc-std()-Y	Standard Deviation Gravity Acceleration time in Y axial
14	tGravityAcc-std()-Z	Standard DeviationGravity Acceleration time in Z axial
15	tBodyAccJerk-mean()-X	Average Body Acceleration Jerk Signal time in X axial
16	tBodyAccJerk-mean()-Y	Average Body Acceleration Jerk Signal time in Y axial
17	tBodyAccJerk-mean()-Z	Average Body Acceleration Jerk Signal time in Z axial
18	tBodyAccJerk-std()-X	Standard Deviation Body Acceleration Jerk Signal time in X axial
19	tBodyAccJerk-std()-Y	Standard Deviation Body Acceleration Jerk Signal time in Y axial
20	tBodyAccJerk-std()-Z	Standard Deviation Body Acceleration Jerk Signal time in Z axial
21	tBodyGyro-mean()-X	Average Body Gyroscope Velocity time in X axial
22	tBodyGyro-mean()-Y	Average Body Gyroscope Velocity time in Y axial
23	tBodyGyro-mean()-Z	Average Body Gyroscope Velocity time in Z axial
24	tBodyGyro-std()-X	Standard Deviation Body Gyroscope Velocity time in X axial
25	tBodyGyro-std()-Y	Standard Deviation Body Gyroscope Velocity time in Y axial
26	tBodyGyro-std()-Z	Standard Deviation Body Gyroscope Velocity time in Z axial
27	tBodyGyroJerk-mean()-X	Average Body Gyroscope Velocity Jerk Signal Time in X axial
28	tBodyGyroJerk-mean()-Y	Average Body Gyroscope Velocity Jerk Signal Time in Y axial
29	tBodyGyroJerk-mean()-Z	Average Body Gyroscope Velocity Jerk Signal Time in Z axial
30	tBodyGyroJerk-std()-X	Standard Deviation Body Gyroscope Velocity Jerk Signal Time in X axial
31	tBodyGyroJerk-std()-Y	Standard Deviation Body Gyroscope Velocity Jerk Signal Time in Y axial
32	tBodyGyroJerk-std()-Z	Standard Deviation Body Gyroscope Velocity Jerk Signal Time in Z axial
33	tBodyAccMag-mean()	Average Body Acceleration Magnitude Time
34	tBodyAccMag-std()	Standard Deviation Body Acceleration Magnitude Time
35	tGravityAccMag-mean()	Average Gravity Acceleration Magnitude Time
36	tGravityAccMag-std()	Standard Deviation Gravity Acceleration Magniture Time
37	tBodyAccJerkMag-mean()	Average Body Acceleration Jerk Signal Magniture Time
38	tBodyAccJerkMag-std()	Standard Deviation Body Acceleration Jerk Signal Magniture Time
39	tBodyGyroMag-mean()	Average Body Gyroscope Velocity Magnitude Time
40	tBodyGyroMag-std()	Standard Deviation Body Gyroscope Velocity Magnitude Time
41	tBodyGyroJerkMag-mean()	Average Body Gyroscope Jerk Signal Magniture Time
42	tBodyGyroJerkMag-std()	Standard Deviation Body Gyroscope Jerk Signal Magniture Time
43	fBodyAcc-mean()-X	Average Body Acceleration frequency in X axial
44	fBodyAcc-mean()-Y	Average Body Acceleration frequency in Y axial
45	fBodyAcc-mean()-Z	Average Body Acceleration frequency in Z axial
46	fBodyAcc-std()-X	Standard Deviation of Body Acceleration frequency in X axial
47	fBodyAcc-std()-Y	Standard Deviation of Body Acceleration frequency in Y axial
48	fBodyAcc-std()-Z	Standard Deviation of Body Acceleration frequency in Z axial
49	fBodyAcc-meanFreq()-X	Mean Frequency of Body Acceleration of Average Weighted X axial
50	fBodyAcc-meanFreq()-Y	Mean Frequency of Body Acceleration of Average Weighted Y axial
51	fBodyAcc-meanFreq()-Z	Mean Frequency of Body Acceleration of Average Weighted Z axial
52	fBodyAccJerk-mean()-X	Average Body Acceleration Jerk Signal frequency in X axial
53	fBodyAccJerk-mean()-Y	Average Body Acceleration Jerk Signal frequency in Y axial
54	fBodyAccJerk-mean()-Z	Average Body Acceleration Jerk Signal frequency in Z axial
55	fBodyAccJerk-std()-X	Standard Deviation Body Acceleration Jerk Signal frequency in X axial
56	fBodyAccJerk-std()-Y	Standard Deviation Body Acceleration Jerk Signal frequency in Y axial
57	fBodyAccJerk-std()-Z	Standard Deviation Body Acceleration Jerk Signal frequency in Z axial
58	fBodyAccJerk-meanFreq()-X	Mean Frequency of Body Acceleration Jerk Signal in X Axial
59	fBodyAccJerk-meanFreq()-Y	Mean Frequency of Body Acceleration Jerk Signal in Y Axial
60	fBodyAccJerk-meanFreq()-Z	Mean Frequency of Body Acceleration Jerk Signal in Z Axial
61	fBodyGyro-mean()-X	Average Body Gyroscope Frequency in X axial
62	fBodyGyro-mean()-Y	Average Body Gyroscope Frequency in Y axial
63	fBodyGyro-mean()-Z	Average Body Gyroscope Frequency in Z axial
64	fBodyGyro-std()-X	Standard Deviation Body Gyroscope Frequency in X axial
65	fBodyGyro-std()-Y	Standard Deviation Body Gyroscope Frequency in Y axial
66	fBodyGyro-std()-Z	Standard Deviation Body Gyroscope Frequency in Z axial
67	fBodyGyro-meanFreq()-X	Mean Frequency of Body Gyroscope Frequency in X axial
68	fBodyGyro-meanFreq()-Y	Mean Frequency of Body Gyroscope Frequency in Y axial
69	fBodyGyro-meanFreq()-Z	Mean Frequency of Body Gyroscope Frequency in Z axial
70	fBodyAccMag-mean()	Standard Deviation Body Acceleration Magnitude frequency
71	fBodyAccMag-std()	Average Body Acceleration Magnitude frequency
72	fBodyAccMag-meanFreq()	Mean Frequency of Body Acceleration Magnitude frequency
73	fBodyBodyAccJerkMag-mean()	Average Body Acceleration Jerk Magniture Frequency
74	fBodyBodyAccJerkMag-std()	Standard Deviation Body Acceleration Jerk Magnitude Frequency
75	fBodyBodyAccJerkMag-meanFreq()	Mean Frequency of Body Acceleration Jerk Magniture Frequency
76	fBodyBodyGyroMag-mean()	Average Body Gyroscope Magnitude frequency
77	fBodyBodyGyroMag-std()	Standard Deviation of Body Gyroscope Magnitude frequency
78	fBodyBodyGyroMag-meanFreq()	Mean Frequency of Body Gyroscope Magnitude frequency
79	fBodyBodyGyroJerkMag-mean()	Average Body Gyroscope Jerk Magnitude frequency
80	fBodyBodyGyroJerkMag-std()	Standard Deviation Body Gyroscope Jerk Magnitude frequency
81	fBodyBodyGyroJerkMag-meanFreq()	Mean Frequency of Body Gyroscrope Jerk Magnitude frequency
82	angle(tBodyAccJerkMean),gravityMean)	Angular Gravity Mean of Body Acceleration Jerk time
83	angle(tBodyGyroMean,gravityMean)	Angular Gravity Mean of Body Gyroscope time
84	angle(tBodyGyroJerkMean,gravityMean)	Angular Gravity Mean of Body Gyroscope Jerk time
85	angle(X,gravityMean)	Angular Gravity Mean in X axial
86	angle(Y,gravityMean)	Angular Gravity Mean in Y axial
87	angle(Z,gravityMean)	Angular Gravity Mean in Z axial

##Tidy data set with average of each variable for each activity and each subject.
Step 1:  Used the aggregate R function to group the Subject and Activity and find the mean of the remaining variable from column 3-87.
Step 2:  Used the write.table function to called the tidy data set data frame and save it into a txt file called CourseProj3.txt.  

