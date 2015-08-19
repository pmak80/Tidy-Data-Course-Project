# Tidy-Data-Course-Project
Tidy Data Course Project for Coursera - Johns Hopkins

##Introduction

This repo contains "Getting and Cleaning Data" course project.  The purpose of the project is to demostrate our ability to collect, work with, and clean a data set.

The data represent data collected from the Samsung Galaxy S Smartphone's accelerometers and the description could be found at the site below:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

##Raw Data
The raw data comes from the url site (zip file below) and the features_info.txt in the site contains the description of the raw data.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

There are 561 feature measurements and description of the measure is explained in the CodeBook.
The experiments is split into two groups with a total of 30 participants between the age of 19-48.  One data set contains 70% of the participants
to generate the training data set and the other 30% for the test data set.  The participants are given Subject ID from 1-30.  Each participant performed
6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing the smart phone. 

The Subject ID are located in the subject_test.txt and subject_train.txt files.
The 561 feature measurement data are located in the x_test.txt and y_test.txt files.
The Activity codes are located in y_test.txt and y_train.txt files.  The description on the activity is located in the activity_labels.txt.


##Transformation and Tidy Data
Processed using R version 3.2.1 on Window 7  64 bit
Script to display the tidy data is called  run_analysis.R.

The CookBook.md file display the process of the tidy data set.  Please read the Transformation of the data section in the Cookbook.

