#Data Structure ####

#Vector ####
x1 <- c(1,2,3,54,65,78,55,90)
is.vector(x1)
is.data.frame(x1)

#Random number generator
set.seed(123)
x2 <- sample(1:100, 10, replace=T)
table(sample(1:100, 10, replace=T))
x2

summary(x2)


sample(x=c("apple","mango","banana","Lichi"),size=2, prob=c(0.5,0.4,0.1,0.2),replace=T)


income=c(10000,30000,45000,790000)
household=c(10,5,2,4)
sample(income,size=2)
household/sum(household)

x3 <-runif(10)
x3



#Sequence Generator  ####
x4 <- seq(from=1, to=11,by =2)
x4

x5<-seq(from =1, to =11,length.out=10)
x5

x6 <-10:1
x6






#Selection ####
x1>19
 x1[3]
length(x1)
x1[c(FALSE, FALSE, FALSE,  TRUE , TRUE , TRUE,  TRUE,  TRUE)]
x1[c(3,4,5,7)]
x1[x1>19]
x1[x1>14 &x1<200]
x1[which(x1>14 & x1 <200)]


#replace ####
replace(x1,which(x1>19),12)
x1[x1==0]<-15
x1
mean(x1,na.rm=T)




