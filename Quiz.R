# create different type of vector
#Vector #####

# Numeric Vector
num_vec <- c(1,2,3,4,5)
print(num_vec)


# Character Vector
char_vec <- c("Apple", "Cherry", "banana")
char_vec

# Logical Vector
log_vec <- c(TRUE, FALSE, TRUE, TRUE)
log_vec



# Vector Operation 
# Arithmetic Operations
vec1 <-c(1,3,5)
vec2 <-c(2,4,6)
sum_vec<- vec1+vec2
print(sum_vec)
pro_vec <- vec1* vec2
print(pro_vec)


# Accessing Elements in a Vector
# Create a vector
num_vec<- c(10,20,30,40);
print(num_vec[1])

# Access multiple elements
print(num_vec[c(2,3,4)])

# Access elements using a condition
print(num_vec[num_vec>25])


# Modifying a Vector
# Modify an element
num_vec[2]<-100
print(num_vec)

# Append new elements
num_vec<-c(num_vec,60,70)
print(num_vec)

num_vec<-c(60,70,num_vec)
print(num_vec)

# Vector Functions
vec<-c(5,10,15,20,25)
print(length(vec))


# Sum of all elements
print(sum(vec))

# Mean (average) of elements
print(mean(vec))

# Sorting a vector
sorted_vec<- sort(vec, decreasing=TRUE)
print(sorted_vec)


# Sequence and Repetition in Vectors
# Sequence from 1 to 10
seq_vec <- seq(1,10,by=2)
print(seq_vec)


# Repeat elements
rep_vec<-rep(c(1,2,3), times=4)
print(rep_vec)

#Matrices ####
#Creating a 3x3 matrix (filled column-wise by default)
mat <-matrix(1:10, nrow=2, ncol=5)
mat

mat <-matrix(1:12, nrow=2, byrow=TRUE)
mat


#Naming Rows and columns
#Creating matrix
mat<-matrix(1:9 ,nrow=3, ncol=3)

#Assinging row and column names
rownames(mat)<-c("A","B","c")
colnames(mat)<-c("a","b","c")
print(mat)


# Accessing Elements in a Matrix
# Create a 3x3 matrix
mat<-matrix(1:9 ,nrow=3)
mat[2,3]

# Access entire row 1
mat[1,]
mat[3,]

# Access entire column 2
print(mat[,2])

# Matrix Arithmetic
mat1 <-matrix(1:4 , nrow=2)
mat2 <- matrix(5:8 ,nrow=2)
#matrix addition
Add<-mat1+mat2
Add


Sub<-mat1-mat2
Sub

# Matrix multiplication (element-wise)
prod_mat <-mat1*mat2
print(prod_mat)

## Matrix multiplication (dot product)
dot_prod_mat <-mat1%*%mat2 #%*% for matrix multiplication
dot_prod_mat


#Transpose and Inverse of a Matrix
# Transpose of a matrix
t_mat <-t(mat)
print(t_mat)


# Inverse of a matrix (for square matrices)
square_mat <-matrix(c(2,3,1,4), nrow=2)
inv_mat <-solve(square_mat)
print(inv_mat)

#Array ####

# Creating an array with dimensions (3x3x2)

arr <-array(1:18, dim=c(3,3,3))
arr
arr[2,2,2]

# Access entire 2nd row from Layer 1
arr[2,,1]
arr[1,,1]

# Access entire 3rd column from Layer 2
arr[,3,2]


#Performing Operations on Arrays
# Creating two 3x3x2 arrays
arr1<- array(1:18,dim=c(3,3,2))
arr2<-array(1:18 ,dim=c(3,3,2))

# Element-wise addition
sum<- arr1+arr2
sum

# Element-wise multiplication
prod_arr<- arr1*arr2
prod_arr


# Applying Functions to Arrays
# Creating an array

print(sum(arr))

# Mean of all elements
print(mean(arr))


# Apply function to each row (margin = 1)
apply(arr,MARGIN = 1, FUN=sum)  #margin 1=rows ,columns=2

# Apply function to each column (margin = 2)
apply(arr, MARGIN = 2, FUN=mean)



#Data Frames ####
# Creating a simple data frame
df <-data.frame(
  ID=c(101,102,103,104,105),
  Name=c("Easin","Sanim", "Safin","Alom","Fuad"),
  Age=c(23,24,25,21,22),
  score=c(89,98,76,77,78),
  passed=c(T,T,T,T,T)
  
)

df

# Accessing Elements in a Data Frame
# Access a single column
df$Name


# Access a specific row (row 2)
df[2,]

# Access a specific element (Row 3, Column "Score")
df[3,"score"]

# Access multiple columns
df[,c("passed","Name")]


# Access multiple rows
df[1:3,]

# Add a new column 'Grade'
df$Grade<-c("A","B","A","C","A")
df

# Filter students who passed
passed_students <- df[df$Passed==T,]
passed_students


# Filter students with Score > 85
high_scorers <-df[df$score >80]
high_scorers


# Sorting by Age (Ascending)
df_score<-df[order(df$Age),]
df_score


# Sorting by Score (Descending)
df_score<-df[order(-df$score),]
df_score

# Changing a value (Changing Alom's Score to 80)
df$score[df$Name=="Alom"]<-80
df


# Renaming column names
colnames(df)<-c("Student_ID", "Student_Name","Student_Age","Result","Course_pass","Course_Grade")
df

# Remove a column
df$Grade <-NULL
print(df)


# Remove a row (removing row 2)
df<-df[-2,]
df

# Get summary statistics
summary(df)


# Get structure of the data frame
str(df)


#List ####
#creating a list witd different data type

my_list<- list(
  Name="Easin",
  Age=25,
  Score=c(89,88,78),
  Passed=T
  
)
my_list

# Access by index
my_list[[2]]

# Access specific elements within a list item
my_list$Score[2]

# Change an element
my_list$Age<-29
my_list


# Add a new element
my_list$Country <-"USA"
my_list

# Remove an element
my_list$Passed<-NULL
my_list

# Creating a list with a matrix and a data frame
my_complex_list<-list(
  Numbers=c(1,2,3,4,5),
  
  Matrix=matrix(1:9, nrow=3),
  DatFrame=data.frame(
    ID=c(101,102),
    Name=c("Easin", "Khandokar")
  )
  
  
  
)
my_complex_list

# Access elements inside the matrix
print(my_complex_list$Matrix[1,3])


list1 <- list(A = 1:5, B = "Hello")
list2 <- list(C = c(TRUE, FALSE), D = matrix(1:4, nrow = 2))

# Merge lists
merged_list <-c(list1,list2)
merged_list

# Convert list to data frame
list_to_df <- data.frame(
  Name = c("Alice", "Bob"),
  Age = c(25, 27),
  Score = c(89, 92)
)

print(list_to_df)
