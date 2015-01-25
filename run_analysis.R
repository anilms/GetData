library(dplyr)
library(tidyr)

features<-read.table("UCI HAR Dataset/features.txt", header=F)
activity_labels<-read.table("UCI HAR Dataset/activity_labels.txt", header=F)

X_train<-read.table("UCI HAR Dataset/train/X_train.txt", header=F)
Y_train<-read.table("UCI HAR Dataset/train/y_train.txt", header=F)
subject_train<-read.table("UCI HAR Dataset/train/subject_train.txt", header=F)

X_test<-read.table("UCI HAR Dataset/test/X_test.txt", header=F)
Y_test<-read.table("UCI HAR Dataset/test/y_test.txt", header=F)
subject_test<-read.table("UCI HAR Dataset/test/subject_test.txt", header=F)

# Merge Data
X<-rbind(X_train, X_test)
Y<-rbind(Y_train, Y_test)
subject<-rbind(subject_train, subject_test)

features<-features[,2]
activity_labels<-activity_labels[,2]

# Extracts only the measurements on the mean and standard deviation for each measurement.
reqCols<-grepl('mean|std', features, ignore.case=T)
reqData<-X[,reqCols]

# Uses descriptive activity names to name the activities in the data set
colnames(Y)<-c("activity")
colnames(subject)<-c("Subject")
Y<-mutate(Y, activity=activity_labels[activity])

# Appropriately labels the data set with descriptive variable names. 
reqNames<-as.character(features[reqCols])
colnames(reqData)<-reqNames

# Merge into one data set
merged<-cbind(reqData, Y, subject)
merged<-group_by(merged, activity, Subject)

# Summarize over activity, Subject groups
# Resulting Data will have average of each activity for each Subject
# creates a second, independent tidy data set with the average of each variable for each activity and each subject.
s<-summarise_each(merged, funs(mean))
write.table(s, file="summary.txt", row.names=F)

