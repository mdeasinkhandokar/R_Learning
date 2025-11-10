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



