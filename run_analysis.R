## Getting and Cleaning Data Course Project
## Christine Doherty

## Install dplyr package if not already installed
install.packages("dplyr")

## Load dplyr library
library(dplyr)

## Create vector of feature variable names
features <- read.table("./features.txt")
feature_labels <- as.vector(features[[2]])
            
## Read data from test files
subject_test <- read.table("./test/subject_test.txt", col.names = "Subject")
X_test <- read.table("./test/X_test.txt", col.names = feature_labels)
y_test <- read.table("./test/y_test.txt", col.names = "Activity")

## Combine data from test files into one data set
test_data <- cbind(subject_test, X_test, y_test)

## Read data from training files
subject_train <- read.table("./train/subject_train.txt", col.names = "Subject")
X_train <- read.table("./train/X_train.txt", col.names = feature_labels)
y_train <- read.table("./train/y_train.txt", col.names = "Activity")

## Combine data from training files into one data set
train_data <- cbind(subject_train, X_train, y_train)

## Combine test and training data sets (Step 1)
total_data <- rbind(test_data, train_data)

## Subset the data to contain values for mean and std measurements only (Step 2)
## Create vector of desired column names, then subset data using those column names
all_colNames <- colnames(total_data)
subset_colNames <- all_colNames[(grepl("mean", all_colNames) -grepl("meanFreq", all_colNames)
                | grepl("std", all_colNames) | grepl("Subject", all_colNames)
                | grepl("Activity", all_colNames)) == TRUE]

subset_data <- total_data[,subset_colNames]

## Add descriptive names for activities (Step 3)
## Pull activity names from activity_labels.txt file
## Create factor vector of activity names based on Activity column's id values
## Bind new column to data set
activity <- read.table("./activity_labels.txt")
activity_names <- factor(subset_data$Activity, levels=1:6, labels=activity[[2]])

subset_data_activity <- cbind(subset_data, ActivityName = activity_names)

## Remove the numerical Activity column
final_subset <- subset(subset_data_activity, select=-(Activity))

## Label data set with descriptive variable names (Step 4)
## Descriptive labels already applied, but variable names need some clean up
## Custom file created with names for existing 69 variables, using CamelCase
cleanColNames <- read.table("./cleanVariableNames.txt")

colnames(final_subset) <- cleanColNames[[1]]

## Based on data in Step 4, create a second, independent tidy data set 
## with the average of each variable for each activity and each subject (Step 5)

averages <- final_subset %>% 
        group_by(Subject, ActivityName) %>% 
        summarise_each(funs(mean))

## Write the results into a txt file
write.table(averages, file="./subject_activity_averages.txt", row.names=FALSE)

