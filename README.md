GettingAndCleansingDataCourseProject
====================================
Refer to the CodeBook.md to learn about the original data used, transformations performed on the original data set and variable names to obtain the final data set aggdatafinal.txt

This project uses only one R script run_analysis.R available in this repository which performs the following acitivities to create the final output (the average of mean and std deviation variables by Subject and Activity with descriptive variable names)


1)reads Test and training scenarios into R data table

2)reads Subjects data that performed the test and training scenarios into R data table

3)reads Activities that the subjects performed for test and training scenarios into R Data table

4)creates a subset of the test and training scenarios (in #1) to extract only mean and std deviation measurements. This was done by understanding the README file for the original data set to manually select the mean and std deviation measurements.Note that there tricky variables called "Angle..." with mean and std deviation but these variables were ignored since hte result is an angle of the two mean variables as opposed to the mean itself.

5)replaces variable names with descriptive variable names

6)combines all data sets to form a complete set with mean std deviation measurements for all subjects and activities

7)Transforms activity code (1-6) with aActivity descriptions

8)Finally computes the average of all the mean and std deviation measurements by Subject and Activity as a final output aggdatafinal

9)This output is then written to a text file (aggdatafinal.txt)
