library(dplyr)
library(reshape2)

# go to the folder where the raw data in unzipped
setwd("Desktop/project-assignment/UCI HAR Dataset")

# read X features for test set
Xtest <- read.table("test/X_test.txt", header=FALSE)
dim(Xtest) # 2946 x 561

# read X features for training set
Xtrain <- read.table("train/X_train.txt", header=FALSE)
dim(Xtrain) # 7352 x 561

# combine test and training data
X <- rbind(Xtest, Xtrain)
dim(X)

# read test subjects
subjectTest <- read.table("test/subject_test.txt")
dim(subjectTest)

# read train subjects
subjectTrain <- read.table("train/subject_train.txt")
dim(subjectTrain)

# combine test and train subjects
subject <- rbind(subjectTest, subjectTrain)
dim(subject)
colnames(subject) <- c("subject")

# read the test y values
yTest <- read.table("test/y_test.txt")
dim(yTest)

# read the train y values
yTrain <- read.table("train/y_train.txt")
dim(yTrain)

# combine test and train y values
y <- rbind(yTest, yTrain)
dim(y)

# read activity_labels
activityLabels <- read.table("activity_labels.txt")
yLabels <- left_join(y, activityLabels)
dim(yLabels)
colnames(yLabels) <- c("index","label")
activity <- yLabels$label

# read the features
features <- read.table("features.txt", header=FALSE)
dim(features)
colnames(features) <- c("index", "feature")
# get all the standard deviation and mean features: names having *-mean()* and *-std()* 
fF <- filter(f, grepl('-mean\\(\\)|-std\\(\\)', feature))
dim(fF)
# give clear names to the feature
fF$feature <- gsub("-", ".", fF$feature)
fF$feature <- gsub("\\(\\)", "", fF$feature)
fF$feature <- gsub("^t", "time.", fF$feature)
fF$feature <- gsub("^f", "frequency.", fF$feature)
fF$feature <- gsub("BodyBody", "Body", fF$feature)
fF

# Create a data frame for X with the selected features (mean and std)
Xdf <- tbl_df(X[fF$index])
dim(Xdf)
# Add X colnames for the selected features
colnames(Xdf) <- fF$feature

# create the tidy data frame
full <- tbl_df(cbind(Xdf, subject, activity))
str(full)
fullMelt <- melt(full, id=c("subject", "activity"), measure.vars = fF$feature)
dim(fullMelt)
str(fullMelt)
head(fullMelt)
tidy <- dcast(fullMelt, subject + activity ~ variable, value.var = "value", mean)
dim(tidy)
str(tidy)
summary(tidy)
