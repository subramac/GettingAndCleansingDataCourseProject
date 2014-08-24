install.packages("data.table")
library(data.table)
install.packages("reshape2")
library(reshape2)
xfeatures <- read.table("./datacleansing/UCI HAR Dataset/features.txt",header=FALSE)
xtest <- read.table("./datacleansing/UCI HAR Dataset/test/X_test.txt",sep="",header=FALSE)
xtrain <- read.table("./datacleansing/UCI HAR Dataset/train/X_train.txt",sep="",header=FALSE)
xdata<- rbind(xtest,xtrain)
subj_test <- read.table("./datacleansing/UCI HAR Dataset/test/subject_test.txt",sep="",header=FALSE)
subj_train <- read.table("./datacleansing/UCI HAR Dataset/train/subject_train.txt",sep="",header=FALSE)
subjdata <- rbind(subj_test,subj_train)
names(subjdata) <- c("Subject")
activity_test <- read.table("./datacleansing/UCI HAR Dataset/test/y_test.txt",sep="",header=FALSE)
activity_train <- read.table("./datacleansing/UCI HAR Dataset/train/y_train.txt",sep="",header=FALSE)
activitydata <- rbind(activity_test,activity_train)
names(activitydata) <- c("Activity")

## Extract mean and std measurements
alldata <- xdata[,c(1:6,41:46,81:86,121:126,161:166,201,202,214,215,227,228,240,241,253,254,266:271,294:296,345:350,373:375,424:429,452:454,503,504,513,516,517,526,529,530,539,542,543,552)]


##Assigns Descriptive Names to variables
colnames(alldata) <- c("TimeBodyAccelerationMeanX","TimeBodyAccelerationMeanY","TimeBodyAccelerationMeanZ","TimeBodyAcceleratorStdDevX","TimeBodyAcceleratorStdDevY","TimeBodyAcceleratorStdDevZ","TimeGravityAccelerationMeanX","TimeGravityAccelerationMeanY","TimeGravityAccelerationMeanZ","TimeGravityAcceleratorStdDevX","TimeGravityAcceleratorStdDevY","TimeGravityAcceleratorStdDevZ","TimeBodyAcceleratorJerkMeanX","TimeBodyAcceleratorJerkMeanY","TimeBodyAcceleratorJerkMeanZ","TimeGravityAcceleratorJerkStdDevX","TimeGravityAcceleratorJerkStdDevY","TimeGravityAcceleratorJerkStdDevZ","TimeBodyGyroscopeMeanX","TimeBodyGyroscopeMeanY","TimeBodyGyroscopeMeanZ","TimeBodyGryoscopeStdDevX","TimeBodyGryoscopeStdDevY","TimeBodyGryoscopeStdDevZ","TimeBodyGyroscopeJerkMeanX","TimeBodyGyroscopeJerkMeanY","TimeBodyGyroscopeJerkMeanZ","TimeBodyGryoscopeJerkStdDevX","TimeBodyGryoscopeJerkStdDevY","TimeBodyGryoscopeJerkStdDevZ","TimeBodyAcceleratorMagnitudeMean","TimeBodyAcceleratorMagnitudeStdDev","TimeGravityAcceleratorMagnitudeMean","TimeGravityAcceleratorMagnitudeStdDev","TimeBodyAcceleratorJerkMagnitudeMean","TimeBodyAcceleratorJerkMagnitudeStdDev","TimeBodyGyroscopeMagnitudeMean","TimeBodyGyroMagnitudeStdDev","TimeBodyGyroscopeJerkMagnitudeMean","TimeBodyGyroJerkMagnitudeStdDev","FFTBodyAcceleratorMeanX","FFTBodyAcceleratorMeanY","FFTBodyAcceleratorMeanZ","FFTBodyAcceleratorStdDevX","FFTBodyAcceleratorStdDevY","FFTBodyAcceleratorStdDevZ","FFTBodyAcceleratorMeanFrequencyX","FFTBodyAcceleratorMeanFrequencyY","FFTBodyAcceleratorMeanFrequencyZ","FFTBodyAcceleratorJerkMeanX","FFTBodyAcceleratorJerkMeanY","FFTBodyAcceleratorJerkMeanZ","FFTBodyAcceleratorJerkStdDevX","FFTBodyAcceleratorJerkStdDevY","FFTBodyAcceleratorJerkStdDevZ","FFTBodyAcceleratorJerkMeanFrequencyX","FFTBodyAcceleratorJerkMeanFrequencyY","FFTBodyAcceleratorJerkMeanFrequencyZ","FFTBodyGyroscopeMeanX","FFTBodyGyroscopeMeanY","FFTBodyGyroscopeMeanX","FFTBodyGyroStdDevX","FFTBodyGyroStdDevY","FFTBodyGyroStdDevZ","FFTBodyGyroscopeMeanFrequencyX","FFTBodyGyroscopeMeanFrequencyY","FFTBodyGyroscopeMeanFrequencyZ","FFTBodyAcceleratorMagnitudeMean","FFTBodyAcceleratorMagnitudeStdDev","FFTBodyAcceleratorMagnitudeMeanFrequency","FFTBodyAcceleratorJerkMagnitudeMean","FFTBodyAcceleratorJerkMagnitudeStdDev","FFTBodyAcceleratorJerkMagnitudeMeanFrequency","FFTBodyGyroscopeMagnitudeMean","FFTBodyGyroscopeMagnitudeStdDev","FFTBodyGyroscopeMagnitudeMeanFrequency","FFTBodyGyroscopeJerkMagnitudeMean","FFTBodyGyroscopeJerkMagnitudeStdDev","FFTBodyGyroscopeJerkMagnitudeMeanFrequency")

##Combining test and training data to form the final data set
finalData <- cbind(subjdata,activitydata,alldata)

## descriptive activity names. Replacing Activity code with Activity labels

finalData$Activity[finalData$Activity=="1"] <- "WALKING"
finalData$Activity[finalData$Activity=="2"] <- "WALKING_UPSTAIRS"
finalData$Activity[finalData$Activity=="3"] <- "WALKING_DOWNSTAIRS"
finalData$Activity[finalData$Activity=="4"] <- "SITTING"
finalData$Activity[finalData$Activity=="5"] <- "STANDING"
finalData$Activity[finalData$Activity=="6"] <- "LAYING"

##Create second independent tiday data set

aggmelt <- melt(finalData,id=c("Subject","Activity"))
aggdatafinal <- dcast(aggmelt,Subject+Activity~variable,mean)

##Creating second, independent tidy data set with the average of each variable for each activity and each subject
write.table(aggdatafinal,file="./datacleansing/UCI HAR Dataset/aggdatafinal.txt",sep="\t",col.names=TRUE,row.names=FALSE)
