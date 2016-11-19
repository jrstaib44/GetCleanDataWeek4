# Tidy Data Week 4 Assignment

## Assignment Goals


You should create one R script called run_analysis.R that does the following. 
- [x] Merges the training and the test sets to create one data set.
- [x] Extracts only the measurements on the mean and standard deviation for each measurement. 
- [x] Uses descriptive activity names to name the activities in the data set
- [x] Appropriately labels the data set with descriptive variable names. 
- [x] From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.




## Steps in solution 

- [x] Manually download data required for project
	- [ ] https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
- [x] Ensure required packages (dply, data.table) are installed and loaded 
- [x] Read in data 
	-- [ ] test and train data sets
	-- [ ] features in data sets
        -- [ ] labels for activities
- [x] Identify features that are means and std deviations using grep
- [x] Extract only the observations for mean and standard deviation features
- [x] Use Merge function to join the activity label names to activity label ids
- [x] Put meaningful column names on data sets.   Use features data set (sourced from features.txt file) to filtered to mean & std dev features to name test and train columns
- [x] Use rbind to append test and train data to one data set
- [x] Use melt function to create a tidy data set 
	-- [ ] tidy defined as one variable and value per row for the subject and activity
- [x] Group and summarise to get the final means of each mean and std deviation feature for each subject and activity

