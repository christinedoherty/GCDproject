GCDproject
==========

This is my course project for Getting and Cleaning Data

Here are the steps I took to combine, manipulate and transform the Human Activity Recognition Using Smartphones Samsung data sets and produce a tidy data set of the averages of all measurements for each subject/activity pair.

- I download data files at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
- I unzipped files and copied into my working directory.
- I created 'run_analysis.R' using RStudio to contain all my scripts.
- I read the README and features_info files that came with the data package. I also opened all the data files to get a visual inspection.
- I read the 3 data files from the test folder into RStudio and ran the str function on each to inspect the data. I saw that all 3 had the same number of rows. I saw that the subject_test.txt had the subject id numbers, the X_test.txt had all the measurements, and the y_test.txt had the activity_id numbers.
- While reading in the initial data files, I included column names in the read.table calls. I also read in the feature list from the features.txt file and pulled out the values from the second column to use as column names for the X_test values. Even though this is technically part of a later step to add descriptive variable names, I felt it was important to get meaningful variable/column names as soon as possible. It made testing my script and viewing data much easier.
- I combined all three test data files into one data set.
- I repeated the same process for the training data set.
- I then combined both data sets using cbind, since the columns for both data sets were the same. The merge function was not needed because there were no overlapping data. The test and train data sets were obervations for different subjects.
- I subset the data to include only mean and standard deviation measurements, plus the associated Subject and Activity IDs. I chose not to use any mean_frequency data or the angle means data, as the description of these values in the features_info.txt file didn't seem to match my understanding of the requirement in step 2 of the assignment: "Extracts only the measurements on the mean and standard deviation for each measurement."
- I read in the activity names from the activity_labels.txt file. Then, I added a new column to my data set by converting the existing Activity column (with integer numbers) into factor variables. The reason I added an additional column instead of just transforming the existing values is so I could check the data and make sure the mapping was correct. After I verified the mapping, I removed the Activity number column from the data set.
- I created a file for cleaned-up variable names for the existing 68 variables in subsetted data set (cleanVariableNames.txt) and put in working directory. I made a copy of the features.txt and remove all variables not being used. I then removed any illegal characters from the names (dashes and parentheses), changed "t" to "time" and "f" to "frequency". I decided to create a separate file manually because trying to apply gsub to remove periods after the data frame 'subset_data_activity' had been created did not work. It also didn't work to apply gsub to the values of vector 'feature_labels' to get rid of illegal characters.
- I then used the above data to a create a new data frame called averages. I used the dplyr library to group_by Subject/Activity pairs, the used the summarize_each function to get the average/mean of each measurement variable for each Subject/Activity pair.
- I added the install.packages("dplyr") and library(dplyr) commands to the top of my script.
- Finally, I added code to create a file with the results using the write.table function, outputting a file called "subject_activity_averages.txt" into the working directory.

To replicate results:
- Download data files at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.
- Unzip files and copy into working directory. All files must be at the working directory level, not in the unzipped folder.
- Download "cleanVariableNames.txt" from my repo into your working directory.
- Download "run_analysis.R" from my repo into your working directory.
- Open RStudio.
- At the command prompt, enter: source("run_analysis.R")
- This will install the dplyr package, run the R scripts and write a txt file with the results to your working directory called "subject_activity_averages.txt".

To view results:
- If you didn't replicate the steps above, download the "subject_activity_averages.txt" file from my assignment submission and copy into your working directory.
- Open RStudio if not already open.
- At the command prompt in R, enter: data <- read.table("./subject_activity_averages.txt",, header = TRUE)
- At the command prompt, enter: View(data)
- You should be able to see a tidy data table with 180 observations and 68 variables.

