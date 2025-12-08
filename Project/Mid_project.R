
# import library ####
library(dplyr)
library(ggplot2)
library(caret)
library(reshape2)
library(Amelia)

# import Dataset ####
df <- read.csv("C:/Users/asus/OneDrive/Desktop/adult_income/adult.csv", stringsAsFactors = FALSE)
print(head(df))

print(str(df))
print(summary(df))

print(unique(df$workclass))
print(unique(df$education))
print(unique(df$occupation))
print(unique(df$relationship))
print(unique(df$race))
print(unique(df$gender))
print(unique(df$income))


#Drop Column

df <- df %>% select(-fnlwgt)
print(head(df))

#missing value ####
df[df == "?"] <- NA
colSums(is.na(df))


head(df)


df[!complete.cases(df), ]

missmap(df, main = "Missing Values Map", col = c("yellow", "steelblue"), legend = TRUE)


# Detect outliers in 'age' column ####
  
par(mar = c(5,4,4,2)) 

boxplot(df$age,
        main = "Boxplot for Age",
        col = "orange",
        cex.main = 1.5,
        cex.axis = 1.2)


#Convert numeric to  categorical ####

df$Age_group <- cut(df$age,
                    breaks = c(0, 25, 45, 65, 100),
                    labels = c("Young", "Adult", "Middle-aged", "Senior"))


df$Workload <- ifelse(df$hours.per.week > 40, "Full-time", "Part-time")
df


#Normalize a continuous variable ####
df$hours_norm <- (df$hours.per.week - min(df$hours.per.week, na.rm=TRUE)) /
  (max(df$hours.per.week, na.rm=TRUE) - min(df$hours.per.week, na.rm=TRUE))
head(df)

#Remove duplicate rows ####
df <- df %>% distinct()
sum(duplicated(df))

#Filtering the data ####
df_filtered <- df %>% filter(age > 40)
head(df_filtered)


#Handle Imbalanced Dataset####
table(df$income)

barplot(table(df$income),
        col = c("skyblue", "orange"),
        main = "Income Distribution",
        xlab = "Income Category",
        ylab = "Count")


#Train-Test Split ####
set.seed(123)
trainIndex <- createDataPartition(df$income, p=0.7, list=FALSE)

train <- df[trainIndex, ]
test  <- df[-trainIndex, ]

dim(train)
dim(test)

sizes <- c(nrow(train), nrow(test))
names(sizes) <- c("Train", "Test")

barplot(sizes,
        col = c("steelblue", "orange"),
        main = "Train vs Test Dataset Size",
        ylab = "Number of Rows",
        xlab = "Dataset")

#Descriptive Statistics ####
age_summary <- df %>% 
  group_by(income) %>% 
  summarise(
    mean_age = mean(age, na.rm = TRUE),
    sd_age = sd(age, na.rm = TRUE),
    median_age = median(age, na.rm = TRUE)
  )
age_summary

age_long <- melt(age_summary,
                 id.vars = "income",
                 variable.name = "Statistic",
                 value.name = "Value")


ggplot(age_long, aes(x = income, y = Value, fill = Statistic)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Age Summary by Income Group",
       x = "Income Category",
       y = "Value") +
  theme_minimal()

#visualize education to hours.per.week 
ggplot(df, aes(x = education, y = hours.per.week)) +
  geom_boxplot() +
  theme(axis.text.x = element_text(angle=90))


