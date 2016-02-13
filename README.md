## GettingCleaningDataProject

This repo contains the results for the final project of the Course _Getting and Cleaning Data_, which is part of the Coursera Data Science Specialization.

### Files contained in this repo:

* `README.md`: a little self awareness is never wrong ;)
* `Codebook.md`: The Codebook describing the steps taken to obtain the file `tidyDataset.txt` and descritpion of the variables contained in this dataset
* `run_analysis.R`: the R script with the code used to download and manipulate the _UCI HAR Dataset_ and save a tidy version of it.
* `tidyDataset.txt`: the processed _UCI HAR Dataset_ containing only the values for mean and standard deviation

### How To reproduce the analysis described in this project:

1. Open `run_analysis.R`
2. set the working directory to the dir of your choice `setwd()`
3. run `run_analysis.R`