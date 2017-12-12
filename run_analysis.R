library(dplyr)
filename <- "getdata_dataset.zip"

## Download and unzip the dataset:
if (!file.exists(filename)){
    fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
    download.file(fileURL, filename, method="curl")
}  
if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) 
}

# Load activity labels
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt") %>% tbl_df()

# Modify colnames of activity labels to be more descriptive
colnames(activityLabels) <- c("activityid", "activity")

# Tidy up activity labels by removing symbols and changing all to lowercase
activityLabels <- activityLabels %>%
    mutate(activity = as.character(activity)) %>%
    mutate(activity = tolower(activity)) %>%
    mutate(activity = gsub('_', '', activity))

#Load Features table
features <- read.table("UCI HAR Dataset/features.txt") %>% tbl_df()

# Modify colnames of feature names table to be more descriptive
colnames(features) <- c("featureid", "feature")
features <- features %>% mutate(feature = as.character(feature))



# Extract only the index of data on mean and standard deviation
myFeaturesIndices <- grep(".*mean.*|.*std.*", features$feature)

# Extrace the relevant feature names
myFeaturesNames <- features$feature[myFeaturesIndices]

# Tidy up feature names to remove symbols, switch all to lower case
# and only include full words
myFeaturesTidyNames <- gsub('[-()]', '', myFeaturesNames) %>% tolower()
myFeaturesTidyNames <- gsub('^t', 'time', myFeaturesTidyNames)
myFeaturesTidyNames <- gsub('freq', 'frequency', myFeaturesTidyNames)
myFeaturesTidyNames <- gsub('^f', 'frequency', myFeaturesTidyNames)
myFeaturesTidyNames <- gsub('acc', 'acceleration', myFeaturesTidyNames)
myFeaturesTidyNames <- gsub('mag', 'magnitude', myFeaturesTidyNames)
myFeaturesTidyNames <- gsub('gyro', 'gyroscope', myFeaturesTidyNames)



# Load the training dataset
trainData <- read.table("UCI HAR Dataset/train/X_train.txt"
                        )[myFeaturesIndices] %>% tbl_df()

# Load the training data set activities identifier
trainActivities <- read.table("UCI HAR Dataset/train/y_train.txt") %>% tbl_df()

# Activity table a descriptive column name
colnames(trainActivities) <- "activityid"

# Modify the activity table to include actual description
# of the activity rather than an activity id
trainActivities <-  left_join(trainActivities, activityLabels
                              ) %>%  select(activity)

# Load training data subjects
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt") %>% tbl_df()

# Merge selected training data with relevant subject IDs and activities
trainUnified <- cbind(trainSubjects, trainActivities, trainData)

# Load the test dataset relevant columns
testData <- read.table("UCI HAR Dataset/test/X_test.txt"
                       )[myFeaturesIndices] %>% tbl_df()

# Load the test activity table
testActivities <- read.table("UCI HAR Dataset/test/y_test.txt"
                             ) %>% tbl_df()

# Give activity table a descriptive column name
colnames(testActivities) <- "activityid"

# Modify the activity table to list activity description rather than id
testActivities <-  left_join(testActivities, activityLabels
                             ) %>% select(activity)

# Load the test subjects id table
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt"
                           ) %>% tbl_df()

# Create a test data set that includes relevant variables
# along with subject id and activity description
testUnified <- cbind(testSubjects, testActivities, testData)

# merge created test and training datasets
allData <- rbind(trainUnified, testUnified)

# assign column names
colnames(allData) <- c("subject", "activity", myFeaturesTidyNames)

allData <- allData %>% mutate(subject = as.factor(subject), 
                              activity = as.factor(activity))
# Create a new data set with average for mean activity
allData <- group_by(allData, subject, activity)
TidyData = allData %>% summarise_all(mean)

# write new data set of average mean for each acitivity in a new file tidy.txt
write.table(TidyData, "tidy.txt", row.names = FALSE, quote = FALSE)