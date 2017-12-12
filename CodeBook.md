# Abstract
This is a coodbook that describes the data processing steps performed on the original data files to produce the new data set "tidy.txt". The new data set identifiers and features are listed as well. The variables in this data set are the average of each variable for each activity and each subject from the original dataset.

## Data Processing Steps Description

1. Download and unzip the dataset:
2. Load activity labels from 'activity_labels.txt'.
3. Modify colnames of activity labels to be more descriptive.
4. Tidy up activity labels by removing symbols and changing all to lowercase.
5. Load features table from 'features.txt'.
6. Modify colnames of feature names table to be more descriptive.
7. Extract only the index of data on mean and standard deviation.
8. Extrace the relevant feature names.
9. Tidy up feature names to remove symbols, switch all to lower case and only include full words.
10. Load the training dataset from 'train/X_train.txt'.
12. Load the training data set activities identifier from 'train/Y_train.txt'.
13. Give activity table a descriptive column name.
14. Modify the activity table to include actual description of the activity rather than an activity id.
15. Load training data subjects from 'train/subject_train.txt'.
16. Merge selected training data with relevant subject IDs and activities.
17. Load the test dataset relevant columns from 'test/X_test.txt'.
18. Load the test activity table from 'test/Y_test.txt'.
19. Give activity table a descriptive column name.
20. Modify the activity table to list activity description rather than id.
21. Load the test subjects id table from 'test/subject_test.txt'.
22. Create a test data set that includes relevant variables along with subject id and activity description.
23. Merge created test and training datasets and assign new column names.
24. change subject and activity variables to factors.
25. Create a new data set with average for mean activity.
26. write new data set of average mean for each acitivity in a new file 'tidy.txt'.

##identifiers
'subject' - the id of the subject
'activity' - the activity performed during measurement

##Activity Labels
walking
walkingupstairs
walkingdownstairs
sitting
standing
laying


##features

timebodyaccelerationmeanx
timebodyaccelerationmeany
timebodyaccelerationmeanz
timebodyaccelerationstdx
timebodyaccelerationstdy
timebodyaccelerationstdz
timegravityaccelerationmeanx
timegravityaccelerationmeany
timegravityaccelerationmeanz
timegravityaccelerationstdx
timegravityaccelerationstdy
timegravityaccelerationstdz
timebodyaccelerationjerkmeanx
timebodyaccelerationjerkmeany
timebodyaccelerationjerkmeanz
timebodyaccelerationjerkstdx
timebodyaccelerationjerkstdy
timebodyaccelerationjerkstdz
timebodygyroscopemeanx
timebodygyroscopemeany
timebodygyroscopemeanz
timebodygyroscopestdx
timebodygyroscopestdy
timebodygyroscopestdz
timebodygyroscopejerkmeanx
timebodygyroscopejerkmeany
timebodygyroscopejerkmeanz
timebodygyroscopejerkstdx
timebodygyroscopejerkstdy
timebodygyroscopejerkstdz
timebodyaccelerationmagnitudemean
timebodyaccelerationmagnitudestd
timegravityaccelerationmagnitudemean
timegravityaccelerationmagnitudestd
timebodyaccelerationjerkmagnitudemean
timebodyaccelerationjerkmagnitudestd
timebodygyroscopemagnitudemean
timebodygyroscopemagnitudestd
timebodygyroscopejerkmagnitudemean
timebodygyroscopejerkmagnitudestd
frequencybodyaccelerationmeanx
frequencybodyaccelerationmeany
frequencybodyaccelerationmeanz
frequencybodyaccelerationstdx
frequencybodyaccelerationstdy
frequencybodyaccelerationstdz
frequencybodyaccelerationmeanfrequencyx
frequencybodyaccelerationmeanfrequencyy
frequencybodyaccelerationmeanfrequencyz
frequencybodyaccelerationjerkmeanx
frequencybodyaccelerationjerkmeany
frequencybodyaccelerationjerkmeanz
frequencybodyaccelerationjerkstdx
frequencybodyaccelerationjerkstdy
frequencybodyaccelerationjerkstdz
frequencybodyaccelerationjerkmeanfrequencyx
frequencybodyaccelerationjerkmeanfrequencyy
frequencybodyaccelerationjerkmeanfrequencyz
frequencybodygyroscopemeanx
frequencybodygyroscopemeany
frequencybodygyroscopemeanz
frequencybodygyroscopestdx
frequencybodygyroscopestdy
frequencybodygyroscopestdz
frequencybodygyroscopemeanfrequencyx
frequencybodygyroscopemeanfrequencyy
frequencybodygyroscopemeanfrequencyz
frequencybodyaccelerationmagnitudemean
frequencybodyaccelerationmagnitudestd
frequencybodyaccelerationmagnitudemeanfrequency
frequencybodybodyaccelerationjerkmagnitudemean
frequencybodybodyaccelerationjerkmagnitudestd
frequencybodybodyaccelerationjerkmagnitudemeanfrequency
frequencybodybodygyroscopemagnitudemean
frequencybodybodygyroscopemagnitudestd
frequencybodybodygyroscopemagnitudemeanfrequency
frequencybodybodygyroscopejerkmagnitudemean
frequencybodybodygyroscopejerkmagnitudestd
frequencybodybodygyroscopejerkmagnitudemeanfrequency
