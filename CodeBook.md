

This code book describes the variables, the data, and any transformations or work that were performed to clean up the data 

Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

Each row/record contains a subset of the actual data set with only the average of mean() and StdDev measurements by Volunteers and by the six activities

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAcceleration-XYZ and TimeGyroscope-XYZ. These time domain signals (prefix 'Time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into "body" and "gravity" acceleration signals for mean() and std() variables (TimeBodyAcclerationMean-XYZ and TimeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals for mean() and std() variables (TimeBodyAccelerationJerk-XYZ and TimeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals for mean() and std() variables were calculated using the Euclidean norm (TimeBodyAccelerationMagnitude, TimeGravityAccelerationMagnitude, TimeBodyAccelerationJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals similar to the Time domain signals producing FFTBodyAcceleration-XYZ, FFTBodyAccelerationJerk-XYZ, FFTBodyGyroscope-XYZ, FFTBodyAccelerationJerkMagnitude, FFTBodyGyroscopeMagnitude, FFTBodyGyroscopeJerkMagnitude for frequency domain signals. Again this data set is only for mean(0 and std() measurements from the original data set.

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


Description and values of Variables:
------------------------------------
Subject: Numeric code with values from 1-30 for 30 volunteers
Activity: Activity Description of the six activites as listed above (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

Average Measurements are as follows:

1) The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals TimeAcceleration-XYZ and TimeGyroscope-XYZ. These time domain signals (prefix 'Time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into "body" and "gravity" acceleration signals for mean() and std() variables (TimeBodyAcclerationMean-XYZ and TimeGravityAcceleration-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals for mean() and std() variables (TimeBodyAccelerationJerk-XYZ and TimeBodyGyroscopeJerk-XYZ).The associated variables are as follows(values are the average computation of the values in the original data):

TImeBodyAccelerationMeanX
TImeBodyAccelerationMeanY
TImeBodyAccelerationMeanZ
TimeBodyAcceleratorStdDevX
TimeBodyAcceleratorStdDevY
TimeBodyAcceleratorStdDevZ
TimeGravityAccelerationMeanX
TimeGravityAccelerationMeanY
TimeGravityAccelerationMeanZ
TimeGravityAcceleratorStdDevX
TimeGravityAcceleratorStdDevY
TimeGravityAcceleratorStdDevZ
TimeBodyAcceleratorJerkMeanX
TimeBodyAcceleratorJerkMeanY
TimeBodyAcceleratorJerkMeanZ
TimeGravityAcceleratorJerkStdDevX
TimeGravityAcceleratorJerkStdDevY
TimeGravityAcceleratorJerkStdDevZ
TimeBodyGyroscopeMeanX
TimeBodyGyroscopeMeanY
TimeBodyGyroscopeMeanZ
TimeBodyGryoscopeStdDevX
TimeBodyGryoscopeStdDevY
TimeBodyGryoscopeStdDevZ
TimeBodyGyroscopeJerkMeanX
TimeBodyGyroscopeJerkMeanY
TimeBodyGyroscopeJerkMeanZ
TimeBodyGryoscopeJerkStdDevX
TimeBodyGryoscopeJerkStdDevY
TimeBodyGryoscopeJerkStdDevZ

2) Also the magnitude of these three-dimensional signals for mean() and std() variables were calculated using the Euclidean norm (TimeBodyAccelerationMagnitude, TimeGravityAccelerationMagnitude, TimeBodyAccelerationJerkMagnitude, TimeBodyGyroscopeMagnitude, TimeBodyGyroscopeJerkMagnitude). The associated variables are as follows (values are the average computation of the values in the original data):

TimeBodyAcceleratorMagnitudeMean
TimeBodyAcceleratorMagnitudeStdDev
TimeGravityAcceleratorMagnitudeMean
TimeGravityAcceleratorMagnitudeStdDev
TimeBodyAcceleratorJerkMagnitudeMean
TimeBodyAcceleratorJerkMagnitudeStdDev
TimeBodyGyroscopeMagnitudeMean
TimeBodyGyroMagnitudeStdDev
TimeBodyGyroscopeJerkMagnitudeMean
TimeBodyGyroJerkMagnitudeStdDev
FFTBodyAcceleratorMeanX


3)Finally a Fast Fourier Transform (FFT) was applied to some of these signals similar to the Time domain signals producing FFTBodyAcceleration-XYZ, FFTBodyAccelerationJerk-XYZ, FFTBodyGyroscope-XYZ, FFTBodyAccelerationJerkMagnitude, FFTBodyGyroscopeMagnitude, FFTBodyGyroscopeJerkMagnitude for frequency domain signals. Again this data set is only for mean(0 and std() measurements from the original data set.The associated variables are as follows (values are the average computation of the values in the original data):

FFTBodyAcceleratorMeanY
FFTBodyAcceleratorMeanZ
FFTBodyAcceleratorStdDevX
FFTBodyAcceleratorStdDevY
FFTBodyAcceleratorStdDevZ
FFTBodyAcceleratorMeanFrequencyX
FFTBodyAcceleratorMeanFrequencyY
FFTBodyAcceleratorMeanFrequencyZ
FFTBodyAcceleratorJerkMeanX
FFTBodyAcceleratorJerkMeanY
FFTBodyAcceleratorJerkMeanZ
FFTBodyAcceleratorJerkStdDevX
FFTBodyAcceleratorJerkStdDevY
FFTBodyAcceleratorJerkStdDevZ
FFTBodyAcceleratorJerkMeanFrequencyX
FFTBodyAcceleratorJerkMeanFrequencyY
FFTBodyAcceleratorJerkMeanFrequencyZ
FFTBodyGyroscopeMeanX
FFTBodyGyroscopeMeanY
FFTBodyGyroscopeMeanX
FFTBodyGyroStdDevX
FFTBodyGyroStdDevY
FFTBodyGyroStdDevZ
FFTBodyGyroscopeMeanFrequencyX
FFTBodyGyroscopeMeanFrequencyY
FFTBodyGyroscopeMeanFrequencyZ
FFTBodyAcceleratorMagnitudeMean
FFTBodyAcceleratorMagnitudeStdDev
FFTBodyAcceleratorMagnitudeMeanFrequency
FFTBodyAcceleratorJerkMagnitudeMean
FFTBodyAcceleratorJerkMagnitudeStdDev
FFTBodyAcceleratorJerkMagnitudeMeanFrequency
FFTBodyGyroscopeMagnitudeMean
FFTBodyGyroscopeMagnitudeStdDev
FFTBodyGyroscopeMagnitudeMeanFrequency
FFTBodyGyroscopeJerkMagnitudeMean
FFTBodyGyroscopeJerkMagnitudeStdDev
FFTBodyGyroscopeJerkMagnitudeMeanFrequency

Information about the data (cleanup and transformation):
--------------------------------------------------------
1)Each row/record contains a subset of the actual data set with only the average of mean() and StdDev measurements by Volunteers and by the six activities
2) Activity data was cleaned up to have descriptive activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) as opposed to activity codes
3) Variables names were replaced by descriptive variable names (listed above in the "Description of variables" section)
4) Final data was grouped by Subject and Activity by averaging the measurements (listed above in the "Description of variables" section)
