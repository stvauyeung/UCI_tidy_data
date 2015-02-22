## Creating Tidy Dataset from UCI HAR Data
The run_analysis.R script contains a number of functions that read data from a local directory and combine data from the UCI HAR study dataset into a single tidy dataset.  The tidy dataset is then summarized by activity type and subject.  The summarization functions have not been added to the script yet.

### runAnalysis()
  This function takes the local directory where the UCI HAR data is located on your workspace.  It then runs other functions to combine the data into one set with both test and train data.  Written activity labels replace the numeric activity labels given in the input data.

### readUCIFolder()
  This function creates datatables as global variables for test and train datasets.  The `colNames` variable is created to be used to rename the columns of the "testAndTrain" table.

### combineDataColumns()
  This function combines the "subject", "activity" and "measurement" tables given for either the test or train groups/

### renameColumnNames()
  This function renames the column names of the datatable created using `combineDataColumns`

### writeActivityLabels()
  This function replaces the numeric activity labels with descriptive activity names