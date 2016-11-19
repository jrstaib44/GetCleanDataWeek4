# Tidy Data Week 4 Assignment Code Book

## Data Set Contents

The data set output contains means of the required mean and standard deviation features from the project data set for each subject and activity.

This project data set is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


####Per the features_info.txt file included with the data set...


"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). "

In addition, the features_info.txt file also notes "Features are normalized and bounded within [-1,1]"


Thus each row in the output data set is showing the mean of either a mean of a mean of -1 to 1 bounded observations.   Or the mean of a standard deviation of -1 to 1 bounded observations.



