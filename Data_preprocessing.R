
# 1. CREATE A SAMPLE RAW DATASET
###############################################

set.seed(123)

raw_data <- data.frame(
  id = 1:20,
  age = c(25, 30, 22, NA, 28, 150, 32, 27, 26, NA, 29, 400, 31, 33, 34, 35, -5, 36, 37, 38),
  salary = c(30000, 32000, 28000, 35000, 400000, 29000, NA, 31000, 33000, 1000000, 34000, 36000, 37000, 30500, 31000, 5000000, 29500, 33000, 34500, 35500),
  gender = c("M","F","F","M","Unknown","F","M","NA","F","F","M","X","M","F","F","M","M","NA","F","F"),
  stringsAsFactors = FALSE
)

raw_data



# 2. DATA EXPLORATION ####

# View structure
str(raw_data)

# Summary statistics
summary(raw_data)

# Check column names
colnames(raw_data)

# Check number of missing values
colSums(is.na(raw_data))


#Check unique  values
lapply(raw_data, unique)

# Option 1: Replace missing age with mean
raw_data$age[is.na(raw_data$age)] <-mean(raw_data$age,na.rm=T)
raw_data



# Option 2: Replace missing salary with median
raw_data$salary[is.na(raw_data$salary)]<-median(raw_data$salary,na.rm=T)
raw_data








