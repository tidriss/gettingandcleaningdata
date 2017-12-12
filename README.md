This a programming assignment submission for Coursera's Getting and Cleaning Data online course. In this assignment we build a tidy data set saved in tidy.txt that includes the mean and std measurements collected during different activities from 30 subjects. The data was collected from the accelerometers of the Samsung Galaxy S smartphone. A full description is available at the website where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The orginal data files for the project were obtained from:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following is a description extract from the readme file of the original data set:

>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

For more information, see the original data set files provided in the link earlier.


The following steps were performed to obtain the final tidy.txt data set:

1. The Training and Test data set were merged into one data set.
2. Only the measurements containing the mean and standard deviation were extracted for each measurement.
3. Activity names were used to describe the activities instead of activity IDs.
4. The variable names were modified to be more descriptive (using full words) and tidy (removed symbols and capitalizations).
5. From the data set in step 4, a second, data set containing only the average of each variable for each activity and each subject was created and saved in Tidy.txt

The following is a list of files in the project

1. README.md
2. CodeBook.md
3. run_analysis.R

For detailed information about the data processing steps and the variables see CodeBook.md