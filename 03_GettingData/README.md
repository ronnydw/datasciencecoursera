## Goal:
Collect data from wearable computers, tidy and clean the dataset, and prepare summary data

## Dataset used:
Human Activity Recognition Using Smartphones Data Set
Data Folder: http://archive.ics.uci.edu/ml/machine-learning-databases/00240/

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data." (see the README.txt in the Data Folder)

## Input 
### Files used from the data folder:
* subject_test.txt : 2947 observations x 1 subject variable
* subject_train.txt : 7352 observations x 1 subject variable

* X_test.txt : 2947 observations x 561 measurement variables
* X_train.txt : 7352 observations x 561 measurement variables

* y_test.txt : 2947 observations x 1 activity variable
* y_train.txt : 7352 observations x 1 activity variable

* features.txt : list of the 561 input features
* acitivity_labels: the 6 labels used for the activities

The raw data in the inertial folders is not used, all summary data is derived from the X_test/train.txt set

## Analysis method
The analysis and cleaning can be reproduced with the run_analysis.R script 
Put the run_analysis.R script in the data folder 
Execute the script as a whole or line-by-line to verify the different steps
Some verification commands were included to check the operations (dim(), str(), head(), tail())

Actions performed:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Output
The resulting dataset with summaries is created in the data folder as result.txt
See also the codebook.md file for information of the data fields in the result.txt file

## Acknowledgement
* This work is performed as the final project assignment for the Coursera course: Getting and Cleaning Data, part of the "Data Science" specialisation given by Jeff Leek, Roger D. Peng, and Brian Caffo (Johns Hopkins, Bloomberg School of Public Health)
* The data used in this project is made available by
	Bache, K. & Lichman, M. (2013). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California, School of Information and Computer Science 