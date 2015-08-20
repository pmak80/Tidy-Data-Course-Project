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
 
      Column  Initial Variable/Description  		Updated Variable Name
      ======= ===========================  			 =========================
		<ol>	      
		1		Subject ID (1-30)						Subject
		2		Activity Description 					Activity
		3		tBodyAcc-mean()-X						MeanBodyAccelerationtimeXaxial
		4		tBodyAcc-mean()-Y						MeanBodyAccelerationtimeYaxial
		5		tBodyAcc-mean()-Z						MeanBodyAccelerationtimeZaxial
		6		tBodyAcc-std()-X						StandardDeviationBodyAccelerationtimeXaxial
		7		tBodyAcc-std()-Y						StandardDeviationBodyAccelerationtimeYaxial
		8		tBodyAcc-std()-Z						StandardDeviationBodyAccelerationtimeZaxial
		9		tGravityAcc-mean()-X					MeanGravityAccelerationtimeXaxial
		10		tGravityAcc-mean()-Y					MeanGravityAccelerationtimeYaxial
		11		tGravityAcc-mean()-Z					MeanGravityAccelerationtimeZaxial
		12		tGravityAcc-std()-X						StandardDeviationGravityAccelerationtimeXaxial
		13		tGravityAcc-std()-Y						StandardDeviationGravityAccelerationtimeYaxial
		14		tGravityAcc-std()-Z						StandardDeviationGravityAccelerationtimeZaxial
		15		tBodyAccJerk-mean()-X					MeanBodyAccelerationJerktimeXaxial
		16		tBodyAccJerk-mean()-Y					MeanBodyAccelerationJerktimeYaxial
		17		tBodyAccJerk-mean()-Z					MeanBodyAccelerationJerktimeZaxial
		18		tBodyAccJerk-std()-X					StandardDeviationBodyAccelerationJerktimeXaxial
		19		tBodyAccJerk-std()-Y					StandardDeviationBodyAccelerationJerktimeYaxial
		20		tBodyAccJerk-std()-Z					StandardDeviationBodyAccelerationJerktimeZaxial
		21		tBodyGyro-mean()-X						MeanBodyGyroscopeVelocitytimeXaxial
		22		tBodyGyro-mean()-Y						MeanBodyGyroscopeVelocitytimeYaxial
		23		tBodyGyro-mean()-Z						MeanBodyGyroscopeVelocitytimeZaxial
		24		tBodyGyro-std()-X						StandardDeviationBodyGyroscopeVelocitytimeXaxial
		25		tBodyGyro-std()-Y						StandardDeviationBodyGyroscopeVelocitytimeYaxial
		26		tBodyGyro-std()-Z						StandardDeviationBodyGyroscopeVelocitytimeZaxial
		27		tBodyGyroJerk-mean()-X					MeanBodyGyroscopeVelocityJerkTimeXaxial
		28		tBodyGyroJerk-mean()-Y					MeanBodyGyroscopeVelocityJerkTimeYaxial
		29		tBodyGyroJerk-mean()-Z					MeanBodyGyroscopeVelocityJerkTimeZaxial
		30		tBodyGyroJerk-std()-X					StandardDeviationBodyGyroscopeVelocityJerkTimeXaxial
		31		tBodyGyroJerk-std()-Y					StandardDeviationBodyGyroscopeVelocityJerkTimeYaxial
		32		tBodyGyroJerk-std()-Z					StandardDeviationBodyGyroscopeVelocityJerkTimeZaxial
		33		tBodyAccMag-mean()						MeanBodyAccelerationMagnitudeTime
		34		tBodyAccMag-std()						StandardDeviationBodyAccelerationMagnitudeTime
		35		tGravityAccMag-mean()					MeanGravityAccelerationMagnitudeTime
		36		tGravityAccMag-std()					StandardDeviationGravityAccelerationMagnitureTime
		37		tBodyAccJerkMag-mean()					MeanBodyAccelerationJerkMagnitureTime
		38		tBodyAccJerkMag-std()					StandardDeviationBodyAccelerationJerkMagnitureTime
		39		tBodyGyroMag-mean()						MeanBodyGyroscopeVelocityMagnitudeTime
		40		tBodyGyroMag-std()						StandardDeviationBodyGyroscopeVelocityMagnitudeTime
		41		tBodyGyroJerkMag-mean()					MeanBodyGyroscopeJerkMagnitureTime
		42		tBodyGyroJerkMag-std()					StandardDeviationBodyGyroscopeJerkMagnitureTime
		43		fBodyAcc-mean()-X						MeanBodyAccelerationFreqXaxial
		44		fBodyAcc-mean()-Y						MeanBodyAccelerationFreqYaxial
		45		fBodyAcc-mean()-Z						MeanBodyAccelerationFreqZaxial
		46		fBodyAcc-std()-X						StandardDeviationBodyAccelerationFreqXaxial
		47		fBodyAcc-std()-Y						StandardDeviationBodyAccelerationFreqYaxial
		48		fBodyAcc-std()-Z						StandardDeviationBodyAccelerationFreqZaxial
		49		fBodyAcc-meanFreq()-X					MeanFreqBodyAccelerationMeanWeightedXaxial
		50		fBodyAcc-meanFreq()-Y					MeanFreqBodyAccelerationMeanWeightedYaxial
		51		fBodyAcc-meanFreq()-Z					MeanFreqBodyAccelerationMeanWeightedZaxial
		52		fBodyAccJerk-mean()-X					MeanBodyAccelerationJerkFreqXaxial
		53		fBodyAccJerk-mean()-Y					MeanBodyAccelerationJerkFreqYaxial
		54		fBodyAccJerk-mean()-Z					MeanBodyAccelerationJerkFreqZaxial
		55		fBodyAccJerk-std()-X					StandardDeviationBodyAccelerationJerkFreqXaxial
		56		fBodyAccJerk-std()-Y					StandardDeviationBodyAccelerationJerkFreqYaxial
		57		fBodyAccJerk-std()-Z					StandardDeviationBodyAccelerationJerkFreqZaxial
		58		fBodyAccJerk-meanFreq()-X				MeanFreqBodyAccelerationJerkXAxial
		59		fBodyAccJerk-meanFreq()-Y				MeanFreqBodyAccelerationJerkYAxial
		60		fBodyAccJerk-meanFreq()-Z				MeanFreqBodyAccelerationJerkZAxial
		61		fBodyGyro-mean()-X						MeanBodyGyroscopeFreqXaxial
		62		fBodyGyro-mean()-Y						MeanBodyGyroscopeFreqYaxial
		63		fBodyGyro-mean()-Z						MeanBodyGyroscopeFreqZaxial
		64		fBodyGyro-std()-X						StandardDeviationBodyGyroscopeFreqXaxial
		65		fBodyGyro-std()-Y						StandardDeviationBodyGyroscopeFreqYaxial
		66		fBodyGyro-std()-Z						StandardDeviationBodyGyroscopeFreqZaxial
		67		fBodyGyro-meanFreq()-X					MeanFreqBodyGyroscopeFreqXaxial
		68		fBodyGyro-meanFreq()-Y					MeanFreqBodyGyroscopeFreqYaxial
		69		fBodyGyro-meanFreq()-Z					MeanFreqBodyGyroscopeFreqZaxial
		70		fBodyAccMag-mean()						StandardDeviationBodyAccelerationMagnitudeFreq
		71		fBodyAccMag-std()						MeanBodyAccelerationMagnitudeFreq
		72		fBodyAccMag-meanFreq()					MeanFreqBodyAccelerationMagnitudeFreq
		73		fBodyBodyAccJerkMag-mean()				MeanBodyAccelerationJerkMagnitureFreq
		74		fBodyBodyAccJerkMag-std()				StandardDeviationBodyAccelerationJerkMagnitudeFreq
		75		fBodyBodyAccJerkMag-meanFreq()			MeanFreqBodyAccelerationJerkMagnitureFreq
		76		fBodyBodyGyroMag-mean()					MeanBodyGyroscopeMagnitudeFreq
		77		fBodyBodyGyroMag-std()					StandardDeviationBodyGyroscopeMagnitudeFreq
		78		fBodyBodyGyroMag-meanFreq()				MeanFreqBodyGyroscopeMagnitudeFreq
		79		fBodyBodyGyroJerkMag-mean()				MeanBodyGyroscopeJerkMagnitudeFreq
		80		fBodyBodyGyroJerkMag-std()				StandardDeviationBodyGyroscopeJerkMagnitudeFreq
		81		fBodyBodyGyroJerkMag-meanFreq()			MeanFreqBodyGyroscropeJerkMagnitudeFreq
		82		angle(tBodyAccJerkMean),gravityMean)	AngularGravityMeanBodyAccelerationJerktime
		83		angle(tBodyGyroMean,gravityMean)		AngularGravityMeanBodyGyroscopetime
		84		angle(tBodyGyroJerkMean,gravityMean)	AngularGravityMeanBodyGyroscopeJerktime
		85		angle(X,gravityMean)					AngularGravityMeanXaxial
		86		angle(Y,gravityMean)					AngularGravityMeanYaxial
		87		angle(Z,gravityMean)					AngularGravityMeanZaxial
		</ol>

##Tidy data set with average of each variable for each activity and each subject.
<ul>
<li>Step 1:  Used the aggregate R function to group the Subject and Activity and find the mean of the remaining variable from column 3-87.</li>
<li>Step 2:  Used the write.table function to called the tidy data set data frame and save it into a txt file called CourseProj3.txt. </li> 
</ul>

