# Tidy-Data-Course-Project
Tidy Data Course Project for Coursera - Johns Hopkins
##CodeBook 
=========================================================================

The data represent data collected from the Samsung Galaxy S Smartphone's accelerometers and the description could be found at the site below:
http://archive.ics.uci.edu/ml/datasets/Human<li>Activity<li>Recognition<li>Using<li>Smartphones

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

<ul>
<li>tBodyAcc-XYZ</li>
<li>tGravityAcc-XYZ</li>
<li>tBodyAccJerk-XYZ</li>
<li>tBodyGyro-XYZ</li>
<li>tBodyGyroJerk-XYZ</li>
<li>tBodyAccMag</li>
<li>tGravityAccMag</li>
<li>tBodyAccJerkMag</li>
<li>tBodyGyroMag</li>
<li>tBodyGyroJerkMag</li>
<li>fBodyAcc-XYZ</li>
<li>fBodyAccJerk-XYZ</li>
<li>fBodyGyro-XYZ</li>
<li>fBodyAccMag</li>
<li>fBodyAccJerkMag</li>
<li>fBodyGyroMag</li>
<li>fBodyGyroJerkMag</li>
</ul>

The set of variables that were estimated from these signals are: 

<ul>
<li>mean(): Mean value</li>
<li>std(): Standard deviation</li>
<li>meanFreq(): Weighted average of the frequency components to obtain a mean frequency</li>
</ul>

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

<ul>
<li>gravityMean</li>
<li>tBodyAccMean</li>
<li>tBodyAccJerkMean</li>
<li>tBodyGyroMean</li>
<li>tBodyGyroJerkMean</li>
</ul>

##Transformation of the data:
   R version 3.2.1 on Window 7  64 bit
The experiments is split into two groups with a total of 30 participants between the age of 19-48.  One data set contains 70% of the participants
to generate the training data set and the other 30% for the test data set.  The participants are given Subject ID from 1-30.  Each participant performed
6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing the smartphone. 
<ul>
<li>Step 1:  Combined the test and train dataset into one.</li>
<li>Step 2:  Extract only the variables with mean and standard deviation measurements.</li>
<li>Step 3:  Join the Activity Label with the y_test and y_train data set to display the description activity.</li>
<li>Step 4:	 Combined the Subject ID and Activity from the test and train data sets.</li>
<li>Step 5:  Combined the Subject ID and Activity with the combined test and train dataset.</li>
<li>Step 6:  Give the each variable descriptive name.</li> 
</ul>
<ul>
	<li>Variable List:</li> 
