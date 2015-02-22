library(data.table)
library(plyr)

runAnalysis = function(UCIFolder) {
  readUCIFolder(UCIFolder)
  combineDataColumns()
  renameColumnNames(test_combined, colNames)
  renameColumnNames(train_combined, colNames)
}

## creates datatables as global variables for test and train datasets
readUCIFolder = function(UCIFolder) {
  test_subject <<- read.table(paste(".", UCIFolder, "test/subject_test.txt", sep = "/"))
  test_measurements <<- read.table(paste(".", UCIFolder, "test/X_test.txt", sep = "/"))
  test_activity <<-read.table(paste(".", UCIFolder, "test/Y_test.txt", sep = "/"))
  train_subject <<- read.table(paste(".", UCIFolder, "train/subject_train.txt", sep = "/"))
  train_measurements <<- read.table(paste(".", UCIFolder, "train/X_train.txt", sep = "/"))
  train_activity <<- read.table(paste(".", UCIFolder, "train/Y_train.txt", sep = "/"))
  features <<- read.table(paste(".", UCIFolder, "features.txt", sep = "/"))
  colNames <<- c("subject",  "activity", as.character(features[,2]))
}

combineDataColumns = function() {
  test_combined <<- cbind(test_subject, test_activity, test_measurements)
  train_combined <<- cbind(train_subject, train_activity, train_measurements)
}

renameColumnNames = function(dataFrame, columnNames) {
  numCols = length(columnNames)
  for(i in 1:numCols) {
    names(dataFrame)[i] = columnNames[i]
  }
}