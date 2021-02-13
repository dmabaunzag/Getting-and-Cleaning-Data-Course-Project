library(dplyr)
library(data.table)
#lectura de las tablas: train
subject_train<-read.table(file="./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
X_train<-read.table(file="./UCI HAR Dataset/train/X_train.txt", header=FALSE)
Y_train<-read.table(file="./UCI HAR Dataset/train/y_train.txt", header=FALSE)
# test
subject_test<-read.table(file="./UCI HAR Dataset/test/subject_test.txt", header = FALSE)
X_test<-read.table(file="./UCI HAR Dataset/test/X_test.txt", header=FALSE)
Y_test<-read.table(file="./UCI HAR Dataset/test/y_test.txt", header=FALSE)
#features
features<-read.table(file="./UCI HAR Dataset/features.txt", header=FALSE)
#1. Combinar los vectores subject, features y Activity
subject<-rbind(subject_train,subject_test)
set<-rbind(X_train,X_test)
labels<-rbind(Y_train, Y_test)
#Nombrar variables
names(subject)<-c("Subject")
names(labels)<-c("Activity")
names(set)<-features$V2
dataset<-cbind(set, subject,labels)
#2. Extraer variables Subject, Activity y variables que contengan mean y std
subsetmeanstd<-select(dataset, contains("mean()") | contains("std()"),Subject, Activity)
#3. Usar nombres descriptivos en Activity
activitylabels<-read.table(file="./UCI HAR Dataset/activity_labels.txt", header=FALSE)
subsetmeanstd<-merge(subsetmeanstd, activitylabels, by.x="Activity", by.y="V1")
subsetmeanstd<-select(subsetmeanstd, !"Activity")
subsetmeanstd<-rename(subsetmeanstd, Activity=V2)
#4. Modificar adecuadamente los nombres de las variables:
# f: frecuency; t: time; Acc: Accelerometer; Gyro: Gyroscope; Mag: Magnitude; BodyBody: Body
names(subsetmeanstd)<-gsub("^f", "frecuency",names(subsetmeanstd))
names(subsetmeanstd)<-gsub("^t", "time",names(subsetmeanstd))
names(subsetmeanstd)<-gsub("Acc", "Accelerometer",names(subsetmeanstd))
names(subsetmeanstd)<-gsub("Gyro", "Gyroscope",names(subsetmeanstd))
names(subsetmeanstd)<-gsub("Mag", "Magnitude",names(subsetmeanstd))
names(subsetmeanstd)<-gsub("BodyBody", "Body",names(subsetmeanstd))
#5.nuevo dataset con el promedio de cada actividad e individuos (Activity-Subject)
datasetAverageActivitySubject<-subsetmeanstd%>% 
    group_by(Subject, Activity)%>%
    summarize_all(mean)
write.table(datasetAverageActivitySubject, file = "datasetAveragebyactivity-subject.txt", row.names = FALSE)

    
