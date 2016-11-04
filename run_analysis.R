#using reshape2
library(reshape2)

#setting up project folder to download file
gcprojfolder <- "gcproj"
if (!dir.exists(gcprojfolder)) 
  dir.create(gcprojfolder)

projDataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

zipFileName <- "UCIHARDataset.zip"
zipFilePath <- paste0("./",gcprojfolder,"/",zipFileName)

#dowload file from the URL provided
if (!file.exists(zipFilePath)) 
  download.file(projDataUrl,destfile = zipFilePath)

#unzio dataset downloaded from the url.
unzip (zipfile = zipFilePath,exdir = paste0("./",gcprojfolder))


uciDataFolder <- "UCI HAR Dataset"
uciDataFolderRootPath <- paste0("./",gcprojfolder,"/",uciDataFolder)

#load the activity information into a table
activityLabelFile = paste0(uciDataFolderRootPath,"/","activity_labels.txt")
activityLabels <- read.table(activityLabelFile)
names(activityLabels) <- c("activityid", "activityname")

#load the feature information into a table
featuresFile = paste0(uciDataFolderRootPath,"/","features.txt")
features <- read.table(featuresFile)
names(features) <- c("ID", "Name")

#load all the test subject, activity and measures dataset into the
#respective table
testSubjectFile = paste0(uciDataFolderRootPath,"/test/","subject_test.txt")
testSubjectIds <- read.table(testSubjectFile)
names(testSubjectIds) <- c("subjectid")

testActivityFile = paste0(uciDataFolderRootPath,"/test/","y_test.txt")
testActivityIds <- read.table(testActivityFile)
names(testActivityIds) <- c("activityid")

testMeasureFile = paste0(uciDataFolderRootPath,"/test/","X_test.txt")
testMeasures <- read.table(testMeasureFile)
names(testMeasures) <- features$Name

#Column bind the subject, activity and measures test data 
#into a single table
testActSubMeasure <- cbind(testSubjectIds,testActivityIds,testMeasures)

#load all the training subject, activity and measures dataset into the
#respective table
trainSubjectFile = paste0(uciDataFolderRootPath,"/train/","subject_train.txt")
trainSubjectIds <- read.table(trainSubjectFile)
names(trainSubjectIds) <- c("subjectid")

trainActivityFile = paste0(uciDataFolderRootPath,"/train/","y_train.txt")
trainActivityIds <- read.table(trainActivityFile)
names(trainActivityIds) <- c("activityid")

trainMeasureFile = paste0(uciDataFolderRootPath,"/train/","X_train.txt")
trainMeasures <- read.table(trainMeasureFile)
names(trainMeasures) <- features$Name

#Column bind the subject, activity and measures training data 
#into a single table
trainActSubMeasure <- cbind(trainSubjectIds,trainActivityIds,trainMeasures)

#Combine all the rows from the test and training data into a 
#single table
allActSubMeasure <- rbind(testActSubMeasure,trainActSubMeasure)

#grep for mean and standard deviation features from the combined data 
#and ignore the rest of the measures. 
requiredMeasureCols <- grep("(subjectid|activityid|-mean|-std)", names(allActSubMeasure),ignore.case = TRUE)
allFinalMeasure <- allActSubMeasure[,requiredMeasureCols]

#Clean the column names and update the table
cleanColNames <- gsub("-","",names(allFinalMeasure))
cleanColNames <- gsub("[-()]","",cleanColNames)
names(allFinalMeasure) <- cleanColNames

#Merge the resulting data table with Activity table by the activityid
#to include the activity name column
allFinalMeasure <- merge(allFinalMeasure,activityLabels,by.x = "activityid",by.y = "activityid",all = TRUE)

#Melt the datatable with SubjectId,activityId and activityname as the id column
allFinalMelt <- melt(allFinalMeasure,id=c("subjectid","activityid","activityname"))

#compute the average using the id columns accross all the mean and 
#standard deviation measures and dcast to the wide table format, 
#with all the features as columns
allFinal <- dcast(allFinalMelt, subjectid + activityid + activityname ~ variable, mean)

#Write the final clean data table out as a comma seperated csv file
tidyFile = paste0(uciDataFolderRootPath,"/","tidy_uic_har.csv")
write.table(allFinal, tidyFile, quote = FALSE, sep = ",", row.names = FALSE)
