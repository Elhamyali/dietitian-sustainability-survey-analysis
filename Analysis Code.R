# Install necessary packages
# install.packages("readxl")
# install.packages("dplyr")
# install.packages("tidyverse")

# Load necessary libraries
library(readxl)
library(dplyr)
library(tidyverse)

# Both dataset1 and dataset2 are loaded into R with different formats for questions 8, 11, 12, and 13.

# Read the datasets
dataset1 <- read_excel("dataset 1.xlsx")
View(dataset1)

dataset2 <- read_excel("dataset 2.xlsx")
View(dataset2)

# Add a unique identifier column to distinguish the datasets
dataset1$Dataset <- "Dataset 1"
dataset2$Dataset <- "Dataset 2"

# Rename headers from text to Q1, Q2, etc in both datasets
# Rename the columns in dataset1
colnames(dataset1)[colnames(dataset1) %in% c("question_8", "question_11", "question_12", "question_13")] <- c("QA8", "QA11", "QA12", "QA13")

# Rename the columns in dataset2
colnames(dataset2)[colnames(dataset2) %in% c("question_8", "question_11", "question_12", "question_13")] <- c("QA8", "QA11", "QA12", "QA13")