</ul>
	<ul>
		<li>1 Subject 	Subject ID  (1-30)</li>
		<li>2 Activity	Activity Description of the 6 Activities</li>
		<li>3 tBodyAcc-mean()-X	Average Body Acceleration time in X axial</li>
		<li>4 tBodyAcc-mean()-Y	Average Body Acceleration time in Y axial</li>
		<li>5 tBodyAcc-mean()-Z	Average Body Acceleration time in Z axial</li>
		<li>6 tBodyAcc-std()-X	Standard Deviation of Body Acceleration time in X axial</li>
		<li>7 tBodyAcc-std()-Y	Standard Deviation of Body Acceleration time in Y axial</li>
		<li>8 tBodyAcc-std()-Z	Standard Deviation of Body Acceleration time in Z axial</li>
		<li>9 tGravityAcc-mean()-X	Average Gravity Acceleration time in X axial</li>
		<li>10 tGravityAcc-mean()-Y	Average Gravity Acceleration time in Y axial</li>
		<li>11 tGravityAcc-mean()-Z	Average Gravity Acceleration time in Z axial</li>
		<li>12 tGravityAcc-std()-X	Standard Deviation Gravity Acceleration time in X axial</li>
		<li>13 tGravityAcc-std()-Y	Standard Deviation Gravity Acceleration time in Y axial</li>
		<li>14 tGravityAcc-std()-Z	Standard DeviationGravity Acceleration time in Z axial</li>
		<li>15 tBodyAccJerk-mean()-X	Average Body Acceleration Jerk Signal time in X axial</li>
		<li>16 tBodyAccJerk-mean()-Y	Average Body Acceleration Jerk Signal time in Y axial</li>
		<li>17 tBodyAccJerk-mean()-Z	Average Body Acceleration Jerk Signal time in Z axial</li>
		<li>18 tBodyAccJerk-std()-X	Standard Deviation Body Acceleration Jerk Signal time in X axial</li>
		<li>19 tBodyAccJerk-std()-Y	Standard Deviation Body Acceleration Jerk Signal time in Y axial</li>
		<li>20 tBodyAccJerk-std()-Z	Standard Deviation Body Acceleration Jerk Signal time in Z axial</li>
		<li>21 tBodyGyro-mean()-X	Average Body Gyroscope Velocity time in X axial</li>
		<li>22 tBodyGyro-mean()-Y	Average Body Gyroscope Velocity time in Y axial</li>
		<li>23 tBodyGyro-mean()-Z	Average Body Gyroscope Velocity time in Z axial</li>
		<li>24 tBodyGyro-std()-X	Standard Deviation Body Gyroscope Velocity time in X axial</li>
		<li>25 tBodyGyro-std()-Y	Standard Deviation Body Gyroscope Velocity time in Y axial</li>
		<li>26 tBodyGyro-std()-Z	Standard Deviation Body Gyroscope Velocity time in Z axial</li>
		<li>27 tBodyGyroJerk-mean()-X	Average Body Gyroscope Velocity Jerk Signal Time in X axial</li>
		<li>28 tBodyGyroJerk-mean()-Y	Average Body Gyroscope Velocity Jerk Signal Time in Y axial</li>
		<li>29 tBodyGyroJerk-mean()-Z	Average Body Gyroscope Velocity Jerk Signal Time in Z axial</li>
		<li>30 tBodyGyroJerk-std()-X	Standard Deviation Body Gyroscope Velocity Jerk Signal Time in X axial</li>
		<li>31 tBodyGyroJerk-std()-Y	Standard Deviation Body Gyroscope Velocity Jerk Signal Time in Y axial</li>
		<li>32 tBodyGyroJerk-std()-Z	Standard Deviation Body Gyroscope Velocity Jerk Signal Time in Z axial</li>
		<li>33 tBodyAccMag-mean()	Average Body Acceleration Magnitude Time</li>
		<li>34 tBodyAccMag-std()	Standard Deviation Body Acceleration Magnitude Time</li>
		<li>35 tGravityAccMag-mean()	Average Gravity Acceleration Magnitude Time</li>
		<li>36 tGravityAccMag-std()	Standard Deviation Gravity Acceleration Magniture Time</li>
		<li>37 tBodyAccJerkMag-mean()	Average Body Acceleration Jerk Signal Magniture Time</li>
		<li>38 tBodyAccJerkMag-std()	Standard Deviation Body Acceleration Jerk Signal Magniture Time</li>
		<li>39 tBodyGyroMag-mean()	Average Body Gyroscope Velocity Magnitude Time</li>
		<li>40 tBodyGyroMag-std()	Standard Deviation Body Gyroscope Velocity Magnitude Time</li>
		<li>41 tBodyGyroJerkMag-mean()	Average Body Gyroscope Jerk Signal Magniture Time</li>
		<li>42 tBodyGyroJerkMag-std()	Standard Deviation Body Gyroscope Jerk Signal Magniture Time</li>
		<li>43 fBodyAcc-mean()-X	Average Body Acceleration frequency in X axial</li>
		<li>44 fBodyAcc-mean()-Y	Average Body Acceleration frequency in Y axial</li>
		<li>45 fBodyAcc-mean()-Z	Average Body Acceleration frequency in Z axial</li>
		<li>46 fBodyAcc-std()-X	Standard Deviation of Body Acceleration frequency in X axial</li>
		<li>47 fBodyAcc-std()-Y	Standard Deviation of Body Acceleration frequency in Y axial</li>
		<li>48 fBodyAcc-std()-Z	Standard Deviation of Body Acceleration frequency in Z axial</li>
		<li>49 fBodyAcc-meanFreq()-X	Mean Frequency of Body Acceleration of Average Weighted X axial</li>
		<li>50 fBodyAcc-meanFreq()-Y	Mean Frequency of Body Acceleration of Average Weighted Y axial</li>
		<li>51 fBodyAcc-meanFreq()-Z	Mean Frequency of Body Acceleration of Average Weighted Z axial</li>
		<li>52 fBodyAccJerk-mean()-X	Average Body Acceleration Jerk Signal frequency in X axial</li>
		<li>53 fBodyAccJerk-mean()-Y	Average Body Acceleration Jerk Signal frequency in Y axial</li>
		<li>54 fBodyAccJerk-mean()-Z	Average Body Acceleration Jerk Signal frequency in Z axial</li>
		<li>55 fBodyAccJerk-std()-X	Standard Deviation Body Acceleration Jerk Signal frequency in X axial</li>
		<li>56 fBodyAccJerk-std()-Y	Standard Deviation Body Acceleration Jerk Signal frequency in Y axial</li>
		<li>57 fBodyAccJerk-std()-Z	Standard Deviation Body Acceleration Jerk Signal frequency in Z axial</li>
		<li>58 fBodyAccJerk-meanFreq()-X	Mean Frequency of Body Acceleration Jerk Signal in X Axial</li>
		<li>59 fBodyAccJerk-meanFreq()-Y	Mean Frequency of Body Acceleration Jerk Signal in Y Axial</li>
		<li>60 fBodyAccJerk-meanFreq()-Z	Mean Frequency of Body Acceleration Jerk Signal in Z Axial</li>
		<li>61 fBodyGyro-mean()-X	Average Body Gyroscope Frequency in X axial</li>
		<li>62 fBodyGyro-mean()-Y	Average Body Gyroscope Frequency in Y axial</li>
		<li>63 fBodyGyro-mean()-Z	Average Body Gyroscope Frequency in Z axial</li>
		<li>64 fBodyGyro-std()-X	Standard Deviation Body Gyroscope Frequency in X axial</li>
		<li>65 fBodyGyro-std()-Y	Standard Deviation Body Gyroscope Frequency in Y axial</li>
		<li>66 fBodyGyro-std()-Z	Standard Deviation Body Gyroscope Frequency in Z axial</li>
		<li>67 fBodyGyro-meanFreq()-X	Mean Frequency of Body Gyroscope Frequency in X axial</li>
		<li>68 fBodyGyro-meanFreq()-Y	Mean Frequency of Body Gyroscope Frequency in Y axial</li>
		<li>69 fBodyGyro-meanFreq()-Z	Mean Frequency of Body Gyroscope Frequency in Z axial</li>
		<li>70 fBodyAccMag-mean()	Standard Deviation Body Acceleration Magnitude frequency</li>
		<li>71 fBodyAccMag-std()	Average Body Acceleration Magnitude frequency</li>
		<li>72 fBodyAccMag-meanFreq()	Mean Frequency of Body Acceleration Magnitude frequency</li>
		<li>73 fBodyBodyAccJerkMag-mean()	Average Body Acceleration Jerk Magniture Frequency</li>
		<li>74 fBodyBodyAccJerkMag-std()	Standard Deviation Body Acceleration Jerk Magnitude Frequency</li>
		<li>75 fBodyBodyAccJerkMag-meanFreq()	Mean Frequency of Body Acceleration Jerk Magniture Frequency</li>
		<li>76 fBodyBodyGyroMag-mean()	Average Body Gyroscope Magnitude frequency</li>
		<li>77 fBodyBodyGyroMag-std()	Standard Deviation of Body Gyroscope Magnitude frequency</li>
		<li>78 fBodyBodyGyroMag-meanFreq()	Mean Frequency of Body Gyroscope Magnitude frequency</li>
		<li>79 fBodyBodyGyroJerkMag-mean()	Average Body Gyroscope Jerk Magnitude frequency</li>
		<li>80 fBodyBodyGyroJerkMag-std()	Standard Deviation Body Gyroscope Jerk Magnitude frequency</li>
		<li>81 fBodyBodyGyroJerkMag-meanFreq()	Mean Frequency of Body Gyroscrope Jerk Magnitude frequency</li>
		<li>82 angle(tBodyAccJerkMean),gravityMean)	Angular Gravity Mean of Body Acceleration Jerk time</li>
		<li>83 angle(tBodyGyroMean,gravityMean)	Angular Gravity Mean of Body Gyroscope time</li>
		<li>84 angle(tBodyGyroJerkMean,gravityMean)	Angular Gravity Mean of Body Gyroscope Jerk time</li>
		<li>85 angle(X,gravityMean)	Angular Gravity Mean in X axial</li>
		<li>86 angle(Y,gravityMean)	Angular Gravity Mean in Y axial</li>
		<li>87 angle(Z,gravityMean)	Angular Gravity Mean in Z axial</li>
		</ul>

##Tidy data set with average of each variable for each activity and each subject.
<ul>
<li>Step 1:  Used the aggregate R function to group the Subject and Activity and find the mean of the remaining variable from column 3-87.</li>
<li>Step 2:  Used the write.table function to called the tidy data set data frame and save it into a txt file called CourseProj3.txt. </li> 
</ul>

