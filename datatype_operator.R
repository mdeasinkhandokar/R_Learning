#Datatype ####

typeof(6)
typeof(3L)
typeof(TRUE)
typeof(T)
typeof("cat")
typeof(3i+3)


typeof(c(8,1,4))
typeof(c(5L,3L,6L))


mode(c(5L,3L,6L))



#value assign ####
x<-7
y<-9
z<-10


a<-c(23,2,5,6)
print(a)

age<-a

rm(a) #just delete environment


b <-1:100
b
b[33]




x1 <-c("apple", "nokia ", " samsung", "xiomi")
x1

#vivo check in x1
"vivo"%in%x1
"apple"%in%x1


 #Relational
x<-c(T,F)
y <-c(F,T)

x|y
x&y

#function
d<-c(1,2,3,NA)

sum(d)
mean(d)
summary(d)
which(is.na(x))
any(is.na(x))
any(c(T,T,T,T,F,F))#atleast one true
all(c(F,F,F,F))  #all are F






#Matrix ####

thisMatrix <-matrix(c(1,2,3,4,5,6), nrow=3, ncol=3)
thisMatrix
thisMatrix[2,2]
thisMatrix[2,]
thisMatrix[,1]
newmatrix <- cbind(thisMatrix,c(7,8,9,10,11,12))
newmatrix












