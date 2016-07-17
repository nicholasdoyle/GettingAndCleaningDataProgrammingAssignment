#Step 1
features <- read.table("features.txt", header = FALSE, col.names=c("Id", "Feature"))
activity <- read.table("activity_labels.txt", header = FALSE, col.names=c("Id", "Activity"))

train_features <- read.table("train/X_train.txt", header = FALSE)
train_labels <- read.table("train/y_train.txt", header = FALSE, col.names=c("ActivityId"))
train_subject <- read.table("train/subject_train.txt", header = FALSE, col.names = c("SubjectId"))

train_data <- cbind(train_features, train_labels, train_subject)

test_features <- read.table("test/X_test.txt", header = FALSE)
test_labels <- read.table("test/y_test.txt", header = FALSE, col.names=c("ActivityId"))
test_subject <- read.table("test/subject_test.txt", header = FALSE, col.names= c("SubjectId"))

test_data <- cbind(test_features, test_labels, test_subject)

data <- rbind(train_data, test_data)

# Step 2
mean_std_features <- features[grep("(mean\\(\\)|std\\(\\))", features$Feature),]
column_list <- c(which(colnames(data) %in% c("SubjectId", "ActivityId")), mean_std_features$Id)

data_filtered <- data[, column_list]

# Step 3
data_filtered <- merge(activity, data_filtered, by.x="Id", by.y="ActivityId")
data_filtered <- data_filtered[, -which(colnames(data_filtered) == "Id")]

# Step 4
feature_rename <- read.csv("../FeatureRename.csv", header = TRUE)
features <- merge(features, feature_rename, by.x="Feature", by.y="Feature", all = TRUE)
rename <- names(data_filtered)[grep("^V", names(data_filtered))]
for(column_name in rename){
  id <- sub("V", "", column_name)
  names(data_filtered)[names(data_filtered) == column_name] = as.character(features[features$Id == as.integer(id), "NewName"])
}

# Step 5
library(reshape2)
grouping <- c("SubjectId", "Activity")
measures = names(data_filtered)[-which(names(data_filtered) %in% grouping)]
data_melt <- melt(data_filtered, id=grouping, measure.vars=measures)
data_result <- dcast(data_melt, SubjectId + Activity ~ variable, mean)

write.table(data_result, "../Course3AssignmentData.txt", row.names = FALSE)