## Week 4 assignment
library(dplyr)
## 1(a). Read the test and train files into R, binding each set's "x", "y", and "subject" files.

xtest<-read.table("./UCI HAR Dataset/test/X_test.txt",header=FALSE)
ytest<-read.table("./UCI HAR Dataset/test/y_test.txt",header=FALSE)
subjecttest<-read.table("./UCI HAR Dataset/test/subject_test.txt",header=FALSE)
testdata<-cbind(xtest,ytest,subjecttest)

xtrain<-read.table("./UCI HAR Dataset/train/X_train.txt",header=FALSE)
ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt",header=FALSE)
subjecttrain<-read.table("./UCI HAR Dataset/train/subject_train.txt",header=FALSE)
traindata<-cbind(xtrain,ytrain,subjecttrain)

## 1(b). Bind testdata and traindata sets into one data frame.

data<-rbind(testdata,traindata)

## 4. Assign column names from features.txt 

datacols<-read.table("./data/UCI HAR Dataset/features.txt",header=FALSE)
datacols<-datacols[,2]
colnames(data)<-datacols
colnames(data)[ncol(data)-1]<-"activity"
colnames(data)[ncol(data)]<-"subject"

## 2. Extracts only the mean and standard deviation of each measurement. 
tidydata<-data[,grep("mean\\()|std\\()|activity|subject",names(data))]

## 3. Descriptive activity names to name the activities in the data set.
activities<-read.table("./data/UCI HAR Dataset/activity_labels.txt")
activities<-activities[,2]
tidydata$activity<-factor(tidydata$activity,labels=activities)


## 5. An independent, tidy data set with the average of each variable for each activity and each subject.
tidydata2<-tidydata
tidydata2<-tidydata2 %>% group_by(subject, activity) %>% summarize_all(funs(mean))
write.table(tidydata2,file="tidydata2.txt",row.names=FALSE)
