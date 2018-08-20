## Getting and Cleaning Data Course Project

This purpose of this project is to collect and clean the Human Activity Recognition Using Smartphones Dataset Version 1.0. The dataset comes from an experiment carried out with 30 volunteers, each performing 6 activities (walking, walking upstairs, walking downstairs, sitting, standing, and laying) wearing a smartphone in order to capture 3-axial linear acceleration and 3-axial angular velocity. 

run_analysis.R performs the following functions:

* Imports the sets, labels, and subject lists for both train and test groups, merging the two into a single data set.
* Assigns column names according to the "features" text file, consisting of 561 measurements.
* Extracts the mean and standard deviation columns from among these measurements. 
* Assigns labels for the factor variables delineating the above-mentioned 6 activities.
* Outputs a second, tidy data set with the average of each variable by subject for each activity.

