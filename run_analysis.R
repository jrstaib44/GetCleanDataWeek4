
install.packages("dplyr")
install.packages("data.table")

library(dplyr)
library(data.table)


# read in input, feature, and label data
features= read.table("./week4data/UCI HAR Dataset/features.txt");
activityLabels = read.table("./week4data/UCI HAR Dataset/activity_labels.txt");
train= read.table("./week4data/UCI HAR Dataset/train/X_train.txt"); test<- read.table("./week4data/UCI HAR Dataset/test/X_test.txt")
trainLabel= read.table("./week4data/UCI HAR Dataset/train/y_train.txt"); testLabel<- read.table("./week4data/UCI HAR Dataset/test/y_test.txt")
trainSubject= read.table("./week4data/UCI HAR Dataset/train/subject_train.txt"); testSubject<- read.table("./week4data/UCI HAR Dataset/test/subject_test.txt")

# identify which observations are mean and standard deviation

extractfeatures <- grep("-(mean|std)\\(\\)",features[,2])

# extract the observations that are mean and standard deviation

train <- train[,extractfeatures]
test <- test[,extractfeatures]
features <- features[extractfeatures,]

# merge the activity names to the activity ids in test and train data

trainLabel <- merge(trainLabel,activityLabels,by.x="V1",by.y="V1",all=TRUE)
testLabel <- merge(testLabel,activityLabels,by.x="V1",by.y="V1",all=TRUE)


# add meaningful variable names
colnames(trainLabel) <- c("activityId","activityName")
colnames(testLabel) <- c("activityId","activityName")
colnames(trainSubject) <- c("subjectId")
colnames(testSubject) <- c("subjectId")
colnames(test) <- features$V2
colnames(train) <- features$V2

# combine test and train columns to two data sets

trainAll <- cbind(trainLabel,trainSubject,train)
testAll <- cbind(testLabel,testSubject,test)

# combine the test and train rows to a single data set

mergedData <- rbind(testAll,trainAll)

# create tidy data set
dataMelt <- melt(mergedData,id=c("activityId","activityName","subjectId"),measure.vars=features$V2)

# group and summarise to get final data set named avgDataMelt with means of each variable for each activity and subject

grpDataMelt <- group_by(dataMelt,activityId,activityName,subjectId)
avgDataMelt <- summarise(grpDataMelt,meanvalue = mean(value,na.rm=TRUE))

# write output data set
write.table(avgDataMelt,file ="Week4AssignmentOutput.txt")