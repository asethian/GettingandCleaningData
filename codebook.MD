## Getting and Cleaning Data assignment codebook

This script is meant to collect and tidy up data from the Human Activity Recognition Using Smartphones Dataset (ver 1.0). 
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The script outputs the mean and standard deviation of the following variables: 
* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The "data" object consists of bifurcated test and train data in the original data set (X_test, y_test, subject_test, X_train, y_train, subject_train). Total 10,299 observations of 563 variables.
Column names are imported from "features.txt" (561 variables).

The "tidydata" object extracts only mean and standard deviation variables from the "data" object. 10,299 observations of 68 variables.

The "activity" column is amended with the schema from the original data set "activity_labels.txt" to assign descriptive terms to the 6-level factor variable (walking, walking upstairs, walking downstairs, sitting, standing, and laying). 

An independent data set, "tidydata2", is produced with the average of each variable for each activity by subject (1-30).