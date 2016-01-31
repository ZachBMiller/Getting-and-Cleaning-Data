# Getting-and-Cleaning-Data
This is my Repo for the final project for Getting and Cleaning Data.

This Repo contains a file run_analysis.R, which, when run, will download and clean up the assigned data so as to create two dataframes meeting the requirements of the assignment.

The two data frames this run_analysis.R are "selecteddata", which contains all variables regarding mean and standard deviation for each observation in the original data, and "averages", which groups the observations by subject and activity, and then gives the mean for each variable for each subject and activity.

In run_analysis.R, the code is broken into sections, each with a descriptive header describing briefly what that section of the code does. Below, please find each of the headers, each followed by a more detailed description of what the code under each header does (note that the code itself is not present in this readme file):



## download data
Downloads the data from the source

## extract data
Unzips the downloaded .zip file

## read data into R
Reads each of the 6 data tables used to create our final dataframes into R, as well as a seventh table containing the variable names

## add variable names
Creates a character vector from the variable names table, and then uses this to name each variable (this is applied to both the xtest and the xtrain tables, as they have not yet been combined)

## combine test data
Adds the subject and activity columns to the xtest table

## combine train data
Adds the subject and activity columns to the xtrain table

## combine test and train data together
Adds the train dataframe to the bottom of the test dataframe to create one large dataframe containing all the needed data, and then adds understandable column names to the subject and activity columns 

## extract data on the mean and standard deviation
Selects only the variables related to mean and standard deviation and creates a new dataframe with only these variables, then adds the subject and actvity columns to this new dataframe

## add descriptive activity names
Loads the plyr library, and uses it to add descriptive activity names by 1) creating a activity numbers vector (to use for indexing), 2) creating a character vector of activity names, and 3) using mapvalues() to add the correct actvity name for each instance of the corresponding idex value in the activity column of the dataframe 

## clean up the variable names
Cleans up the variable names by 1) replacing "t" with "time" any time "t" is the initial character in the variable name, 2) replacing "f" with "freq" any time "f" is the initial character in the variable name, 3) removing any "-" and replacing with spaces, and 4) removing any "()"

## create new data set with the average of each variable for each activity and each subject
This creates a dataset such as described in the header by loading the dplyr library, grouping the data by subject and activity (in that order), then finding the mean of each variable of the grouped observations, then saving this to a new dataframe

## print out averages dataset
Prints out averages dataset
